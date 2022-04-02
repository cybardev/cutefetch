# cutefetch

Cute little sysinfo fetch script for use in screenshots.

> This script works on both Linux and Mac OS systems. Enjoy~ :3

A "fork" of [elenapan](https://github.com/elenapan)'s [bunnyfetch](https://github.com/elenapan/dotfiles/blob/master/bin/bunnyfetch) script.
Uses improvements from [strafe/bunnyfetch](https://github.com/strafe/bunnyfetch/) and adds Mac OS compatibility

### Install

-   Place the fetch script somewhere on your `$PATH` (I use `$HOME/.local/bin/`)
-   Make it executable by running `chmod a+x ./cutefetch` in the directory it is located

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
        -k, --kitty: show the kitty ascii art with sysinfo
        -b, --bunny: show the bunny ascii art with sysinfo
        -p, --puppy: show the puppy ascii art with sysinfo
        -s, --simple: show sysinfo with no ascii art
        -v, --version: print the version number
        no option: same as -k, --kitty
        unkown option: print this help message
                       and return status code 1

    [EYE_SELECTOR] (optional):
        (numbers from 0 to 13)
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
