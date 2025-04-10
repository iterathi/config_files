#!/usr/bin/bash

# check for extensions.txt file in current directory
if [ ! -f ./extensions.txt ]; then
    echo "No extensions.txt file found in current directory. Create one with 'code --list-extensions > extensions.txt'"
    exit 1
fi

cat extensions.txt | while read extension || [[ -n $extension ]];
do
    code --install-extension $extension --force
done