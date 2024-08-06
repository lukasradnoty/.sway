Work in progress.

I use this repo as part of my dotfiles managed by [homeshick](https://github.com/andsens/homeshick).

This is a very customized setup open-sourced pretty much for inspiration purposes only. It is not meant to be downloaded and used blindly. If you want to hovewer, fork this repository and modify it to fit your specific setup. More in [Setup](#setup).

## Colorscheme

Implemented colorschemes:
- light
- dark

Colors are extracted from <https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua> with the only change being that in the light colorscheme I am using pure white #ffffff in foot terminal instead of the original #fafafa (bg0) of the nvim scheme.

Each colorscheme is its own git branch. To switch colorscheme:

```
git checkout light|dark
```

and reload sway.

### Dev note on git branches

There's no single main/master branch. All colorscheme branches are equal to a main branch and the only differences in code should be appearance settings.

Because the colorscheme branches all act as a "main" branch, every change has to be through a merge, no commit to main as there isn't one.

Every non-appearance change then has to be merged to all colorschcme branches.

```
git checkout light
git merge somechangebranch
git checkout dark
git merge somechangebranch
```

## Dependencies

Arch with AUR using yay:

```sh
yay -S --needed swayidle waylock mako wob light pamixer playerctl i3blocks rofi-emoji swayfx sysstat wtype checkupdates-with-aur
```

| package | note | repo |
|---|---|---|
checkupdates-with-aur | for yay i3blocks blocklet | AUR |
i3blocks | | official |
mako | notification daemon | official |
pamixer | | official |
playerctl | | official |
rofi-emoji | | official |
swayfx | sway with eye candy | AUR |
swayidle | | official |
sysstat  | for mpstat command in i3blocks cpu_usage blocklet | official |
waylock | | official |
wob | overlay progress bar | offficial |
wtype | for rofi-emoji | official |

## Setup

When setting on a new machine, you have to reconfigure:

- [ ] devices in ~/.config/sway/io
- [ ] `interface` variable in `~/.config/i3blocks/ethernet` and `~/.config/i3blocks/wifi`
- [ ] if you don't want plain color as a wallapaper, you can set a background image by copying or linking an image to `~/.local/share/background/sway/default`. This file is not tracked in this git repository, but the sway config uses it if it exists.

Note: This repo contains `~/.config/nvim/lua/local/` folder which my neovim configuration (separate repo) loads to set a matching colorscheme.