# Yabai
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd


ln -nfs ~/.DotFiles/yabai/ ~/.config/yabai
chmod +x ~/.config/yabai/yabairc


cd ~/
git clone git@github.com:koekeishiya/limelight.git
cd limelight
make
cp bin/limelight /usr/local/bin/limelight
cd ~/
ln -nfs ~/.DotFiles/limelight/ ~/.config/limelight
limelight --config ~/.config/limelight/limelightrc
# Python code formatter
brew install black
brew install tmux

pip3 install black
pip3 install pylint

# Enable instant switch between desktops

# System Preferences > Accessibility > Displays > Reduce motion

# Vim compabilities with plugins
brew install ripgrep


# Start services
brew services start yabai 
brew services start skhd
