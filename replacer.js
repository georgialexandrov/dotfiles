const fs = require('fs');
let arg = process.argv[2] || '.gitconfig';

const config = require(`${process.env.HOME}/.config/dotfiles/config.json`)

var data = fs.readFileSync(`./${arg}`,"utf8");
console.log(eval('`'+data+'`'))
