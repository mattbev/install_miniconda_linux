#!/bin/bash

# get files
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

# cleanup
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# restart console
source ~/.bashrc
source ~/.zshrc
echo 'run "source ~/.bashrc", "source ~/.zshrc", or restart your terminal to activate changes.'
