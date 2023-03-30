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

---

> #### TODO(sss)
> - Install script
>   - Check if config folders exist - create them
>   - Add override checks - give the option to override or to keep
>   - Give option to install desktop environment configs
> - Add configs for desktop environment
>   - Add i3 config
>   - Add terminal emulator config
>   - Add bar config
>   - Add browser config
>  - tmux
>   - Custom key bindings
