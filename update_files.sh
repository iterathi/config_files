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
    echo "Alacritty: copying alacritty.conf"
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
    echo "nvim: directory found, skipping"
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
