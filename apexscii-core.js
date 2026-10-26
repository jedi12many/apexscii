/*
 * APEXSCII core — an isometric, PETSCII-derived character set for the C64.
 *
 * Layout (screen codes):
 *   $00-$3F  text: @ A-Z [ £ ] ↑ ←  space ! " # ... 0-9 ... ?   (PETSCII order)
 *   $40-$72  "smooth" iso shade set   (51 glyphs)
 *   $73-$A5  "brick"  iso shade set   (51 glyphs)
 *   $A6-$AD  iso line art             (8 glyphs)
 *   $AE-$B5  block elements           (8 glyphs)
 *   $B6-$FF  free — used by the map compositor for objects / odd junctions
 *
 * Each shade set = 3 solid faces (T top, L left, R right) + 4 slope boundaries
 * x 12 ordered face pairs. Slopes are true 2:1 isometric: a 32x16 px diamond
 * is exactly 4x2 chars, a full cube 4x4 chars.
 *
 * Works in the browser (window.APEX) and in Node (require).
 */
(function (root, factory) {
  if (typeof module === 'object' && module.exports) module.exports = factory();
  else root.APEX = factory();
})(typeof self !== 'undefined' ? self : this, function () {
  'use strict';

  // ---------------------------------------------------------------- text font
  const TEXT_NAMES = '@ABCDEFGHIJKLMNOPQRSTUVWXYZ[£]↑← !"#$%&\'()*+,-./0123456789:;<=>?';
  const FONT_SRC = [
    '..####.. .##..##. .##.###. .##.###. .##..... .##...#. ..####..', // @
    '...##... ..####.. .##..##. .######. .##..##. .##..##. .##..##.', // A
    '.#####.. .##..##. .##..##. .#####.. .##..##. .##..##. .#####..',
    '..####.. .##..##. .##..... .##..... .##..... .##..##. ..####..',
    '.####... .##.##.. .##..##. .##..##. .##..##. .##.##.. .####...',
    '.######. .##..... .##..... .####... .##..... .##..... .######.',
    '.######. .##..... .##..... .####... .##..... .##..... .##.....',
    '..####.. .##..##. .##..... .##.###. .##..##. .##..##. ..####..',
    '.##..##. .##..##. .##..##. .######. .##..##. .##..##. .##..##.',
    '..####.. ...##... ...##... ...##... ...##... ...##... ..####..',
    '...####. ....##.. ....##.. ....##.. ....##.. .##.##.. ..###...',
    '.##..##. .##.##.. .####... .###.... .####... .##.##.. .##..##.',
    '.##..... .##..... .##..... .##..... .##..... .##..... .######.',
    '.##...## .###.### .####### .##.#.## .##...## .##...## .##...##',
    '.##..##. .###.##. .######. .######. .##.###. .##..##. .##..##.',
    '..####.. .##..##. .##..##. .##..##. .##..##. .##..##. ..####..',
    '.#####.. .##..##. .##..##. .#####.. .##..... .##..... .##.....',
    '..####.. .##..##. .##..##. .##..##. .##..##. ..####.. ....###.',
    '.#####.. .##..##. .##..##. .#####.. .####... .##.##.. .##..##.',
    '..####.. .##..##. .##..... ..####.. .....##. .##..##. ..####..',
    '.######. ...##... ...##... ...##... ...##... ...##... ...##...',
    '.##..##. .##..##. .##..##. .##..##. .##..##. .##..##. ..####..',
    '.##..##. .##..##. .##..##. .##..##. .##..##. ..####.. ...##...',
    '.##...## .##...## .##...## .##.#.## .####### .###.### .##...##',
    '.##..##. .##..##. ..####.. ...##... ..####.. .##..##. .##..##.',
    '.##..##. .##..##. .##..##. ..####.. ...##... ...##... ...##...',
    '.######. .....##. ....##.. ...##... ..##.... .##..... .######.', // Z
    '..####.. ..##.... ..##.... ..##.... ..##.... ..##.... ..####..', // [
    '....##.. ...##.#. ..##.... .#####.. ..##.... .##...#. ######..', // £
    '..####.. ....##.. ....##.. ....##.. ....##.. ....##.. ..####..', // ]
    '...##... ..####.. .######. ...##... ...##... ...##... ...##...', // ↑
    '........ ..#..... .##..... ######## .##..... ..#..... ........', // ←
    '........',                                                        // space
    '...##... ...##... ...##... ...##... ........ ........ ...##...', // !
    '.##..##. .##..##. .##..##.',                                      // "
    '.##..##. .##..##. ######## .##..##. ######## .##..##. .##..##.', // #
    '...##... ..#####. .##..... ..####.. .....##. .#####.. ...##...', // $
    '.##...#. .##..##. ....##.. ...##... ..##.... .##..##. .#...##.', // %
    '..####.. .##..##. ..####.. ..###... .##..### .##..##. ..#####.', // &
    '.....##. ....##.. ...##...',                                      // '
    '....##.. ...##... ..##.... ..##.... ..##.... ...##... ....##..', // (
    '..##.... ...##... ....##.. ....##.. ....##.. ...##... ..##....', // )
    '........ .##..##. ..####.. ######## ..####.. .##..##. ........', // *
    '........ ...##... ...##... .######. ...##... ...##... ........', // +
    '........ ........ ........ ........ ........ ...##... ...##... ..##....', // ,
    '........ ........ ........ .######.',                             // -
    '........ ........ ........ ........ ........ ...##... ...##...', // .
    '........ ......## .....##. ....##.. ...##... ..##.... .##.....', // /
    '..####.. .##..##. .##.###. .###.##. .##..##. .##..##. ..####..', // 0
    '...##... ..###... ...##... ...##... ...##... ...##... .######.',
    '..####.. .##..##. .....##. ....##.. ..##.... .##..... .######.',
    '..####.. .##..##. .....##. ...###.. .....##. .##..##. ..####..',
    '.....##. ....###. ...####. .##..##. .####### .....##. .....##.',
    '.######. .##..... .#####.. .....##. .....##. .##..##. ..####..',
    '..####.. .##..##. .##..... .#####.. .##..##. .##..##. ..####..',
    '.######. .##..##. ....##.. ...##... ...##... ...##... ...##...',
    '..####.. .##..##. .##..##. ..####.. .##..##. .##..##. ..####..',
    '..####.. .##..##. .##..##. ..#####. .....##. .##..##. ..####..', // 9
    '........ ........ ...##... ........ ........ ...##... ........', // :
    '........ ........ ...##... ........ ........ ...##... ...##... ..##....', // ;
    '....###. ...###.. ..###... .###.... ..###... ...###.. ....###.', // <
    '........ ........ .######. ........ .######.',                   // =
    '.###.... ..###... ...###.. ....###. ...###.. ..###... .###....', // >
    '..####.. .##..##. .....##. ....##.. ...##... ........ ...##...', // ?
  ];

  function parseGlyph(src) {
    const rows = src.trim().split(/\s+/);
    if (rows.length > 8) throw new Error('glyph has >8 rows: ' + src);
    const g = new Uint8Array(8);
    rows.forEach((r, y) => {
      if (r.length !== 8) throw new Error('row not 8 wide: "' + r + '"');
      for (let x = 0; x < 8; x++) if (r[x] === '#') g[y] |= 0x80 >> x;
    });
    return g;
  }

  // ---------------------------------------------------------- shade patterns
  // Patterns are periodic in 8x8 so a glyph looks identical wherever it lands.
  function brickWall(x, y) {
    x &= 7; y &= 7;
    if ((y & 3) === 3) return false;
    return x !== (y < 4 ? 0 : 4);
  }
  const SETS = {
    smooth: {
      E: () => false,
      T: () => true,
      L: (x, y) => ((x + y) & 1) === 0,
      R: (x, y) => (x & 1) === 0 && (y & 1) === 0,
    },
    brick: {
      E: () => false,
      T: (x, y) => !(((x & 3) === 0 && (y & 3) === 0) || ((x & 3) === 2 && (y & 3) === 2)),
      L: brickWall,
      R: (x, y) => brickWall(x, y) && ((x + y) & 1) === 0,
    },
  };
  // Multicolor patterns work on 4x8 fat pixels: fn(fx, y) -> 2-bit value.
  //   00 = $D021 background, 01 = $D022 (MC1), 10 = $D023 (MC2), 11 = the cell's colour RAM (0-7).
  // The top face takes the cell colour, so materials share glyphs and differ only by colour;
  // the left/right faces use the two shared shades.
  function brickWallMC(fx, y) {
    y &= 7;
    if ((y & 3) === 3) return false;
    return (fx & 3) !== (y < 4 ? 0 : 2);
  }
  const MC_SETS = {
    smooth: { E: () => 0, T: () => 3, L: () => 1, R: () => 2 },
    brick: {
      E: () => 0,
      T: (fx, y) => ((y & 3) === 0 && ((fx + (y >> 2)) & 1) === 0) ? 2 : 1, // light paving, dark joints
      L: (fx, y) => brickWallMC(fx, y) ? 3 : 1,                             // bricks in cell colour, light mortar
      R: (fx, y) => brickWallMC(fx, y) ? (((fx + y) & 1) ? 3 : 2) : 0,      // shaded bricks, dark mortar
    },
  };
  const FACE_NAMES = { E: 'empty', T: 'top', L: 'left', R: 'right' };

  // The four 2:1 slope boundaries; row(x) is the first row of the "below" region.
  const BOUNDS = [
    { id: '/u', name: '/ upper', row: x => 3 - (x >> 1) },
    { id: '/l', name: '/ lower', row: x => 7 - (x >> 1) },
    { id: '\\u', name: '\\ upper', row: x => x >> 1 },
    { id: '\\l', name: '\\ lower', row: x => 4 + (x >> 1) },
  ];
  const FACES = ['E', 'T', 'L', 'R'];
  const PAIRS = [];
  for (const a of FACES) for (const b of FACES) if (a !== b) PAIRS.push([a, b]);

  function glyphFrom(fn) {
    const g = new Uint8Array(8);
    for (let y = 0; y < 8; y++) for (let x = 0; x < 8; x++) if (fn(x, y)) g[y] |= 0x80 >> x;
    return g;
  }
  function glyphFromMC(fn) {
    const g = new Uint8Array(8);
    for (let y = 0; y < 8; y++) for (let fx = 0; fx < 4; fx++) g[y] |= (fn(fx, y) & 3) << (6 - 2 * fx);
    return g;
  }

  // ----------------------------------------------------------- default set
  const REGIONS = [
    { from: 0x00, to: 0x3f, name: 'text' },
    { from: 0x40, to: 0x72, name: 'smooth' },
    { from: 0x73, to: 0xa5, name: 'brick' },
    { from: 0xa6, to: 0xad, name: 'lines' },
    { from: 0xae, to: 0xb5, name: 'blocks' },
    { from: 0xb6, to: 0xff, name: 'free' },
  ];

  // In multicolor mode the shade sets and free slots are fat-pixel glyphs; text, lines and
  // blocks stay hi-res (they are shown with colour RAM 0-7, which keeps a cell hi-res).
  const isMCSlot = i => i >= 0x40 && !(i >= 0xa6 && i <= 0xb5);

  function buildDefault(mode = 'hires') {
    const mc = mode === 'mc';
    const glyphs = [], names = [];
    for (let i = 0; i < 256; i++) { glyphs.push(new Uint8Array(8)); names.push('free'); }
    let i = 0;
    FONT_SRC.forEach((src, k) => {
      glyphs[i] = parseGlyph(src);
      names[i++] = 'text ' + (TEXT_NAMES[k] === ' ' ? 'space' : TEXT_NAMES[k]);
    });
    for (const setName of ['smooth', 'brick']) {
      const set = (mc ? MC_SETS : SETS)[setName], make = mc ? glyphFromMC : glyphFrom;
      const row = mc ? (b, fx) => b.row(fx * 2) : (b, x) => b.row(x);
      const label = (mc ? 'mc ' : '') + setName;
      for (const f of ['T', 'L', 'R']) {
        glyphs[i] = make(set[f]);
        names[i++] = `${label} · ${FACE_NAMES[f]} face`;
      }
      for (const b of BOUNDS) for (const [a, c] of PAIRS) {
        glyphs[i] = make((x, y) => (y < row(b, x) ? set[a] : set[c])(x, y));
        names[i++] = `${label} · ${b.name} · ${FACE_NAMES[a]} over ${FACE_NAMES[c]}`;
      }
    }
    for (const b of BOUNDS) {
      glyphs[i] = glyphFrom((x, y) => y === b.row(x));
      names[i++] = `line · ${b.name}`;
    }
    [['left edge', (x) => x === 0], ['right edge', (x) => x === 7],
     ['top edge', (x, y) => y === 0], ['bottom edge', (x, y) => y === 7],
     ['upper half', (x, y) => y < 4], ['lower half', (x, y) => y >= 4],
     ['left half', (x) => x < 4], ['right half', (x) => x >= 4],
     ['quad TL', (x, y) => x < 4 && y < 4], ['quad TR', (x, y) => x >= 4 && y < 4],
     ['quad BL', (x, y) => x < 4 && y >= 4], ['quad BR', (x, y) => x >= 4 && y >= 4],
    ].forEach(([n, fn], k) => {
      glyphs[i] = glyphFrom(fn);
      names[i++] = (k < 4 ? 'line · ' : 'block · ') + n;
    });
    if (i !== 0xb6) throw new Error('layout drift: ended at ' + i.toString(16));
    return { glyphs, names };
  }

  // ------------------------------------------------------------- materials
  const PALETTE = ['#000000', '#ffffff', '#68372b', '#70a4b2', '#6f3d86', '#588d43', '#352879', '#b8c76f',
                   '#6f4f25', '#433900', '#9a6759', '#444444', '#6c6c6c', '#9ad284', '#6c5eb5', '#959595'];
  const COLOR_NAMES = ['black', 'white', 'red', 'cyan', 'purple', 'green', 'blue', 'yellow',
                       'orange', 'brown', 'light red', 'dark grey', 'grey', 'light green', 'light blue', 'light grey'];

  // colors: hi-res colour per face. mcColor: the multicolor cell colour (0-7) for the "11" pixels.
  const MATERIALS = [
    { name: 'Grass', set: 'smooth', colors: { T: 13, L: 8, R: 9 }, mcColor: 5 },
    { name: 'Stone', set: 'smooth', colors: { T: 15, L: 12, R: 11 }, mcColor: 1 },
    { name: 'Brick', set: 'brick', colors: { T: 8, L: 10, R: 2 }, mcColor: 2 },
    { name: 'Water', set: 'smooth', colors: { T: 14, L: 6, R: 6 }, mcColor: 6 },
    { name: 'Sand', set: 'smooth', colors: { T: 7, L: 8, R: 9 }, mcColor: 7 },
    { name: 'Paving', set: 'brick', colors: { T: 15, L: 12, R: 11 }, mcColor: 4 },
  ];

  // Objects: 16x24, '.' transparent, 'o' opaque gap (ink off), other letters = ink in palette color.
  // mc maps each ink letter to [2-bit value, cell colour]; in multicolor a pixel pair becomes one fat pixel.
  const OBJECTS = [
    { name: 'Hero', palette: { '#': 1 }, mc: { '#': [1] }, rows: [
      '................', '................', '......oooo......', '.....o####o.....',
      '....o######o....', '....o#o##o#o....', '....o######o....', '.....o####o.....',
      '....oo#oo#oo....', '...o########o...', '..o#o######o#o..', '..o#o######o#o..',
      '..o#o######o#o..', '...oo######oo...', '....o##oo##o....', '....o##oo##o....',
      '....o##oo##o....', '....o##oo##o....', '...o###oo###o...', '...oooo..oooo...',
      '................', '................', '................', '................'] },
    { name: 'Tree', palette: { '#': 5, 't': 9 }, mc: { '#': [3, 5], 't': [2] }, rows: [
      '......oooo......', '....oo####oo....', '...o########o...', '..o##########o..',
      '..o###o##o###o..', '.o############o.', '.o##o######o##o.', '.o############o.',
      '.o###o####o###o.', '..o##########o..', '..o####oo####o..', '...oo##tt##oo...',
      '.....oottoo.....', '......otto......', '......otto......', '......otto......',
      '......otto......', '.....otttto.....', '....oooooooo....', '................',
      '................', '................', '................', '................'] },
    { name: 'Crystal', palette: { '#': 3 }, mc: { '#': [3, 3] }, rows: [
      '................', '................', '................', '................',
      '................', '................', '.......oo.......', '......o##o......',
      '.....o####o.....', '....o##o###o....', '....o##o###o....', '...o###o####o...',
      '...o###o####o...', '....o##o###o....', '.....o#o##o.....', '......o##o......',
      '.......oo.......', '................', '................', '................',
      '................', '................', '................', '................'] },
  ];

  // --------------------------------------------------------------- the map
  const W = 320, H = 200, N = 8, MAX_H = 6;
  const ORIGIN_X = 144, BASE_Y = 48; // multiples of 8 keep every edge char-aligned

  function defaultMap() {
    const rows = [
      'b4 b3 b2 s1 g1 g1 g1T g1',
      'b3 b2 s1 g1 g1 g1 g1 g1',
      'b2 s1 g1 g1 g1 w1 w1 g1T',
      's1 g1 g1 g1 w1 w1 w1 g1',
      'g1T g1 g1H g1 a1 w1 a1 g1',
      'g1 g1 g1 g1 g1 a1 g1 g1',
      'g1 s2 g1 g1 g1 g1 g1 g1T',
      'g1 s2C g1T g1 p1 p1 g1 g1',
    ];
    const M = { g: 0, s: 1, b: 2, w: 3, a: 4, p: 5 }, O = { H: 0, T: 1, C: 2 };
    const cells = [];
    for (const r of rows) for (const t of r.split(' ')) {
      cells.push({ m: M[t[0]], h: +t[1], o: t[2] ? O[t[2]] : -1 });
    }
    return { size: N, cells, caption: '{ APEXSCII } ISOMETRIC PETSCII', bg: 0, border: 0, textColor: 7, split: true,
             mode: 'hires', mc1: 12, mc2: 11 };
  }

  // Rasterise the map into 320x200 pixel values + per-pixel colour + column owner.
  // Hi-res: ink holds 0/1. Multicolor: ink holds the 2-bit value, duplicated across each pixel pair.
  function renderScene(map) {
    const ink = new Uint8Array(W * H), col = new Uint8Array(W * H), own = new Int16Array(W * H).fill(-1);
    const obj = new Uint8Array(W * H); // 1 where an object's ink landed
    const n = map.size, mc = map.mode === 'mc', mapBottom = (25 - statusRows(map)) * 8;
    function plot(x, y, v, c, idx, isObj) {
      if (x < 0 || y < 0 || x >= W || y >= mapBottom) return; // status rows stay clear
      const i = y * W + x;
      ink[i] = +v; if (c >= 0) col[i] = c; own[i] = idx; obj[i] = isObj ? 1 : 0;
    }
    function block(sx, sy, mat, idx, withSides) {
      const set = SETS[mat.set], mset = MC_SETS[mat.set];
      for (let px = 0; px < 32; px++) {
        const left = px < 16;
        const top = left ? 7 - (px >> 1) : (px - 16) >> 1;
        const bot = left ? 8 + (px >> 1) : 15 - ((px - 16) >> 1);
        const end = withSides ? bot + 16 : bot;
        for (let py = top; py < end; py++) {
          const f = py < bot ? 'T' : (left ? 'L' : 'R');
          const x = sx + px, y = sy + py;
          if (mc) plot(x, y, mset[f](x >> 1, y), mat.mcColor, idx);
          else plot(x, y, set[f](x, y), mat.colors[f], idx);
        }
      }
    }
    for (let s = 0; s <= 2 * n - 2; s++) {
      for (let gx = Math.max(0, s - n + 1); gx <= Math.min(s, n - 1); gx++) {
        const gy = s - gx, idx = gy * n + gx, c = map.cells[idx];
        if (c.m < 0) continue;
        const mat = MATERIALS[c.m];
        const sx = ORIGIN_X + (gx - gy) * 16, base = BASE_Y + (gx + gy) * 8;
        if (c.h === 0) block(sx, base + 16, mat, idx, false);
        else for (let z = 0; z < c.h; z++) block(sx, base - z * 16, mat, idx, true);
        if (c.o >= 0) {
          const ob = OBJECTS[c.o], D = base + 16 - 16 * c.h, ox = sx + 8, oy = D - 8;
          if (mc) ob.rows.forEach((r, y) => {
            for (let x = 0; x < 16; x += 2) {
              const a = r[x], b = r[x + 1];
              const ch = /[^.o]/.test(a) ? a : /[^.o]/.test(b) ? b : (a === 'o' || b === 'o') ? 'o' : '.';
              if (ch === '.') continue;
              const [v, c] = ch === 'o' ? [0, -1] : ob.mc[ch];
              for (const dx of [0, 1]) plot(ox + x + dx, oy + y, v, c === undefined ? -1 : c, idx, ch !== 'o');
            }
          });
          else ob.rows.forEach((r, y) => {
            for (let x = 0; x < 16; x++) {
              const ch = r[x];
              if (ch === '.') continue;
              if (ch === 'o') plot(ox + x, oy + y, false, -1, idx);
              else plot(ox + x, oy + y, true, ob.palette[ch], idx, true);
            }
          });
        }
      }
    }
    return { ink, col, own, obj };
  }

  // ------------------------------------------------------------ compositor
  const keyOf = g => Array.prototype.join.call(g, ',');
  const isZero = g => g.every(b => b === 0);
  function popcount(v) { v -= (v >> 1) & 0x55; v = (v & 0x33) + ((v >> 2) & 0x33); return (v + (v >> 4)) & 0x0f; }

  function asciiToScreen(ch) {
    const c = ch.toUpperCase().charCodeAt(0);
    if (c >= 65 && c <= 90) return c - 64;
    if (ch === '@') return 0;
    if (ch === '[') return 27;
    if (ch === ']') return 29;
    if (c >= 32 && c <= 63) return c;
    return 32;
  }

  // Turn the raster into screen codes + colours. Cells that match an existing glyph reuse it;
  // anything else is written into a free (blank) slot at $40+; overflow falls back to the nearest glyph.
  function composite(base, raster, map) {
    const mc = map.mode === 'mc';
    const chars = base.map(g => Uint8Array.from(g));
    const lookup = new Map(), free = [];
    const order = [];
    for (let i = 0x40; i < 256; i++) order.push(i);
    for (let i = 0; i < 0x40; i++) order.push(i);
    for (const i of order) {
      if (i >= 0x40 && isZero(chars[i])) { free.push(i); continue; }
      const k = keyOf(chars[i]);
      if (!lookup.has(k)) lookup.set(k, i);
    }
    const emptyKey = keyOf(new Uint8Array(8));
    lookup.set(emptyKey, 0x20);
    const freeTotal = free.length, allocated = [];
    let overflow = 0;
    const screen = new Uint8Array(1000), color = new Uint8Array(1000);
    for (let cy = 0; cy < 25; cy++) for (let cx = 0; cx < 40; cx++) {
      // One colour per cell: terrain wins, so objects over ground read as carved silhouettes;
      // an object only shows its own colour where the cell holds no terrain ink (e.g. against the sky).
      // Multicolor: only "11" pixels use the cell colour, and there an object's own colour wins.
      const g = new Uint8Array(8), counts = new Uint16Array(16), objCounts = new Uint16Array(16);
      if (mc) {
        for (let y = 0; y < 8; y++) for (let fx = 0; fx < 4; fx++) {
          const i = (cy * 8 + y) * W + cx * 8 + fx * 2, v = raster.ink[i];
          g[y] |= v << (6 - 2 * fx);
          if (v === 3) (raster.obj[i] ? objCounts : counts)[raster.col[i] & 7]++;
        }
      } else {
        for (let y = 0; y < 8; y++) for (let x = 0; x < 8; x++) {
          const i = (cy * 8 + y) * W + cx * 8 + x;
          if (raster.ink[i]) { g[y] |= 0x80 >> x; (raster.obj[i] ? objCounts : counts)[raster.col[i]]++; }
        }
      }
      const k = keyOf(g);
      let idx = lookup.get(k);
      if (idx === undefined) {
        if (free.length) {
          idx = free.shift(); chars[idx] = g; lookup.set(k, idx); allocated.push(idx);
        } else {
          let best = 0x20, bd = 99;
          for (let j = 0; j < 256; j++) {
            let d = 0;
            for (let y = 0; y < 8; y++) d += popcount(chars[j][y] ^ g[y]);
            if (d < bd) { bd = d; best = j; }
          }
          idx = best; overflow++;
        }
      }
      let c = mc ? 0 : 1, cm = 0;
      const src = mc ? (objCounts.some(v => v) ? objCounts : counts) : (counts.some(v => v) ? counts : objCounts);
      for (let j = 0; j < 16; j++) if (src[j] > cm) { cm = src[j]; c = j; }
      screen[cy * 40 + cx] = idx;
      color[cy * 40 + cx] = mc ? 8 | (c & 7) : c;
    }
    const rows = statusRows(map), split = map.split !== false;
    statusLines(map).forEach((line, r) => {
      // {text} is reverse video — only meaningful with the ROM font, where $80-$FF are the inverses.
      const codes = [];
      let rev = false;
      for (const ch of line) {
        if (ch === '{') rev = true;
        else if (ch === '}') rev = false;
        else codes.push(asciiToScreen(ch) | (rev && split ? 0x80 : 0));
      }
      const row = 25 - rows + r, start = row * 40 + Math.floor((40 - Math.min(40, codes.length)) / 2);
      codes.slice(0, 40).forEach((code, k) => {
        screen[start + k] = code;
        color[start + k] = mc ? map.textColor & 7 : map.textColor; // colour RAM < 8 keeps text hi-res
      });
    });
    return { chars, screen, color, allocated, overflow, freeTotal };
  }

  // Status bar: one line of the caption per row, 1-3 rows at the bottom of the screen.
  const statusLines = map => (map.caption || '').split('\n').slice(0, 3);
  const statusRows = map => Math.max(1, statusLines(map).length);

  // Decode a screen the way the VIC does: in MC mode, colour RAM bit 3 makes a cell multicolor.
  // With the split on, status rows come from the ROM font: pass the 4K chargen ROM as `rom` for an
  // exact preview; otherwise APEXSCII's own text glyphs stand in (inverted for reverse codes).
  function screenRGB(chars, screen, color, map, rom) {
    const pal = PALETTE.map(h => [1, 3, 5].map(i => parseInt(h.substr(i, 2), 16)));
    const out = new Uint8ClampedArray(W * H * 4), mc = map.mode === 'mc';
    const firstStatus = map.split !== false ? 25 - statusRows(map) : 25;
    const romGlyph = code => {
      if (rom) return rom.subarray(code * 8, code * 8 + 8);
      const t = (code & 0x7f) < 0x40 ? chars[code & 0x3f] : new Uint8Array(8);
      return code & 0x80 ? t.map(b => b ^ 0xff) : t;
    };
    for (let cy = 0; cy < 25; cy++) for (let cx = 0; cx < 40; cx++) {
      const k = cy * 40 + cx, cr = color[k];
      const g = cy >= firstStatus ? romGlyph(screen[k]) : chars[screen[k]];
      const multi = mc && (cr & 8);
      const cols = multi ? [map.bg, map.mc1, map.mc2, cr & 7] : [map.bg, cr];
      for (let y = 0; y < 8; y++) for (let x = 0; x < 8; x++) {
        const v = multi ? (g[y] >> (6 - 2 * (x >> 1))) & 3 : (g[y] >> (7 - x)) & 1;
        const c = pal[cols[v]], p = ((cy * 8 + y) * W + cx * 8 + x) * 4;
        out[p] = c[0]; out[p + 1] = c[1]; out[p + 2] = c[2]; out[p + 3] = 255;
      }
    }
    return out;
  }

  // --------------------------------------------------------------- exports
  function flatten(chars) {
    const out = new Uint8Array(2048);
    chars.forEach((g, i) => out.set(g, i * 8));
    return out;
  }
  function charsetPrg(chars) {
    const out = new Uint8Array(2050);
    out[0] = 0x00; out[1] = 0x38; out.set(flatten(chars), 2);
    return out;
  }

  // Self-contained runnable PRG: BASIC "10 SYS2064", copies screen/colour/charset into place,
  // points the VIC at $3800 and parks. Memory: $0A00 screen, $0E00 colour, $1200 charset.
  // Multicolor also sets $D022/$D023 and turns on $D016 bit 4.
  //
  // With the status bar split on, a two-stage raster IRQ swaps $D018 every frame: APEXSCII ($1E)
  // for the map, the ROM uppercase/graphics font ($14, VIC sees ROM at $1000) for the status rows.
  // The swap is polled to the very start of the status bar's first raster line, before the VIC
  // fetches that line's glyphs. Status cells use colour RAM 0-7, so they stay hi-res in MC mode.
  function mapPrg(chars, screen, color, map) {
    const { bg, border } = map, ORG = 0x0810;
    const SCR = 0x0a00, COL = 0x0e00, CHR = 0x1200, START = 0x0801, END = 0x1a00;
    const split = map.split !== false;
    const L = 51 + 8 * (25 - statusRows(map)); // first raster line of the status bar (PAL and NTSC)
    const lo = v => v & 0xff, hi = v => v >> 8;
    const labels = {};
    // Two passes: the first records label addresses, the second fills in forward references.
    const emit = () => {
      const c = [], pc = () => ORG + c.length, mark = n => { labels[n] = pc(); };
      const at = n => labels[n] || 0, rel = n => (at(n) - (pc() + 2)) & 0xff;
      const setVec = n => c.push(0xa9, lo(at(n)), 0x8d, 0x14, 0x03, 0xa9, hi(at(n)), 0x8d, 0x15, 0x03); // $0314/5 = n
      c.push(
        0xa9, border & 15, 0x8d, 0x20, 0xd0,   // LDA #border : STA $D020
        0xa9, bg & 15, 0x8d, 0x21, 0xd0,       // LDA #bg     : STA $D021
        0xa9, 0x80, 0x8d, 0x91, 0x02);         // LDA #$80    : STA $0291 (lock shift+C= charset switch)
      if (map.mode === 'mc') c.push(
        0xa9, map.mc1 & 15, 0x8d, 0x22, 0xd0,  // LDA #mc1    : STA $D022
        0xa9, map.mc2 & 15, 0x8d, 0x23, 0xd0,  // LDA #mc2    : STA $D023
        0xa9, 0xd8, 0x8d, 0x16, 0xd0);         // LDA #$D8    : STA $D016 (multicolor on)
      c.push(0xa2, 0x00);                      // LDX #0
      mark('copy');
      for (let p = 0; p < 4; p++) c.push(0xbd, 0x00, hi(SCR) + p, 0x9d, 0x00, 0x04 + p); // LDA src,X : STA dst,X
      for (let p = 0; p < 4; p++) c.push(0xbd, 0x00, hi(COL) + p, 0x9d, 0x00, 0xd8 + p);
      for (let p = 0; p < 8; p++) c.push(0xbd, 0x00, hi(CHR) + p, 0x9d, 0x00, 0x38 + p);
      c.push(0xe8);                                    // INX
      c.push(0xd0, rel('copy'));                       // BNE copy
      c.push(0xa9, 0x1e, 0x8d, 0x18, 0xd0);            // LDA #$1E : STA $D018
      if (split) {
        c.push(0x78);                                  // SEI
        c.push(0xa9, 0x7f, 0x8d, 0x0d, 0xdc);          // LDA #$7F : STA $DC0D (CIA timer IRQs off)
        c.push(0xad, 0x0d, 0xdc);                      // LDA $DC0D (ack)
        c.push(0xa9, 0x01, 0x8d, 0x1a, 0xd0);          // LDA #1 : STA $D01A (raster IRQ on)
        c.push(0xad, 0x11, 0xd0, 0x29, 0x7f, 0x8d, 0x11, 0xd0); // clear raster bit 8
        c.push(0xa9, L - 2, 0x8d, 0x12, 0xd0);         // first IRQ two lines above the split
        setVec('split');
        c.push(0x58);                                  // CLI
      }
      mark('park');
      c.push(0x4c, lo(at('park')), hi(at('park')));    // JMP park
      if (split) {
        mark('split');
        c.push(0xa9, L, 0xa2, 0x14);                   // LDA #L : LDX #$14
        mark('wait');
        c.push(0xcd, 0x12, 0xd0);                      // CMP $D012
        c.push(0xd0, rel('wait'));                     // BNE wait
        c.push(0x8e, 0x18, 0xd0);                      // STX $D018 (ROM font from here down)
        c.push(0xa9, 0x00, 0x8d, 0x12, 0xd0);          // next IRQ at line 0
        setVec('top');
        c.push(0xa9, 0xff, 0x8d, 0x19, 0xd0);          // ack VIC IRQ
        c.push(0x4c, 0x81, 0xea);                      // JMP $EA81 (restore regs, RTI)
        mark('top');
        c.push(0xa9, 0x1e, 0x8d, 0x18, 0xd0);          // APEXSCII for the map
        c.push(0xa9, L - 2, 0x8d, 0x12, 0xd0);
        setVec('split');
        c.push(0xa9, 0xff, 0x8d, 0x19, 0xd0);
        c.push(0x4c, 0x31, 0xea);                      // JMP $EA31 (KERNAL keyboard/jiffy once a frame)
      }
      return c;
    };
    emit();
    const code = emit();
    if (ORG + code.length > SCR) throw new Error('PRG code overruns screen data');
    const mem = new Uint8Array(END - START);
    const put = (addr, bytes) => mem.set(bytes, addr - START);
    put(0x0801, [0x0b, 0x08, 0x0a, 0x00, 0x9e, 0x32, 0x30, 0x36, 0x34, 0x00, 0x00, 0x00]);
    put(ORG, code);
    put(SCR, screen);
    put(COL, color.map(c => c & 15));
    put(CHR, flatten(chars));
    const out = new Uint8Array(mem.length + 2);
    out[0] = 0x01; out[1] = 0x08; out.set(mem, 2);
    return out;
  }

  const hex = (v, w = 2) => '$' + v.toString(16).toUpperCase().padStart(w, '0');
  function charsetAsm(chars, names) {
    const lines = ['; APEXSCII character set — 256 glyphs x 8 bytes', '; load/copy to a 2K boundary, e.g. $3800 (VIC $D018 = $1E)', 'apexscii:'];
    chars.forEach((g, i) => lines.push(`    .byte ${Array.from(g, b => hex(b)).join(',')}  ; ${hex(i)} ${names[i] || ''}`));
    return lines.join('\n') + '\n';
  }
  function mapAsm(screen, color) {
    const out = ['; APEXSCII map — 40x25 screen codes then colour RAM values', 'map_screen:'];
    for (let r = 0; r < 25; r++) out.push('    .byte ' + Array.from(screen.slice(r * 40, r * 40 + 40), b => hex(b)).join(','));
    out.push('map_color:');
    for (let r = 0; r < 25; r++) out.push('    .byte ' + Array.from(color.slice(r * 40, r * 40 + 40), b => hex(b)).join(','));
    return out.join('\n') + '\n';
  }

  return {
    W, H, MAX_H, PALETTE, COLOR_NAMES, MATERIALS, OBJECTS, REGIONS, SETS, MC_SETS, BOUNDS, PAIRS,
    isMCSlot, screenRGB, statusRows, buildDefault, defaultMap, renderScene, composite, flatten, charsetPrg, mapPrg, charsetAsm, mapAsm, hex,
  };
});
