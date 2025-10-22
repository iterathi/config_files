#!/usr/bin/bash

# .Xresources
if [ ! -f ~/.Xresources ]; then
    # cp ~/.Xresources ./home/
    echo ".Xresources: not found, skipping"
else
    echo "Xresources: copying .Xresources"
    mkdir -p ./home/Xresources
    cp ~/.Xresources ./home/Xresources/.Xresources
fi

# .bashrc
if [ ! -f ~/.bashrc ]; then
    echo ".bashrc: not found, skipping"
else
    echo "bash: copying .bashrc"
    mkdir -p ./home/bash
    cp ~/.bashrc ./home/bash/.bashrc
fi

# .zshrc
if [ ! -f ~/.zshrc ]; then
    echo ".zshrc: not found, skipping"
else
    echo "zsh: copying .zshrc"
    mkdir -p ./home/bash
    cp ~/.zshrc ./home/bash/.zshrc
fi

# alacritty
if [ ! -f ~/.config/alacritty/alacritty.toml ]; then
    echo "alacritty.toml: not found, skipping"
else
    echo "Alacritty: copying alacritty.toml"
    mkdir -p ./.config/alacritty
    cp ~/.config/alacritty/alacritty.toml ./.config/alacritty/alacritty.toml
fi

# conky
if [ ! -f ~/.config/conky/conky.conf ]; then
    echo "conky.conf: not found, skipping"
else
    echo "Conky: copying conky.conf"
    mkdir -p ./.config/conky
    cp ~/.config/conky/conky.conf ./.config/conky/conky.conf
fi

# kitty
if [ ! -f ~/.config/kitty/kitty.conf ]; then
    echo "kitty.conf: not found, skipping"
else
    echo "Kitty: copying kitty.conf"
    mkdir -p ./.config/kitty
    cp ~/.config/kitty/kitty.conf ./.config/kitty/kitty.conf
fi

# nvim
if [ ! -d ~/.config/nvim ]; then
    echo "nvim: directory not found, skipping"
else
    echo "nvim: copying config directory"
    mkdir -p ./.config/nvim
    cp -r ~/.config/nvim ./.config/
fi

# vscodium
if [ ! -f ~/.config/VSCodium/User/settings.json ]; then
    echo "VSCodium: settings.json not found, skipping"
else
    echo "VSCodium: copying settings.json"
    mkdir -p ./vscode
    cp ~/.config/VSCodium/User/settings.json ./vscode/settings.json
fi

# hyprland
if [ ! -f ~/.config/hypr/hyprland.conf ]; then
    echo "hyprland: hyprland.conf not found, skipping all hyprland configs"
else
    echo "hyprland: copying hyprland.conf, keys.conf, style.conf"
    mkdir -p ./.config/hyprland/hypr
    cp ~/.config/hypr/hyprland.conf ./.config/hyprland/hypr/hyprland.conf
    cp ~/.config/hypr/keys.conf ./.config/hyprland/hypr/keys.conf
    cp ~/.config/hypr/style.conf ./.config/hyprland/hypr/style.conf
fi

# hypridle
if [ ! -f ~/.config/hypr/hypridle.conf ]; then
    echo "hypridle: hypridle.conf not found, skipping"
else
    echo "hypridle: copying hypridle.conf"
    mkdir -p ./.config/hyprland/hypr
    cp ~/.config/hypr/hypridle.conf ./.config/hyprland/hypr/hypridle.conf
fi

# hyprlock
if [ ! -f ~/.config/hypr/hyprlock.conf ]; then
    echo "hyprlock: hyprlock.conf not found, skipping"
else
    echo "hyprlock: copying hyprlock.conf"
    mkdir -p ./.config/hyprland/hypr
    cp ~/.config/hypr/hyprlock.conf ./.config/hyprland/hypr/hyprlock.conf
fi

# hyprpaper
if [ ! -f ~/.config/hypr/hyprpaper.conf ]; then
    echo "hyprpaper: hyprpaper.conf not found, skipping"
else
    echo "hyprpaper: copying hyprpaper.conf"
    mkdir -p ./.config/hyprland/hypr
    cp ~/.config/hypr/hyprpaper.conf ./.config/hyprland/hypr/hyprpaper.conf
fi

# hyprpanel
if [ ! -f ~/.config/hyprpanel/config.json ]; then
    echo "hyprpanel: config.json not found, skipping"
else
    echo "hyprpanel: copying config.json"
    mkdir -p ./.config/hyprland/hyprpanel
    cp ~/.config/hyprpanel/config.json ./.config/hyprland/hyprpanel/config.json
fi

# wofi
if [ ! -f ~/.config/wofi/config ]; then
    echo "wofi: config not found, skipping"
else
    echo "wofi: copying config, style.css"
    mkdir -p ./.config/hyprland/wofi
    cp ~/.config/wofi/config ./.config/hyprland/wofi/config
    cp ~/.config/wofi/style.css ./.config/hyprland/wofi/style.css
fi
