dots
====
Prompt setup, alias files


Installing:
====
1. clone the repository inside ~/.dotfiles
cd ~
git clone git@github.com:tanviramin/dots.git .dotfiles


2. Set up bash
Add the following lines in ~/.bashrc
#tanvir: customized bash script
if [ -f ~/.dotfiles/bash/bashrc ]; then
    source ~/.dotfiles/bash/bashrc
fi

3. Set up tmux
a) Softlink the provided configuration file in home 
cd ~
ln -s .dotfiles/tmux/tmux.conf .tmux.conf

b) Add the following lines at the end of ~/.bash_profile
# auto start tmux
if [ -f "$HOME/.dotfiles/bash/tmux-autostart.sh" ]; then
  source "$HOME/.dotfiles/bash/tmux-autostart.sh"
fi

4. Set up vim
cd ~
ln -s .dotfiles/vim/vimrc .vimrc
ln -s .dotfiles/vim/dotvim .vim

