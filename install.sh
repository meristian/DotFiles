ln -nfs ~/.DotFiles/lvim ~/.config
ln -nfs ~/.DotFiles/.tmux.conf ~

# Tmux 
tmux source-file ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.tmux.conf


pip3 install black
pip3 install jedi==0.16.0
sudo apt-get install python3-autopep8
