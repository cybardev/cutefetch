# cutefetch

## Tiny coloured fetch script with cute little animals

> This script works on both Linux and Mac OS systems. Enjoy~ :3

A "fork" of [elenapan](https://github.com/elenapan)'s [bunnyfetch](https://github.com/elenapan/dotfiles/blob/master/bin/bunnyfetch) script.
Uses improvements from [strafe/bunnyfetch](https://github.com/strafe/bunnyfetch/) and adds Mac OS compatibility

<img width="245" alt="image" src="https://user-images.githubusercontent.com/50134239/161402429-2561a87a-3a89-42d4-ad7c-cefe4ef62fa2.png">

### Install

-   Place the fetch script somewhere on your `$PATH` (I use `$HOME/.local/bin/`)
-   Make it executable by running `chmod a+x ./cutefetch` in the directory it is located
-   It is recommended to use a [NerdFont](https://www.nerdfonts.com/) as your terminal font if the glyphs are not being displayed properly.

### Usage

After installation, run `cutefetch` in the terminal.

Command line arguments can be passed to specify the animal and eye style.

-   Valid animal arguments: --kitty, -k, --bunny, -b
-   Valid eye styles: integers from 0 to 13

Examples: `cutefetch --kitty 6`, `cutefetch -k 6`, `cutefetch` prints the default kitty.
`cutefetch --bunny 0`, `cutefetch -b 0`, `cutefetch -b`, etc. prints a bunny.

#### Output of `cutefetch --help`

```
Cutefetch - Tiny coloured fetch script to display sysinfo

USAGE: cutefetch [MODE] [EYE_SELECTOR]

    [MODE]:
        -h, --help: print this help message
        -k, --kitty: show kitty ascii art with sysinfo
        -k2, --kitty2: show kitty ascii art with sysinfo (2nd variant)
        -b, --bunny: show bunny ascii art with sysinfo
        -p, --puppy: show puppy ascii art with sysinfo
        -s, --simple: show sysinfo with no ascii art
        -v, --version: print the version number
        no option: same as -k, --kitty
        unkown option: print this help message
                       and return status code 1

    [EYE_SELECTOR] (optional):
        (numbers from 0 to 14)
         0:  . .
         1:  · ·
         2:  ^ ^
         3:  - -
         4:  ~ ~
         5:  * *
         6:  ^.^
         7:  -.-
         8:  ~.~
         9:  *.*
        10:  0.0
        11:  0 0
        12:  o o
        13:  o.o
        14:  ° o
        no/other number:
             ^.^ (kitty)
          or . . (bunny)
          or 0 0 (puppy)
```

### Extras

`cutefetch $(printf '-k\n-b\n-p' | shuf -n 1) $(shuf -i 1-13 -n 1)` prints a random animal with random face. Add this to your `.zshrc`, `.bashrc`, `config.fish`, etc. to spice up your shell. :3

_this wonderful idea of randomizing the animal and face was contributed by [Westofer](https://github.com/westofer)_

### Screenshots

![desktop](https://imgur.com/tX8Fqt4.png)

### Links:

-   [original script](https://github.com/elenapan/dotfiles/blob/master/bin/bunnyfetch)
-   [elenapan/dotfiles](https://github.com/elenapan/dotfiles/)
-   [strafe/bunnyfetch](https://github.com/strafe/bunnyfetch/)
-   [cybardev/cutefetch-mac](https://github.com/cybardev/cutefetch-mac/)
