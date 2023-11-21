# Bspwm

<img src=https://github.com/Tharun-DV/Bspwm/blob/main/bspwm/screenshot.png>

# Requirements

## Programs:
- bspwm
- sxhkd
- polybar
- Rofi
- alacritty
- dmenu


## Fonts:
- JetBrainsMono Nerd Font ( Install Regular And Medium Font )
- Font-awesome
- NotoMonoNerd Font

# Setup

## Setting bspwm config and polybar config

```
mkdir $HOME/bsp
git clone https://github.com/Tharun-DV/Bspwm.git $HOME/Desktop/bsp
cp -r $HOME/Desktop/bsp/bspwm $HOME/.config/
cd $HOME/.config/bspwm/
chmod +x autostart.sh bin/* bspwmrc polybar/bin/* sxhkd/*
```
## setting nvchad config

[NvChad](https://nvchad.github.io/)

### Backup old nvim-comfig and installing nvchad

```
mv ~/.config/nvim ~/.config/NVIM.BAK
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

### Removing old configs

```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## ESSENTIAL KEYMAPS
- alacritty --> Super + return
- rofi --> super + f11


## CREDIT 
### [ARCOLINUX](https://arcolinux.com/)
### [BrodieRobertson](https://github.com/BrodieRobertson)
