# Personal dotfiles
Contains a good part of my config files.

## Environment
- Editor: [NeoVim](https://github.com/neovim/neovim/wiki)
- Terminal multiplexer: [tmux](https://github.com/tmux/tmux/wiki)

## Installation
⚠️ The installation script may override existing configs ⚠️
```bash
git clone https://github.com/sansugranes/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```

## Comes with
### tmux-sessionizer script
This scripts allows for an awesome productivity:
- While in tmux, hit ```C-b-f``` to open a popup fuzzyfinder, finding all configured folder and opening the selected in a new tmux session (configured .dotfiles/.local/tmux-sessionizer.sh for personnal folders)
