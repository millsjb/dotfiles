millsjb's dotfiles
===================

This repo is mostly meant to serve as a home for my developer environment set-up, allowing for easy deployment on new machines. Use at your own risk!

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone onto your laptop:

    git clone https://github.com/millsjb/dotfiles.git ~/dotfiles

Use symlink to install dotfiles into $home dir:

    $ ln -s $home/ <LINK_NAME>

Vim set-up:
----------------------------

install plugins using Vundle:

    :PluginInstall
    
Zsh specific set-up:
----------------------------

