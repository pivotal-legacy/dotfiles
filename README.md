INTRODUCTION
------------

Here are a handful of dotfiles set up to my taste.

The repository here includes my current vim setup. I use [Vundle](https://github.com/gmarik/vundle) to manage plugins.

Currently the following vim plugins are installed:

* [Command-T](https://github.com/wincent/Command-T)
* [NERD Tree](https://github.com/scrooloose/nerdtree)
* [snipMate](https://github.com/msanders/snipmate.vim)
* [vim-rails](https://github.com/tpope/vim-rails)
* [Sparkup](https://github.com/rstacruz/sparkup)


INSTALLATION
------------

Install with the following commands:

``` bash
# change to the home directory
cd

# clone into ~/dotfiles directory
git clone http://github.com/enocom/dotfiles.git

# backup old vimrc, vim folder, and bash profile if necessary
mv .vimrc .vimrc_old
mv .vim .vim_old
mv .bash_profile .bash_profile_old

# setup symbolic links
ln -s dotfiles/vim/vimrc ~/.vimrc
ln -s dotfiles/vim ~/.vim
ln -s dotfiles/bash_profile ~/.bash_profile

# initialize and pull down Vundle plugin for vim
git submodule init
git submodule update
```

To complete the installation of the plugins managed by Vundle, open Vim and run:

```
:BundleInstall
```

NOTE ON VUNDLE INSTALLATION
---------------------------

Vundle, the Vim package manager included within this repository, is installed as a git submodule. For a screencast explaining the setup, see [episode 27](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) from [Vimcasts](http://vimcasts.org).
