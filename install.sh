ln -nfs ~/.DotFiles/.vimrc ~
ln -nfs ~/.DotFiles/.tmux.conf ~
ln -nfs ~/.DotFiles/.vim ~
ln -nfs ~/.DotFiles/.viminfo ~
tmux source-file ~/.tmux.conf
mkdir ~/.config
mkdir ~/.config/nvim/
touch ~/.config/nvim/init.vim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" >> ~/.config/nvim/init.vim
echo "let &packpath=&runtimepath " >> ~/.config/nvim/init.vim
echo "source ~/.vimrc" >> ~/.config/nvim/init.vim

pip3 install black
pip3 install --user --upgrade neovim

# Install plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Then we have to do :PlugInstall
# Then go to .vim/Plugged/YouCompleteMe/ and run python3 install.py 
nvim -c ':PlugInstall' -c "q"  -c "wq" ~/.vimrc

sudo python3  ~/.vim/plugged/YouCompleteMe/install.py  


