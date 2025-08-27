#!/bin/sh

if [ -z "$1" ]; then
    echo "Error: Please provide a directory name"
    exit 1
fi

if [ -d "$1" ]; then
    echo "Error: Directory '$1' already exists"
    exit 1
fi

mkdir "$1" || exit 1
cd "$1" || exit 1
