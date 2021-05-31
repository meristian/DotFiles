ln -nfs ~/.DotFiles/.vimrc ~
ln -nfs ~/.DotFiles/.tmux.conf ~
ln -nfs ~/.DotFiles/.vim ~
ln -nfs ~/.DotFiles/.viminfo ~
tmux source-file ~/.tmux.conf
#sudo apt-get install python3-autopep8

pip3 install --user --upgrade neovim

# Then we have to do :PlugInstall
# Then go to .vim/Plugged/YouCompleteMe/ and run python3 install.py 


# Other programs

# Yabai
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew services start yabai 
brew services start skhd

