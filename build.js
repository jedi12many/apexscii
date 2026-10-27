// Builds every APEXSCII character set (each perspective, hi-res and multicolor) into ./out:
//   node build.js
// Per set: .bin (2K raw), -charset.prg (loads to $3800), .asm (annotated) and -specimen.prg
// (a runnable sheet showing all 256 glyphs). The classic sets go in out/; each other theme gets
// out/themes/<theme>/ with the same file names.
const fs = require('fs');
const path = require('path');
const APEXSCII = require('./apexscii.js');

for (const theme of Object.keys(APEXSCII.THEMES)) {
  const out = theme === 'classic' ? path.join(__dirname, 'out') : path.join(__dirname, 'out', 'themes', theme);
  fs.mkdirSync(out, { recursive: true });
  for (const persp of Object.keys(APEXSCII.PERSPECTIVES)) for (const mode of ['hires', 'mc']) {
    // Isometric keeps its original file names; the other views are tagged with the perspective.
    const tag = (persp === 'iso' ? '' : '-' + persp) + (mode === 'mc' ? '-mc' : '');
    const { glyphs, names, regions } = APEXSCII.buildDefault(mode, persp, theme);
    const files = {
      [`apexscii${tag}.bin`]: APEXSCII.flatten(glyphs),
      [`apexscii${tag}-charset.prg`]: APEXSCII.charsetPrg(glyphs),
      [`apexscii${tag}.asm`]: APEXSCII.charsetAsm(glyphs, names),
      [`apexscii${tag}-specimen.prg`]: APEXSCII.specimenPrg(persp, mode, theme),
    };
    for (const [name, data] of Object.entries(files)) {
      fs.writeFileSync(path.join(out, name), typeof data === 'string' ? data : Buffer.from(data));
    }
    const free = regions.find(r => r.name === 'free');
    console.log(`${(theme + ' ' + persp + ' ' + mode).padEnd(24)} ${Object.keys(files).length} files · free slots ${APEXSCII.hex(free.from)}-$FF`);
  }
}
