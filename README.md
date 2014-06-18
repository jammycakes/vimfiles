vimfiles
========

Yet another vimfiles directory (sigh...)

This one is set up to work on a variety of different environments, including Windows machines, Linux VMs, and more.
It uses [vundle](https://github.com/gmarik/Vundle.vim) for package management (Pathogen is so 2010...)


To install it:

    git clone --recurse-submodules https://github.com/jammycakes/vimfiles.git ~/.vim
    vim -C +PluginInstall +qa!
