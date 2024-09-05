#!/bin/bash

# Check if a commit message is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commit_message>"
    exit 1
fi

# Add all files in the current directory and its subdirectories
git add .

# Commit with the provided message
git commit -m "$1"

# Push to the repository, handling simple problems
git push

# Check the exit status of the previous command
if [ $? -eq 0 ]; then
    echo "Push successful."
else
    echo "Error: Push failed. Please check your Git configuration and repository settings."
    exit 1
fi
