# my_vim: As suggested on vimcast #27
# http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
# It contains my ~/.vim directory with pathogen and all other vim plugins as git submodules.
# Just git clone this in your ${HOME}

# Do the following to link .vimrc and .gvimrc:
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# To update all plugin submodules, do this:
cd ~/.vim
git submodule foreach git pull origin master
