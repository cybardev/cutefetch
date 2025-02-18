# cutefetch

## Tiny coloured fetch script with cute little animals

> [!NOTE]
> This script works on both Linux and Mac OS systems. Enjoy~ :3

A fork of [elenapan](https://github.com/elenapan)'s [bunnyfetch](https://github.com/elenapan/dotfiles/blob/feb0452d5ed2ab1a49aada4c9c46cf3f78c18094/bin/bunnyfetch) script.
Uses improvements from [strafe/bunnyfetch](https://github.com/strafe/bunnyfetch/blob/0283d355928df7aafd1d92607a3e452417246fd0/bunnyfetch) and adds Mac OS compatibility.

<img width="245" alt="image" src="https://user-images.githubusercontent.com/50134239/161402429-2561a87a-3a89-42d4-ad7c-cefe4ef62fa2.png">

### Install

-   Place the fetch script somewhere on your `$PATH` (I use `$HOME/.local/bin/`)
-   Make it executable by running `chmod +x ./cutefetch` in the directory it is located
-   Use a [NerdFont](https://www.nerdfonts.com/) with your terminal to display glyphs properly

### Usage

After installation, run `cutefetch` in the terminal.

Command line arguments can be passed to specify the animal and eye style.

#### Output of `cutefetch -h`

```
Cutefetch - Tiny coloured fetch script to display sysinfo

USAGE: cutefetch [-m MODE] [-e EYES] [-r] [-v] [-h]

    [MODE]:
        cat, kitty            : show kitty ascii art with sysinfo
        catfull, cat2, kitty2 : show kitty ascii art with sysinfo (full body)
        bunny, rabbit         : show bunny ascii art with sysinfo
        dog, doggo, doggy     : show doggy ascii art with sysinfo
        penguin, pengu, pingu : show penguin ascii art with sysinfo
        minimal, simple       : show sysinfo with no ascii art
        none, noglyph, text   : show sysinfo with text only

    [EYES]:
        Numbers from 0 to 15:
            Selects eyes for cats, bunny, and dog

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
          or · · (doggy)

    [-r]            : use randomized ascii art
    [-v]            : print the version number
    [-h]            : print this help message
    [no option]     : same as: cutefetch -m cat -e 6
    [unkown option] : print this help message
                      and return status code 1
```

### Screenshots

![desktop](https://imgur.com/tX8Fqt4.png)

### Credits
- Randomization of ascii art suggested by [Westofer](https://github.com/westofer)
- Thanks to our [contributors](https://github.com/cybardev/cutefetch/graphs/contributors) for code and ideas

### Links:

-   [original script](https://github.com/elenapan/dotfiles/blob/master/bin/bunnyfetch)
-   [elenapan/dotfiles](https://github.com/elenapan/dotfiles/)
-   [strafe/bunnyfetch](https://github.com/strafe/bunnyfetch/)
-   [cybardev/cutefetch-mac](https://github.com/cybardev/cutefetch-mac/)
