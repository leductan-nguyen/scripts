## Collections of conveniant scripts
1. Aliases (linux, git)
2. Dump a Postgres DB with compression
3. Check for undervoltage/throttling issues on RPi
4. Postman visualizer script

## Useful packages for newly installed system (specially for Debian-based system)
1. Install ZSH via official repository
2. Install [oh-my-zsh](https://ohmyz.sh/#install) (choose ZSH as default shell)
3. Add custom script in this repo (aliases.zsh)
4. Add useful plugins for ZSH by modifying .zshrc on home directory (maybe needed to install git first)
    1. git
    2. aliases
    3. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md) (need to clone plugin first in oh-my-zsh custom plugin)
    4. [zsh-docker-aliases](https://github.com/akarzim/zsh-docker-aliases) (need to clone plugin first in oh-my-zsh custom plugin)
5. Fix Home End key bug when using SSH, add these lines to .zshrc
   ```
   # Fix Home End key bug when using SSH
   bindkey  "^[[H"   beginning-of-line
   bindkey  "^[[F"   end-of-line
   bindkey  "^[[3~"  delete-char
   ```
7. Add custom color for zsh-autosuggestions in .zshrc
   ```
   # Suggestion Highlight Style
   ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#525252"
   ```
