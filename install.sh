#!/bin/bash

# processor type
PROCESSOR_ARCHITECTURE=$(uname -m)

# get files
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$PROCESSOR_ARCHITECTURE.sh -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -p ~/miniconda3

# cleanup
rm /tmp/miniconda.sh

# restart console
echo 'run "source ~/.bashrc", "source ~/.zshrc", or restart your terminal to activate changes.'
