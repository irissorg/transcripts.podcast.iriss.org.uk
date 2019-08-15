#!/bin/bash

echo -e "\033[0;32mBuilding site in docs folder...\033[0m"

rm -rf docs

# Build the project. Ask whether to publish future dates
while true; do
    read -p "Publish future dates? (y/n)" yn
    case $yn in
        [Yy]* ) hugo -F;  break;;
        [Nn]* ) hugo; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
