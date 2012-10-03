INTRODUCTION
------------

Here are a handful of dotfiles setup to my taste, including my current setup of vim with some useful plugins.

INSTALLATION
------------

Install with the following commands:

``` bash
# change to the home directory
cd

# clone into ~/dotfiles directory
git clone http://github.com/commandercoriander/dotfiles.git

# setup symbolic links
ln -s dotfiles/vim/vimrc ~/.vimrc
ln -s dotfiles/vim ~/.vim
ln -s dotfiles/bash_profile ~/.bash_profile

# initialize and pull down submodule plugins for vim
git submodule init
git submodule update
```

GIT SUBMODULES FOR VIM PLUGINS
------------------------------

The Vim plugins included within this repository are installed using git submodules. For a screencast explaining the setup, see [episode 27](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) from [Vimcasts](http://vimcasts.org).

Install additional plugins with the following commands:

``` bash
cd ~/dotfiles/vim
git submodule add http://github.com/address_of_new_plugin_goes_here
git add .
git commit -m "Install new_plugin_name as a submodule"
```

UPGRADE PLUGINS
---------------

To upgrade all installed plugins, run the following:

``` bash
git submodule foreach git pull origin master
```

Alternatively, to upgrade only a single plugin, navigate to its top level directory within the ```bundle``` directory and ```pull``` from ```origin```.

``` bash
cd ~/dotfiles/vim/bundle/some_plugin
git pull origin master
```
