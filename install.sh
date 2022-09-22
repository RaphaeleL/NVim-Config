#!/bin/bash

# Get the neovim Repo
git clone https://github.com/neovim/neovim.git ~/neovim

# Remove Previous Stuff 
sudo rm -rf ~/.config/nvim
sudo rm -rf ~/.local/bin/nvim
sudo rm -rf ~/.local/share/nvim/
sudo rm -rf ~/.cache/nvim

# Install
cd ~/neovim
git checkout v0.7.2 
make CMAKE_BUILD_TYPE=Release
sudo make install

# Remove the Neovim Repo
rm -rf ~/neovim

# Get the Neovim Config
git clone https://github.com/RaphaeleL/nvim.git ~/config/nvim

# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create an Executable 
cp navim ~/.local/bin/

echo "Type 'navim' in the Terminal. Now you should be in Neovim :D yeey. Start install all the Plugins with 'PackerInstall'."
