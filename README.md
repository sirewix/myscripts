# Miscellaneous scripts
Some random useful scripts I wrote over the years

## [`cless`](./cless)
Run command in a pager without stdout and stderr mixing
Useful for commands output of which exceeds terminal buffer
or for terminals without scrolling, like `st`
```sh
cless cargo build
```

**Dependencies:** `less`, `unbuffer`

## [`clipb`](./clipb)
Shortcut for inserting data from clipboard:
```sh
somecmd $(clipb)
somecmd `clipb`
```

**Dependencies:** `xclip`

## [`cut-stencil`](./cut-stencil)
Script for cutting a picture into a grid to be printed on A4 (297x210mm) paper to be used for creating stencils for street art.
For example, to prepare a `pic.png` image to be made into a stencil for a 3x2m wall:
```sh
cut-stencil pic.png 3000x2000
```

**Dependencies:** `imagemagick`

## [`difftree`](./difftree)
Git diff as a tree of files
```sh
difftree HEAD~
```

**Dependencies:** `git`, `tree`

## [`fzft`](./fzft)
Run `fzf` in `st` terminal window

**Dependencies:** `fzf`, `st`

## [`fzft-run`](./fzft-run)
`dmenu_run` but with `fzft`

**Dependencies:** `fzft`

## [`gendoc.sh`](./gendoc.sh)
Script for generating the README.md for this repo:
```sh
./gendoc.sh > README.md
```

**Dependencies:** `grep`, `sed`

## [`gitch`](./gitch)
Switch branches with fzf

**Dependencies:** `fzf`, `git`, `sed`

## [`gitmer`](./gitmer)
Merge branches quicker with `fzf`

**Dependencies:** `fzf`, `git`

## [`gitreb`](./gitreb)
Rebase branches quicker with `fzf`

**Dependencies:** `fzf`, `git`

## [`latexpng`](./latexpng)
Quickly create a PNG made with LaTeX. Useful for formulas.

**Dependencies:** `dvipng`, `imagemagick`, `latex`, `vim`

## [`mkenv`](./mkenv)
Take a snapshot of current environment, removing non-variables
```sh
mkenv .envrc
source .envrc
```

**Dependencies:** `grep`, `sed`

## [`pumlview`](./pumlview)
Preview plantuml files with `feh`

**Dependencies:** `feh`, `plantuml`

## [`whook`](./whook)
Use a hook file to rerun a command. Useful to trigger recompilation
```sh
whook .hook cargo build
```
Example of the vim binding triggering a hook
```vim
:nnoremap <F12> :call system('touch .hook')<cr>
```

**Dependencies:** `inotifywait`, `less`, `unbuffer`
