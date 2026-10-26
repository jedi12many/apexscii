// Builds the default APEXSCII files (hi-res and multicolor) into ./out:  node build.js
const fs = require('fs');
const path = require('path');
const APEX = require('./apexscii-core.js');

const out = path.join(__dirname, 'out');
fs.mkdirSync(out, { recursive: true });

for (const mode of ['hires', 'mc']) {
  const tag = mode === 'mc' ? '-mc' : '';
  const { glyphs, names } = APEX.buildDefault(mode);
  const map = Object.assign(APEX.defaultMap(), { mode });
  const comp = APEX.composite(glyphs, APEX.renderScene(map), map);

  const files = {
    [`apexscii${tag}.bin`]: APEX.flatten(glyphs),
    [`apexscii${tag}-charset.prg`]: APEX.charsetPrg(glyphs),
    [`apexscii${tag}.asm`]: APEX.charsetAsm(glyphs, names),
    [`apexscii${tag}-demo.prg`]: APEX.mapPrg(comp.chars, comp.screen, comp.color, map),
    [`apexscii${tag}-demo-map.asm`]: APEX.mapAsm(comp.screen, comp.color),
  };
  for (const [name, data] of Object.entries(files)) {
    fs.writeFileSync(path.join(out, name), typeof data === 'string' ? data : Buffer.from(data));
    console.log(name.padEnd(28), (typeof data === 'string' ? Buffer.byteLength(data) : data.length) + ' bytes');
  }
  console.log(`${mode} demo: ${comp.allocated.length}/${comp.freeTotal} free slots used, ${comp.overflow} overflow cells\n`);
}
