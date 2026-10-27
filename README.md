# APEXSCII

PETSCII-style character sets for the Commodore 64, one per perspective: isometric 2:1, military 45°, top-down 3/4, side oblique and first-person dungeon. Each comes in hi-res (8×8) and multicolor (4×8).

This repo is just the character sets. The editors for drawing maps, characters and tiles with them live in **apex-art**, which includes this repo as a git submodule.

- `apexscii.js` — the generator for every set, plus a C64 screen decoder, runnable `.prg` / `.asm` writers and specimen sheets. Works in the browser (`window.APEXSCII`) and in Node (`require`).
- `build.js` — `node build.js` writes every set to `out/`.
- `out/` — the built sets (see *Files*).
- `test/vice-check.js` — runs every specimen sheet in VICE and checks it pixel-for-pixel (see *Testing*).

## Files

For each perspective and mode, `out/` has:

| File | What it is |
|------|------------|
| `apexscii<tag>.bin` | The 2 KB character set, raw |
| `apexscii<tag>-charset.prg` | The same, with a load address of `$3800` |
| `apexscii<tag>.asm` | `.byte` source with every glyph named |
| `apexscii<tag>-specimen.prg` | A runnable sheet showing all 256 glyphs (`LOAD"*",8,1` then `RUN`) |

`<tag>` names the perspective and mode, e.g. `-side-mc` or `-dungeon`. The isometric hi-res set has no tag (`apexscii.bin`), and isometric multicolor is `-mc`.

## Perspectives

Every set keeps PETSCII text at screen codes `$00-$3F`, then two shade sets (smooth and brick), then line art and block elements. Everything after that is free for your own glyphs.

| View | Geometry | Shade-set glyphs |
|------|----------|------------------|
| Isometric 2:1 | 32×16 diamond (4×2 chars), cube 4×4 | 3 faces + 4 slopes × 12 pairs = 51 per set |
| Military 45° | 16×16 diamond (2×2), 8px of wall per height unit | 3 faces + 2 slopes × 12 pairs = 27 |
| Top-down 3/4 | 16×16 top (2×2), 8px front face per height unit; no slopes | 16 top-face outline variants + 4 front-face variants = 20 |
| Side oblique | 16×16 front, top and side recede up-right at 45° | 3 faces + 1 slope × 12 pairs = 15 |
| First-person dungeon | 160×128 view, wall boxes 80/56/40/32 wide, so every edge is 45° on char corners | 5 faces (ceiling, floor, front wall, side wall, door) + 2 slopes × 12 pairs = 29 |

The 45° slopes go corner to corner across a cell; in multicolor they step two rows per fat pixel. Each specimen sheet lists its set's exact regions at the bottom, and `buildDefault(mode, persp)` returns them as `regions`.

### Isometric layout (screen codes)

| Range     | Contents |
|-----------|----------|
| `$00-$3F` | Text in PETSCII screen-code order (`@ A–Z [ £ ] ↑ ←`, space, punctuation, `0–9`) — redrawn, not ROM copies |
| `$40-$72` | **Smooth** shade set: top = solid, left = 50% checker, right = 25% dots |
| `$73-$A5` | **Brick** shade set: paved top, brick left, dithered brick right |
| `$A6-$AD` | Line art: 4 iso slope lines, 4 cell edges |
| `$AE-$B5` | Block elements: halves and quadrants |
| `$B6-$FF` | Free |

Each isometric shade set holds 51 glyphs: 3 solid faces plus 4 slope boundaries (`/` upper, `/` lower, `\` upper, `\` lower) × 12 ordered face pairs (empty/top/left/right). A 32×16 diamond is 4×2 chars and a full cube is 4×4 chars, so a height map made of cubes on the grid lands on exact glyph matches.

## Themes

A theme repaints the two shade sets of every perspective with its own textures. Glyph roles and screen codes stay exactly the same in every theme, so a map made for one theme works in all of them. On the C64, switching theme is just switching to a different 2 KB character set; the screen data doesn't change.

| Theme | Set 1 | Set 2 |
|-------|-------|-------|
| **Classic** | `smooth`: solid top, checker and dotted sides | `brick`: paving and brick |
| **Crypt** | `crypt-stone`: flagstones, rough blocks, cobwebs, iron-banded doors | `crypt-moss`: mossy, dripping stone |
| **Forest** | `forest-grass`: grass tufts over pebbly dirt, leaf canopy | `forest-wood`: planks and bark |
| **Town** | `town-cobble`: cobbles, half-timbered plaster, ceiling beams | `town-roof`: roof shingles over brick |

`buildDefault(mode, persp, theme)` takes the theme, and `THEMES` lists them. Classic files are in `out/` as before; each other theme gets the same files in `out/themes/<theme>/`. A texture is defined as 8×8 pixel art (or 4×8 fat pixels for multicolor) that repeats every 8 pixels, so adding a theme is mostly drawing a few small tiles; see `defineSet` in `apexscii.js`.

## Multicolor

The shade sets and free slots hold 4×8 fat-pixel glyphs. Bit pairs map to:

| Bits | Colour source | Used for |
|------|---------------|----------|
| `00` | `$D021` background | empty |
| `01` | `$D022` MC1 (shared) | left faces, brick mortar, paving |
| `10` | `$D023` MC2 (shared) | right faces |
| `11` | colour RAM 0–7 (per cell) | top faces, so each material is just a colour |

Text, lines and blocks stay hi-res, because a cell whose colour RAM value is under 8 displays in hi-res even in multicolor mode. Only colours 0–7 can go in the per-cell slot. Setup: `$D016 |= $10`, then set `$D022`/`$D023`, and write colour RAM values of 8–15 for multicolor cells.

## Using it on the C64

Copy the 2 KB set to a 2 KB boundary in the VIC bank, e.g. `$3800`, then `LDA #$1E : STA $D018` (screen at `$0400`, chars at `$3800`). The `-charset.prg` files already load to `$3800`.

### PETSCII rows with the ROM font (raster split)

APEXSCII replaces the PETSCII graphics and reverse characters, so for a status bar you can switch the bottom rows back to the C64's own ROM font, which gives full PETSCII there, including reverse video. A raster interrupt changes `$D018` twice per frame:

```
        ; ROM rows start on text row R  ->  first raster line L = 51 + 8*R
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

`screenPrg` in `apexscii.js` writes a runnable program with this code (pass `romRows`); every specimen sheet uses it for its bottom row. CIA timer IRQs are turned off so only the raster IRQ runs. Keep ROM rows at colour RAM values 0–7 so they stay hi-res in multicolor mode.

## Testing

`test/vice-check.js` runs each specimen `.prg` from `out/` and `out/themes/` in [VICE](https://vice-emu.sourceforge.io/), saves a screenshot, and compares all 64,000 display pixels with `apexscii.js`'s own render of the same screen. The status row is predicted with VICE's copy of the C64 ROM font. VICE uses its own palette, so each expected colour must correspond to exactly one VICE colour; a wrong character, a wrong colour or a misplaced raster split shows up as differing pixels, with the first one reported by cell. It needs Node and a VICE install that has `bin/x64sc` and `C64/chargen-901225-01.bin`.

```bash
node build.js
node test/vice-check.js "C:\path\to\GTK3VICE-3.10-win64"
```

Options: `--ntsc` runs on an NTSC machine, and `--cycles 12000000,15000017` takes a screenshot at each listed cycle count, so you can check that the raster split is stable across frames. The script prints one line per screen and ends with PASS or FAIL; it exits with 1 on any failure. Screenshots go to a temporary folder that is deleted afterwards.
