# APEXSCII

An isometric, PETSCII-style character set for the Commodore 64 (8×8 hi-res, 2:1 slopes).

- `apexscii.html` — editor: paint an 8×8 iso map, edit glyphs, export. Serve the folder (`python -m http.server`) and open it.
- `art.html` — art tool: draw characters and multi-character tiles (see below).
- `apexscii-core.js` — charset generator, iso rasteriser, compositor, PRG/asm exporters (browser + Node).
- `build.js` — `node build.js` writes the default files to `out/`.

## Layout (screen codes)

| Range     | Contents |
|-----------|----------|
| `$00-$3F` | Text in PETSCII screen-code order (`@ A–Z [ £ ] ↑ ←`, space, punctuation, `0–9`) — redrawn, not ROM copies |
| `$40-$72` | **Smooth** shade set: top = solid, left = 50% checker, right = 25% dots |
| `$73-$A5` | **Brick** shade set: paved top, brick left, dithered brick right |
| `$A6-$AD` | Line art: 4 iso slope lines, 4 cell edges |
| `$AE-$B5` | Block elements: halves and quadrants |
| `$B6-$FF` | Free — the map compositor puts object/junction glyphs here |

Each shade set holds 51 glyphs: 3 solid faces plus 4 slope boundaries (`/` upper, `/` lower, `\` upper, `\` lower) × 12 ordered face pairs (empty/top/left/right). A 32×16 diamond is 4×2 chars and a full cube is 4×4 chars, so any heightmap made of cubes on the grid lands on exact glyph matches.

## Art tool

`art.html` has two tabs:

- **Tiles**: draw blocks of characters (1×1 up to 8×8 chars), such as 4×2 floor diamonds, 4×4 cubes and 2×3 figures. You draw pixels across the whole tile, and each changed cell is converted back to characters:
  - if an identical glyph already exists, the cell reuses it
  - if the cell's glyph is used only by that cell, it's edited directly
  - otherwise the new glyph goes into a blank slot from `$B6` up, so other tiles that share the glyph don't change

  Turn off *protect shared glyphs* to edit the glyph itself everywhere it's used. *Stamp char*, *Pick* and *Cell colour* work on whole cells, like a PETSCII editor.
- **Characters**: edit any of the 256 glyphs directly, in place.

Tools: pencil, line (with *iso snap* to horizontal, vertical or clean 2:1 slopes), rectangle, 2:1 diamond (it draws exactly the staircase the built-in floor glyphs use), and flood fill. Also flip, shift, invert, copy/paste and undo/redo (Ctrl+Z / Ctrl+Y). Left button draws, right button erases. In multicolor, the canvas paints 4×8 fat pixels with the four pens. The preview shows the tile 3×3 in an iso lattice, so you can check the seams.

The character set is stored under the same browser key as the map editor's, and each page picks up the other's changes live. Exports: charset `.bin`/`.prg`/`.asm`, tiles `.asm` (width, height, screen codes, colour RAM values), a `.png` tile sheet, and a project `.json` you can reopen later.

## Multicolor mode

`out/apexscii-mc*` and the editor's **Multicolor 4×8** button. The shade sets and free slots hold 4×8 fat-pixel glyphs, so the 2:1 slope becomes one fat pixel per row. Bit pairs map to:

| Bits | Colour source | Used for |
|------|---------------|----------|
| `00` | `$D021` background | empty |
| `01` | `$D022` MC1 (shared) | left faces, brick mortar, paving |
| `10` | `$D023` MC2 (shared) | right faces |
| `11` | colour RAM 0–7 (per cell) | top faces, so each material is just a colour |

Text, lines and blocks stay hi-res, because a cell whose colour RAM value is under 8 displays in hi-res even in multicolor mode. Only colours 0–7 can go in the per-cell slot. Setup: `$D016 |= $10`, then set `$D022`/`$D023`, and write colour RAM values of 8–15 for multicolor cells.

## PETSCII status bar (raster split)

APEXSCII replaces the PETSCII graphics and reverse characters, so the bottom 1–3 rows can switch back to the C64's own ROM font. That gives full PETSCII there, including reverse video. A raster interrupt changes `$D018` twice per frame:

```
        ; status bar starts on text row R  ->  first raster line L = 51 + 8*R
split:  lda #L          ; IRQ fires at line L-2
        ldx #$14        ; $14 = screen $0400, ROM uppercase/graphics font
wait:   cmp $d012
        bne wait        ; spin to the start of line L, before the VIC fetches glyphs
        stx $d018
        ; ...point the IRQ at line 0 -> top, ack $D019, jmp $ea81
top:    lda #$1e        ; $1E = screen $0400, APEXSCII at $3800
        sta $d018
        ; ...point the IRQ at line L-2 -> split, ack $D019, jmp $ea31
```

The runnable `.prg` exports already contain this code; CIA timer IRQs are turned off so only the raster IRQ runs. Status cells use colour RAM values 0–7, so they stay hi-res in multicolor mode without touching `$D016`. In the editor, the status bar is the caption box (one line per row, `{text}` for reverse). Its preview uses APEXSCII's own text glyphs unless you load the `chargen` ROM file from your VICE install.

## Using it on the C64

Copy the 2 KB charset to a 2 KB boundary in the VIC bank, e.g. `$3800`, then `LDA #$1E : STA $D018` (screen at `$0400`, chars at `$3800`). `apexscii-charset.prg` already loads to `$3800`.

`apexscii-demo.prg` / the editor's "Map → runnable .prg" is self-contained: `LOAD"*",8,1` then `RUN`.
