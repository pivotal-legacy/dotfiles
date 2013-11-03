INTRODUCTION
------------

Here are a handful of dotfiles set up to my taste.

INSTALLATION
------------

Install with the following commands:

``` bash
# change to the home directory
cd

# clone into ~/dotfiles directory
git clone http://github.com/enocom/dotfiles.git

# backup old bash profile if necessary
mv .bash_profile .bash_profile_old

# setup symbolic links
ln -s dotfiles/bash_profile ~/.bash_profile
```
