// Builds every APEXSCII character set (each perspective, hi-res and multicolor) into ./out:
//   node build.js
// Per set: .bin (2K raw), -charset.prg (loads to $3800), .asm (annotated) and -specimen.prg
// (a runnable sheet showing all 256 glyphs).
const fs = require('fs');
const path = require('path');
const APEXSCII = require('./apexscii.js');

const out = path.join(__dirname, 'out');
fs.mkdirSync(out, { recursive: true });

for (const persp of Object.keys(APEXSCII.PERSPECTIVES)) for (const mode of ['hires', 'mc']) {
  // Isometric keeps its original file names; the other views are tagged with the perspective.
  const tag = (persp === 'iso' ? '' : '-' + persp) + (mode === 'mc' ? '-mc' : '');
  const { glyphs, names, regions } = APEXSCII.buildDefault(mode, persp);
  const files = {
    [`apexscii${tag}.bin`]: APEXSCII.flatten(glyphs),
    [`apexscii${tag}-charset.prg`]: APEXSCII.charsetPrg(glyphs),
    [`apexscii${tag}.asm`]: APEXSCII.charsetAsm(glyphs, names),
    [`apexscii${tag}-specimen.prg`]: APEXSCII.specimenPrg(persp, mode),
  };
  for (const [name, data] of Object.entries(files)) {
    fs.writeFileSync(path.join(out, name), typeof data === 'string' ? data : Buffer.from(data));
  }
  const free = regions.find(r => r.name === 'free');
  console.log(`${(persp + ' ' + mode).padEnd(16)} ${Object.keys(files).length} files · free slots ${APEXSCII.hex(free.from)}-$FF`);
}
