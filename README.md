# Dotfiles

This dotfiles is built using [dotbare](https://github.com/kazhala/dotbare). Dotbare is aliased `config` per this `.zshrc`. Configurations can be added and commited using git commands including alias commands in `gitconfig`.


    config add -A

or

    config aa


    config commit -m "commit message"

or

    config c "commit message"


# System

### Window manager: i3

launch config `i3-config`

### terminal: Alacritty

launch config `term-config`

### dmenu rofi

launch with `$mod+d`
more [here](https://github.com/davatorium/rofi)

### bar: polybar

theme  `forest` 

launch config `bar-config`

### screenshots: flameshot

launch GUI `ss-gui`

screen shot from CLI: `ss`

### file manager

GUI: thunar via xfce4
terminal: `vifm`

### composition: picom

config in `./config/picom/picom.conf`

### Others

window system: x

font: Inconsolata Nerd Font Mono 

walpaper manager: nitrogen

autojump with `j`

## Shell

Shell is managed using oh my zsh. Plugins are: `archlinux`, `zsh-syntax-highlighting`, `zsh-autosuggestions`, `autojump` and `dotbare`.

zsh theme: `itchy` with custom config

## scripts and aliases

A custom bin folder is exported to `$PATH ` from `~/.config/scripts`.

### scripts

`t` shortcuts for tmux.
`caps_as_esc.sh` or `cae` for caps key to function as the esc key.
`connect-bluetooth.sh`. This is launched by `systemd` on boot to connect devices. New bluetooth devices to be added to this script. 
`clip`. clips first argument to the clipboard using `xclip`. Also aliased as `cpy`.

### aliases not yet mentioned

`git-config` launches `gitconfig`
`shel-config` launches `zshrc`
`vim-config` launches vim config folder
`src` source ``zshrc
