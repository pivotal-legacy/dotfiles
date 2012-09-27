INSTALLATION
------------

Here are a handful of dotfiles setup to my taste. Install using symbolic links to make future update a breeze.

````
ln -s dotfiles/vim/vimrc ~/.vimrc

ln -s dotfiles/vim ~/.vim

ln -s dotfiles/.bash_profile ~/.bash_profile
````

Submodule Setup
---------------

To initialize the submodules for vim plugins, run the following commands:

```
git submodule init
git submodule update
```
