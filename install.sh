#!/bin/bash

# operating system
UNAME_OUT="$(uname -s)"
case "${UNAME_OUT}" in
    Linux*)     MACHINE_OS=Linux;;
    Darwin*)    MACHINE_OS=MacOSX;;
    *)          echo "UNKNOWN OS" && exit 1
esac

# processor type
PROCESSOR_ARCHITECTURE=$(uname -m)

# get files
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-$MACHINE_OS-$PROCESSOR_ARCHITECTURE.sh -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -p ~/miniconda3

# cleanup
rm /tmp/miniconda.sh

# add to path
USER_HOME=$(cd ~ && pwd)
echo "Run the corresponding conda initialization for your shell environment:"
echo "$USER_HOME/miniconda3/bin init"

# restart console
echo "Source your config file, e.g., \"source ~/.bashrc\", \"source ~/.zprofile\", etc., or otherwise restart your terminal in order to activate changes."
