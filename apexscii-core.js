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
  // Dungeon faces: ceiling, ground, front wall, side wall, door (vertical planks).
  Object.assign(SETS.smooth, { C: () => false, G: SETS.smooth.R, W: SETS.smooth.T, S: SETS.smooth.L, D: x => (x & 3) !== 3 });
  Object.assign(SETS.brick, { C: () => false, G: SETS.brick.T, W: SETS.brick.L, S: SETS.brick.R, D: x => (x & 3) !== 3 });
  Object.assign(MC_SETS.smooth, { C: () => 0, G: () => 2, W: () => 3, S: () => 1, D: fx => (fx & 1) ? 2 : 3 });
  Object.assign(MC_SETS.brick, { C: () => 0, G: MC_SETS.brick.T, W: MC_SETS.brick.L, S: MC_SETS.brick.R, D: fx => (fx & 1) ? 2 : 3 });
  const FACE_NAMES = { E: 'empty', T: 'top', L: 'left', R: 'right' };

  // 45° boundaries, corner to corner across a cell: military, side oblique and dungeon views.
  const B45 = [
    { id: '/', name: '/ 45°', row: x => 7 - x },
    { id: '\\', name: '\\ 45°', row: x => x },
  ];

  // Every perspective shares the text block at $00-$3F, then its own shade sets.
  //   faces: what the pair glyphs combine; key: which pattern each face uses; solids: plain faces.
  // The top-down 3/4 view has no slopes at all, so it carries outline variants instead.
  const PERSPECTIVES = {
    iso: { name: 'Isometric 2:1' },
    military: {
      name: 'Military 45°', faces: ['E', 'T', 'L', 'R'], solids: ['T', 'L', 'R'], bounds: B45,
      key: { E: 'E', T: 'T', L: 'L', R: 'R' }, faceNames: FACE_NAMES,
    },
    oblique: {
      name: 'Top-down 3/4', faces: [], solids: [], bounds: [], edges: true,
      key: { T: 'T', F: 'L' }, faceNames: { T: 'top', F: 'front' },
    },
    side: {
      name: 'Side oblique', faces: ['E', 'T', 'F', 'R'], solids: ['T', 'F', 'R'], bounds: [B45[0]],
      key: { E: 'E', T: 'T', F: 'L', R: 'R' }, faceNames: { E: 'empty', T: 'top', F: 'front', R: 'side' },
    },
    dungeon: {
      name: 'First-person dungeon', faces: ['C', 'G', 'W', 'S'], solids: ['C', 'G', 'W', 'S', 'D'], bounds: B45,
      key: { C: 'C', G: 'G', W: 'W', S: 'S', D: 'D' },
      faceNames: { C: 'ceiling', G: 'floor', W: 'front wall', S: 'side wall', D: 'door' },
    },
  };

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
  const LAYOUTS = {};
  const layout = persp => LAYOUTS[persp] || (LAYOUTS[persp] = buildDefault('hires', persp).regions);
  function isMCSlot(i, persp = 'iso') {
    const r = layout(persp).find(r => i >= r.from && i <= r.to);
    return !['text', 'lines', 'blocks'].includes(r.name);
  }

  // Browser storage key for a perspective's charset; the isometric keys predate perspectives.
  const charsetKey = (persp, mode) => (persp === 'iso' ? 'apexscii.charset' : `apexscii.${persp}.charset`) + (mode === 'mc' ? '.mc' : '');

  function buildDefault(mode = 'hires', persp = 'iso') {
    return persp === 'iso' ? buildIso(mode) : buildPerspective(mode, persp);
  }

  const EDGE_BLOCK_GLYPHS = [
    ['left edge', (x) => x === 0], ['right edge', (x) => x === 7],
    ['top edge', (x, y) => y === 0], ['bottom edge', (x, y) => y === 7],
    ['upper half', (x, y) => y < 4], ['lower half', (x, y) => y >= 4],
    ['left half', (x) => x < 4], ['right half', (x) => x >= 4],
    ['quad TL', (x, y) => x < 4 && y < 4], ['quad TR', (x, y) => x >= 4 && y < 4],
    ['quad BL', (x, y) => x < 4 && y >= 4], ['quad BR', (x, y) => x >= 4 && y >= 4],
  ];

  function buildPerspective(mode, persp) {
    const P = PERSPECTIVES[persp], mc = mode === 'mc';
    const glyphs = [], names = [], regions = [];
    for (let i = 0; i < 256; i++) { glyphs.push(new Uint8Array(8)); names.push('free'); }
    let i = 0, start = 0;
    const add = (g, name) => { glyphs[i] = g; names[i++] = name; };
    const region = name => { regions.push({ from: start, to: i - 1, name }); start = i; };
    FONT_SRC.forEach((src, k) => add(parseGlyph(src), 'text ' + (TEXT_NAMES[k] === ' ' ? 'space' : TEXT_NAMES[k])));
    region('text');
    const pairs = [];
    for (const a of P.faces) for (const b of P.faces) if (a !== b) pairs.push([a, b]);
    for (const setName of ['smooth', 'brick']) {
      const pat = f => (mc ? MC_SETS : SETS)[setName][P.key[f]], make = mc ? glyphFromMC : glyphFrom;
      const row = mc ? (b, fx) => b.row(fx * 2) : (b, x) => b.row(x);
      const label = (mc ? 'mc ' : '') + setName, fn = P.faceNames;
      for (const f of P.solids) add(make(pat(f)), `${label} · ${fn[f]} face`);
      for (const b of P.bounds) for (const [a, c] of pairs) {
        add(make((x, y) => (y < row(b, x) ? pat(a) : pat(c))(x, y)), `${label} · ${b.name} · ${fn[a]} over ${fn[c]}`);
      }
      if (P.edges) {
        // Outlines where a block drops away: top faces with any of N/E/S/W, front faces with W/E.
        const maxX = mc ? 3 : 7, off = mc ? 0 : false;
        for (let e = 0; e < 16; e++) {
          const on = [e & 1 && 'N', e & 2 && 'E', e & 4 && 'S', e & 8 && 'W'].filter(Boolean);
          add(make((x, y) => ((e & 1) && y === 0) || ((e & 4) && y === 7) || ((e & 8) && x === 0) || ((e & 2) && x === maxX)
            ? off : pat('T')(x, y)), `${label} · top · ${on.length ? 'edges ' + on.join('') : 'no edges'}`);
        }
        for (let e = 0; e < 4; e++) {
          add(make((x, y) => ((e & 1) && x === 0) || ((e & 2) && x === maxX) ? off : pat('F')(x, y)),
            `${label} · front · ${['no edges', 'edge W', 'edge E', 'edges WE'][e]}`);
        }
      }
      region(setName);
    }
    for (const b of P.bounds) add(glyphFrom((x, y) => y === b.row(x)), `line · ${b.name}`);
    EDGE_BLOCK_GLYPHS.slice(0, 4).forEach(([n, fn]) => add(glyphFrom(fn), 'line · ' + n));
    region('lines');
    EDGE_BLOCK_GLYPHS.slice(4).forEach(([n, fn]) => add(glyphFrom(fn), 'block · ' + n));
    region('blocks');
    i = 256; region('free');
    return { glyphs, names, regions };
  }

  function buildIso(mode) {
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
    return { glyphs, names, regions: REGIONS };
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
             mode: 'hires', mc1: 12, mc2: 11, persp: 'iso', dungeon: defaultDungeon() };
  }

  // Draw one iso block with its 32x32 box at (sx, sy) through plot(x, y, value, colour, isObj).
  // Multicolor values are computed per pixel pair, so they come out duplicated across each pair.
  function drawBlock(plot, sx, sy, mat, mc, withSides) {
    const set = SETS[mat.set], mset = MC_SETS[mat.set];
    for (let px = 0; px < 32; px++) {
      const left = px < 16;
      const top = left ? 7 - (px >> 1) : (px - 16) >> 1;
      const bot = left ? 8 + (px >> 1) : 15 - ((px - 16) >> 1);
      const end = withSides ? bot + 16 : bot;
      for (let py = top; py < end; py++) {
        const f = py < bot ? 'T' : (left ? 'L' : 'R');
        const x = sx + px, y = sy + py;
        if (mc) plot(x, y, mset[f](x >> 1, y), mat.mcColor, false);
        else plot(x, y, set[f](x, y), mat.colors[f], false);
      }
    }
  }

  // Draw a 16x24 object with its top-left at (ox, oy); 'o' pixels clear ink, '.' is transparent.
  function drawObject(plot, ob, ox, oy, mc) {
    if (mc) ob.rows.forEach((r, y) => {
      for (let x = 0; x < 16; x += 2) {
        const a = r[x], b = r[x + 1];
        const ch = /[^.o]/.test(a) ? a : /[^.o]/.test(b) ? b : (a === 'o' || b === 'o') ? 'o' : '.';
        if (ch === '.') continue;
        const [v, c] = ch === 'o' ? [0, -1] : ob.mc[ch];
        for (const dx of [0, 1]) plot(ox + x + dx, oy + y, v, c === undefined ? -1 : c, ch !== 'o');
      }
    });
    else ob.rows.forEach((r, y) => {
      for (let x = 0; x < 16; x++) {
        const ch = r[x];
        if (ch === '.') continue;
        if (ch === 'o') plot(ox + x, oy + y, 0, -1, false);
        else plot(ox + x, oy + y, 1, ob.palette[ch], true);
      }
    });
  }

  // ------------------------------------------------- the other perspectives
  // Plot one pixel of a face, using the perspective's pattern for it and the material's colour.
  const FACE_COLOR = { T: 'T', L: 'L', F: 'L', R: 'R', W: 'T', S: 'L', G: 'R' };
  function facePixel(plot, x, y, mat, persp, face, mc) {
    const key = PERSPECTIVES[persp].key[face];
    if (mc) plot(x, y, MC_SETS[mat.set][key](x >> 1, y), mat.mcColor, false);
    else plot(x, y, SETS[mat.set][key](x, y), face === 'D' ? 8 : face === 'C' ? 0 : mat.colors[FACE_COLOR[face]], false);
  }

  // Military: a 16x16 diamond (2x2 chars) with 45° edges, and `side` pixels of wall below it.
  function drawMilitaryBlock(plot, sx, sy, mat, mc, side) {
    for (let px = 0; px < 16; px++) {
      const l = px < 8 ? px : 15 - px, top = 7 - l, bot = 8 + l;
      for (let py = top; py < bot + side; py++)
        facePixel(plot, sx + px, sy + py, mat, 'military', py < bot ? 'T' : px < 8 ? 'L' : 'R', mc);
    }
  }

  // Top-down 3/4: a 16x16 top with outlines where a neighbour is lower, then 8px of front face
  // per height unit. `nb` holds the N/E/S/W neighbour heights (-1 for nothing there).
  function drawObliqueBlock(plot, sx, top, mat, mc, h, nb) {
    const atW = px => mc ? px <= 1 : px === 0, atE = px => mc ? px >= 14 : px === 15; // whole fat pixels in MC
    for (let py = 0; py < 16; py++) for (let px = 0; px < 16; px++) {
      const edge = (py === 0 && nb.N < h) || (py === 15 && nb.S < h) || (atW(px) && nb.W < h) || (atE(px) && nb.E < h);
      if (edge) plot(sx + px, top + py, 0, -1, false);
      else facePixel(plot, sx + px, top + py, mat, 'oblique', 'T', mc);
    }
    for (let z = 0; z < h; z++) {
      const y0 = top + 16 + (h - 1 - z) * 8;
      for (let py = 0; py < 8; py++) for (let px = 0; px < 16; px++) {
        if ((atW(px) && nb.W <= z) || (atE(px) && nb.E <= z)) plot(sx + px, y0 + py, 0, -1, false);
        else facePixel(plot, sx + px, y0 + py, mat, 'oblique', 'F', mc);
      }
    }
  }

  // Side oblique (cabinet): 16x16 front face, top face receding up-right by 8px at 45°,
  // and an 8px side face on the right. `full` false draws only the top (a block at ground level).
  function drawSideBlock(plot, sx, sy, mat, mc, full) {
    for (let r = 0; r < 8; r++) for (let x = 7 - r; x < 23 - r; x++) facePixel(plot, sx + x, sy - 8 + r, mat, 'side', 'T', mc);
    if (!full) return;
    for (let py = 0; py < 16; py++) for (let px = 0; px < 16; px++) facePixel(plot, sx + px, sy + py, mat, 'side', 'F', mc);
    for (let c = 0; c < 8; c++) for (let y = sy - 1 - c; y <= sy + 14 - c; y++) facePixel(plot, sx + 16 + c, y, mat, 'side', 'R', mc);
  }

  // The height-map views all read the same map, so one world can be seen from any of them.
  const VIEW_RENDERERS = {
    military(map, plot, mc, setIdx) {
      const n = map.size;
      for (let s = 0; s <= 2 * n - 2; s++) for (let gx = Math.max(0, s - n + 1); gx <= Math.min(s, n - 1); gx++) {
        const gy = s - gx, c = map.cells[gy * n + gx];
        if (c.m < 0) continue;
        setIdx(gy * n + gx);
        const sx = 152 + (gx - gy) * 8, top = 48 + (gx + gy) * 8 - c.h * 8;
        drawMilitaryBlock(plot, sx, top, MATERIALS[c.m], mc, c.h * 8);
        if (c.o >= 0) drawObject(plot, OBJECTS[c.o], sx, top - 14, mc);
      }
    },
    oblique(map, plot, mc, setIdx) {
      const n = map.size, hAt = (x, y) => {
        const c = x >= 0 && y >= 0 && x < n && y < n ? map.cells[y * n + x] : null;
        return c && c.m >= 0 ? c.h : -1;
      };
      for (let gy = 0; gy < n; gy++) for (let gx = 0; gx < n; gx++) {
        const c = map.cells[gy * n + gx];
        if (c.m < 0) continue;
        setIdx(gy * n + gx);
        const sx = 96 + gx * 16, top = 48 + gy * 16 - c.h * 8;
        drawObliqueBlock(plot, sx, top, MATERIALS[c.m], mc, c.h,
          { N: hAt(gx, gy - 1), E: hAt(gx + 1, gy), S: hAt(gx, gy + 1), W: hAt(gx - 1, gy) });
        if (c.o >= 0) drawObject(plot, OBJECTS[c.o], sx, top - 10, mc);
      }
    },
    side(map, plot, mc, setIdx) {
      const n = map.size;
      for (let gz = n - 1; gz >= 0; gz--) for (let gx = 0; gx < n; gx++) {
        const gy = n - 1 - gz, c = map.cells[gy * n + gx]; // map row 0 is the far side
        if (c.m < 0) continue;
        setIdx(gy * n + gx);
        const mat = MATERIALS[c.m], sx = 64 + gx * 16 + gz * 8, ground = 176 - gz * 8;
        if (c.h === 0) drawSideBlock(plot, sx, ground, mat, mc, false);
        else for (let z = 0; z < c.h; z++) drawSideBlock(plot, sx, ground - 16 - z * 16, mat, mc, true);
        if (c.o >= 0) drawObject(plot, OBJECTS[c.o], sx + 4, ground - 16 * c.h - 24, mc);
      }
    },
  };

  // ------------------------------------------------------------------ dungeon
  const DIRS = [[0, -1], [1, 0], [0, 1], [-1, 0]]; // N E S W
  const DIR_NAMES = ['NORTH', 'EAST', 'SOUTH', 'WEST'];
  // Wall boxes (half width, half height) at each distance; equal steps on both axes keep every
  // perspective edge at exactly 45°, and every corner on a char boundary.
  const DUNGEON_BOXES = [[80, 64], [56, 40], [40, 24], [32, 16]];
  const ARROW = ['...##...', '..####..', '.######.', '########', '...##...', '...##...', '...##...', '........'];

  function defaultDungeon() {
    return {
      size: 16, mat: 1, x: 8, y: 8, dir: 0,
      rows: [
        '################', '#..............#', '#.####.#####.#.#', '#.#....#...#.#.#',
        '#.#.####.#.#.#.#', '#.#......#...#.#', '#.######D#####.#', '#......#.......#',
        '######.#.#####.#', '#......#.#...#.#', '#.######.#.#.#.#', '#.#......#.#...#',
        '#.#.######.###.#', '#.#........#...#', '#...######...#.#', '################',
      ],
    };
  }
  const dungeonAt = (d, x, y) => x < 0 || y < 0 || x >= d.size || y >= d.size ? '#' : d.rows[y][x];

  // First-person view (160x128 at vx,vy), drawn far to near, plus an optional minimap to the right.
  function renderDungeon(d, plot, mc, vx, vy, withMap) {
    const mat = MATERIALS[d.mat], cx = vx + 80, cy = vy + 64;
    const f = DIRS[d.dir], l = DIRS[(d.dir + 3) % 4], r = DIRS[(d.dir + 1) % 4];
    const px = (x, y, face) => facePixel(plot, x, y, mat, 'dungeon', face, mc);
    const rect = (x0, y0, x1, y1, face) => { for (let y = y0; y < y1; y++) for (let x = x0; x < x1; x++) px(x, y, face); };
    for (let y = vy; y < vy + 128; y++) for (let x = vx; x < vx + 160; x++) px(x, y, y < cy ? 'C' : 'G');
    const cell = (dist, side) => dungeonAt(d, d.x + f[0] * dist + side[0], d.y + f[1] * dist + side[1]);
    const solid = c => c !== '.';
    for (let dist = 2; dist >= 0; dist--) {
      const [hw0, hh0] = DUNGEON_BOXES[dist], [hw1, hh1] = DUNGEON_BOXES[dist + 1], span = hw0 - hw1;
      for (const [side, sign] of [[l, -1], [r, 1]]) {
        if (solid(cell(dist, side))) {
          for (let k = 0; k < span; k++) { // wall slice k pixels in from the outer edge
            const x = sign < 0 ? cx - hw0 + k : cx + hw0 - 1 - k;
            for (let y = cy - hh0 + k; y <= cy + hh0 - 2 - k; y++) px(x, y, 'S');
          }
        } else if (solid(cell(dist + 1, side))) { // an opening shows the far corridor's wall face-on
          const x0 = sign < 0 ? cx - hw0 : cx + hw1;
          rect(x0, cy - hh1, x0 + span, cy + hh1, 'W');
        }
      }
      const ahead = cell(dist + 1, [0, 0]);
      if (solid(ahead)) {
        rect(cx - hw1, cy - hh1, cx + hw1, cy + hh1, 'W');
        if (ahead === 'D') {
          const dw = Math.round(hw1 / 2 / 8) * 8, dh = Math.round(hh1 * 1.5 / 8) * 8;
          rect(cx - dw, cy + hh1 - dh, cx + dw, cy + hh1, 'D');
        }
      }
    }
    if (!withMap) return;
    const mx = vx + 176, my = vy;
    for (let y = 0; y < d.size; y++) for (let x = 0; x < d.size; x++) {
      const c = dungeonAt(d, x, y);
      if (c === '.') continue;
      for (let py = 0; py < 8; py++) for (let qx = 0; qx < 8; qx++) {
        const X = mx + x * 8 + qx, Y = my + y * 8 + py;
        if (mc) plot(X, Y, c === 'D' ? 2 : 3, mat.mcColor, false);
        else plot(X, Y, 1, c === 'D' ? 8 : mat.colors.T, false);
      }
    }
    for (let py = 0; py < 8; py++) for (let qx = 0; qx < 8; qx++) { // player arrow, rotated to face
      let ax = qx, ay = py;
      for (let k = 0; k < d.dir; k++) [ax, ay] = [ay, 7 - ax];
      const on = ARROW[ay][ax] === '#';
      plot(mx + d.x * 8 + qx, my + d.y * 8 + py, on ? 1 : 0, on ? 1 : -1, on); // white (hi-res) or MC1
    }
  }

  // Rasterise the map into 320x200 pixel values + per-pixel colour + column owner.
  // Hi-res: ink holds 0/1. Multicolor: ink holds the 2-bit value, duplicated across each pixel pair.
  function renderScene(map) {
    const ink = new Uint8Array(W * H), col = new Uint8Array(W * H), own = new Int16Array(W * H).fill(-1);
    const obj = new Uint8Array(W * H); // 1 where an object's ink landed
    const n = map.size, mc = map.mode === 'mc', mapBottom = (25 - statusRows(map)) * 8;
    let idx = -1;
    function plot(x, y, v, c, isObj) {
      if (x < 0 || y < 0 || x >= W || y >= mapBottom) return; // status rows stay clear
      const i = y * W + x;
      ink[i] = +v; if (c >= 0) col[i] = c; own[i] = idx; obj[i] = isObj ? 1 : 0;
    }
    const persp = map.persp || 'iso';
    if (persp !== 'iso') {
      if (persp === 'dungeon') renderDungeon(map.dungeon, plot, mc, 8, 8, true);
      else VIEW_RENDERERS[persp](map, plot, mc, i => { idx = i; });
      return { ink, col, own, obj };
    }
    for (let s = 0; s <= 2 * n - 2; s++) {
      for (let gx = Math.max(0, s - n + 1); gx <= Math.min(s, n - 1); gx++) {
        const gy = s - gx, c = map.cells[gy * n + gx];
        idx = gy * n + gx;
        if (c.m < 0) continue;
        const mat = MATERIALS[c.m];
        const sx = ORIGIN_X + (gx - gy) * 16, base = BASE_Y + (gx + gy) * 8;
        if (c.h === 0) drawBlock(plot, sx, base + 16, mat, mc, false);
        else for (let z = 0; z < c.h; z++) drawBlock(plot, sx, base - z * 16, mat, mc, true);
        if (c.o >= 0) drawObject(plot, OBJECTS[c.o], sx + 8, base + 16 - 16 * c.h - 8, mc);
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

  // Pack the 8x8 cell at (x0, y0) of a raster (ink/col/obj arrays, row length `stride`) into glyph
  // bytes and a colour RAM value. One colour per cell: in hi-res, terrain wins so objects over ground
  // read as carved silhouettes; in multicolor only "11" pixels use the cell colour, and an object wins.
  function encodeCell(r, stride, x0, y0, mc) {
    const g = new Uint8Array(8), counts = new Uint16Array(16), objCounts = new Uint16Array(16);
    if (mc) {
      for (let y = 0; y < 8; y++) for (let fx = 0; fx < 4; fx++) {
        const i = (y0 + y) * stride + x0 + fx * 2, v = r.ink[i];
        g[y] |= v << (6 - 2 * fx);
        if (v === 3) (r.obj[i] ? objCounts : counts)[r.col[i] & 7]++;
      }
    } else {
      for (let y = 0; y < 8; y++) for (let x = 0; x < 8; x++) {
        const i = (y0 + y) * stride + x0 + x;
        if (r.ink[i]) { g[y] |= 0x80 >> x; (r.obj[i] ? objCounts : counts)[r.col[i]]++; }
      }
    }
    let c = mc ? 0 : 1, cm = 0;
    const src = mc ? (objCounts.some(v => v) ? objCounts : counts) : (counts.some(v => v) ? counts : objCounts);
    for (let j = 0; j < 16; j++) if (src[j] > cm) { cm = src[j]; c = j; }
    return { bytes: g, color: mc ? 8 | (c & 7) : c };
  }

  // Finds a glyph's screen code, reusing an identical glyph or claiming a blank slot at $40+.
  // Mutates `chars`; code() returns -1 when no blank slot is left.
  function makeAllocator(chars) {
    const lookup = new Map(), free = [], allocated = [];
    for (let i = 0x40; i < 256; i++) {
      if (isZero(chars[i])) free.push(i);
      else if (!lookup.has(keyOf(chars[i]))) lookup.set(keyOf(chars[i]), i);
    }
    for (let i = 0; i < 0x40; i++) if (!lookup.has(keyOf(chars[i]))) lookup.set(keyOf(chars[i]), i);
    lookup.set(keyOf(new Uint8Array(8)), 0x20);
    return {
      allocated, freeTotal: free.length,
      code(g) {
        const k = keyOf(g);
        let idx = lookup.get(k);
        if (idx === undefined && free.length) {
          idx = free.shift(); chars[idx] = Uint8Array.from(g); lookup.set(k, idx); allocated.push(idx);
        }
        return idx === undefined ? -1 : idx;
      },
    };
  }
  function nearestGlyph(chars, g) {
    let best = 0x20, bd = 99;
    for (let j = 0; j < 256; j++) {
      let d = 0;
      for (let y = 0; y < 8; y++) d += popcount(chars[j][y] ^ g[y]);
      if (d < bd) { bd = d; best = j; }
    }
    return best;
  }

  // Turn the raster into screen codes + colours. Cells that match an existing glyph reuse it;
  // anything else is written into a free (blank) slot at $40+; overflow falls back to the nearest glyph.
  function composite(base, raster, map) {
    const mc = map.mode === 'mc';
    const chars = base.map(g => Uint8Array.from(g));
    const alloc = makeAllocator(chars);
    let overflow = 0;
    const screen = new Uint8Array(1000), color = new Uint8Array(1000);
    for (let cy = 0; cy < 25; cy++) for (let cx = 0; cx < 40; cx++) {
      const { bytes, color: c } = encodeCell(raster, W, cx * 8, cy * 8, mc);
      let idx = alloc.code(bytes);
      if (idx < 0) { idx = nearestGlyph(chars, bytes); overflow++; }
      screen[cy * 40 + cx] = idx;
      color[cy * 40 + cx] = c;
    }
    const { allocated, freeTotal } = alloc;
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

  // ----------------------------------------------------------------- tiles
  // A tile is a w x h block of cells, each { c: screen code, k: colour RAM value }.
  // Starter tiles are drawn with the map renderer's own block/object code, so they match it exactly.
  function starterTiles(chars, mode, persp = 'iso') {
    const mc = mode === 'mc', alloc = makeAllocator(chars);
    const make = (name, w, h, draw) => {
      const stride = w * 8, n = stride * h * 8;
      const r = { ink: new Uint8Array(n), col: new Uint8Array(n), obj: new Uint8Array(n) };
      draw((x, y, v, c, isObj) => {
        if (x < 0 || y < 0 || x >= stride || y >= h * 8) return;
        const i = y * stride + x;
        r.ink[i] = +v; if (c >= 0) r.col[i] = c; r.obj[i] = isObj ? 1 : 0;
      });
      const cells = [];
      for (let cy = 0; cy < h; cy++) for (let cx = 0; cx < w; cx++) {
        const { bytes, color } = encodeCell(r, stride, cx * 8, cy * 8, mc);
        const code = alloc.code(bytes);
        cells.push({ c: code < 0 ? nearestGlyph(chars, bytes) : code, k: color });
      }
      return { name, w, h, cells };
    };
    const mat = name => MATERIALS.find(m => m.name === name);
    const objects = () => OBJECTS.map(ob => make(ob.name, 2, 3, p => drawObject(p, ob, 0, 0, mc)));
    const blocks = (w, h, draw) => ['Grass', 'Stone', 'Brick'].map(m => make(`${m} block`, w, h, p => draw(p, mat(m))));
    const none = { N: -1, E: -1, S: -1, W: -1 };
    const view = (name, rows) => make(name, 20, 16, p => renderDungeon({ size: rows.length, mat: 1, x: 2, y: rows.length - 1, dir: 0, rows }, p, mc, 0, 0, false));
    if (persp === 'military') return [
      make('Grass floor', 2, 2, p => drawMilitaryBlock(p, 0, 0, mat('Grass'), mc, 0)),
      ...blocks(2, 3, (p, m) => drawMilitaryBlock(p, 0, 0, m, mc, 8)), ...objects(),
    ];
    if (persp === 'oblique') return [
      make('Grass floor', 2, 2, p => drawObliqueBlock(p, 0, 0, mat('Grass'), mc, 0, none)),
      ...blocks(2, 3, (p, m) => drawObliqueBlock(p, 0, 0, m, mc, 1, none)), ...objects(),
    ];
    if (persp === 'side') return [
      make('Grass ground', 3, 1, p => drawSideBlock(p, 0, 8, mat('Grass'), mc, false)),
      ...blocks(3, 3, (p, m) => drawSideBlock(p, 0, 8, m, mc, true)), ...objects(),
    ];
    if (persp === 'dungeon') return [
      view('Corridor', ['#####', '##.##', '##.##', '##.##', '##.##']),
      view('Door ahead', ['#####', '#####', '##D##', '##.##', '##.##']),
      view('Junction', ['#####', '##.##', '#...#', '##.##', '##.##']),
    ];
    return [
      make('Grass floor', 4, 2, p => drawBlock(p, 0, 0, mat('Grass'), mc, false)),
      make('Water floor', 4, 2, p => drawBlock(p, 0, 0, mat('Water'), mc, false)),
      make('Grass cube', 4, 4, p => drawBlock(p, 0, 0, mat('Grass'), mc, true)),
      make('Stone cube', 4, 4, p => drawBlock(p, 0, 0, mat('Stone'), mc, true)),
      make('Brick cube', 4, 4, p => drawBlock(p, 0, 0, mat('Brick'), mc, true)),
      ...OBJECTS.map(ob => make(ob.name, 2, 3, p => drawObject(p, ob, 0, 0, mc))),
    ];
  }

  function tilesAsm(tiles) {
    const out = ['; APEXSCII tiles — per tile: width, height, screen codes (row by row), then colour RAM values'];
    const used = new Set();
    tiles.forEach((t, n) => {
      let label = 'tile_' + (t.name.toLowerCase().replace(/[^a-z0-9]+/g, '_').replace(/^_|_$/g, '') || n);
      while (used.has(label)) label += '_';
      used.add(label);
      out.push(`${label}:`, `    .byte ${t.w},${t.h}`);
      for (let y = 0; y < t.h; y++) out.push('    .byte ' + t.cells.slice(y * t.w, y * t.w + t.w).map(c => hex(c.c)).join(','));
      for (let y = 0; y < t.h; y++) out.push('    .byte ' + t.cells.slice(y * t.w, y * t.w + t.w).map(c => hex(c.k & 15)).join(','));
    });
    return out.join('\n') + '\n';
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
    isMCSlot, screenRGB, statusRows, starterTiles, tilesAsm, buildDefault, layout, charsetKey, PERSPECTIVES, DIRS, DIR_NAMES, dungeonAt, defaultDungeon, defaultMap, renderScene, composite, flatten, charsetPrg, mapPrg, charsetAsm, mapAsm, hex,
  };
});
