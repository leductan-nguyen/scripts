Collections of conveniant scripts
1. Aliases (linux, git)
2. Check for undervoltage/throttling issues on RPi

Useful packages for newly installed system (specially for Debian-based system)
1. Install ZSH via official repository
2. Install oh-my-zsh : https://ohmyz.sh/#install (choose ZSH as default shell)
3. Add custom script in this repo
4. Add useful plugin for ZSH by modifying .zshrc on home directory (maybe needed to install git first)
    1. git
    2. zsh-autosuggestions (need to clone plugin first in oh-my-zsh custom plugin)
    3. aliases
    4. zsh-docker-aliases (need to clone plugin first in oh-my-zsh custom plugin)
5. Fix Home End key bug in Zsh, add these lines to .zshrc  
    bindkey  "^[[H"   beginning-of-line  
    bindkey  "^[[F"   end-of-line  
    bindkey  "^[[3~"  delete-char
6. Add custom color for zsh-autosuggestions in .zshrc
   
   `# Suggestion Highlight Style
   ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#525252"`
