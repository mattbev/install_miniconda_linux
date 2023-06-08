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
if [ $MACHINE_OS = "Linux" ]; then
    CONFIG_FILE=.bashrc
elif [ $MACHINE_OS = "MacOSX" ]; then
    CONFIG_FILE=.zprofile
else
    CONFIG_FILE=UNKNOWN
fi
echo "Place the following command in your user config file to add conda to your PATH:"
echo "COMMAND: export PATH=\"$USER_HOME/miniconda3/bin:\$PATH\""
echo "EXAMPLE WAY TO ADD IT: echo \"export PATH=\"$USER_HOME/miniconda3/bin:\$PATH\"\" >> $USER_HOME/$CONFIG_FILE"

# restart console
echo "Source your config file, e.g., \"source ~/.bashrc\", \"source ~/.zprofile\", or otherwise restart your terminal in order to activate changes."
