#!/bin/bash

echo -e "\033[0;32mBuilding site in docs folder...\033[0m"

rm -rf docs

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

