millsjb's dotfiles
===================

This repo is mostly meant to serve as a home for my development environment set-up, allowing for easy deployment on new machines. Use at your own risk!

Currently, my set-up is as follows: WSL -> Ubuntu - > bash shell -> zsh while using vim + tmux for development.

References
------------
- https://medium.com/@Andreas_cmj/how-to-setup-a-nice-looking-terminal-with-wsl-in-windows-10-creators-update-2b468ed7c326


Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone onto your laptop:

    git clone https://github.com/millsjb/dotfiles.git ~/dotfiles

Use symlink to install dotfiles into $home dir:

    $ ln -s /path/to/file /path/to/symlink

Vim set-up:
----------------------------

install plugins using Vundle:

    :PluginInstall
    
Zsh specific set-up:
----------------------------

