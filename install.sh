#!/bin/bash

# processor type
PROCESSOR_ARCHITECTURE=$(uname -p)
echo 'found processor architecture:' $PROCESSOR_ARCHITECTURE

# get files
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$PROCESSOR_ARCHITECTURE.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

# cleanup
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# restart console
echo 'run "source ~/.bashrc", "source ~/.zshrc", or restart your terminal to activate changes.'
