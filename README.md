# Configuration

* Bash aliases
* Git
* Vim
* Tmux

Color themes from [Tinted-theming](https://github.com/tinted-theming/base16-shell), (gallery found [here](https://tinted-theming.github.io/base16-gallery/)).

To disable the beep in bash you need to uncomment (or add if not already there) the line "set bell-style none" in your /etc/inputrc file.

To disable the beep and the visual bell also in vim you need to add the following to your ~/.vimrc file:

```vim
set visualbell
set t_vb=
```

To disable the beep also in less (i.e. also in man pages and when using "git diff") you need to add export LESS="$LESS -R -Q" in your ~/.profile file.

Run this in the terminal to remove dir background color for LS_COLORS:

```bash
$ dircolors -p | sed 's/;42/;01/' > ~/.dircolors
```
