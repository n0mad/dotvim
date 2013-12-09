dotvim
======

My vim config:
 - pathogen [managing vim plugins]
 - syntastick [syntax checking plugin for py/C++/...
 - quicktask [a simple TODO plugin]
 - spell [Eng/Ru]
 - various stuff [e.g., <= is shown as ≤ in py; color schemes, etc]
 
How to install:

cd ~
git clone http://github.com/n0mad/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
