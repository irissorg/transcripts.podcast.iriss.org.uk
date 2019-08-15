#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

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

# Go To Public folder
cd docs
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
