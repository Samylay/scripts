#!/bin/sh
if [ $# -eq 0 ]; then
    echo "Usage: $0 <C filename without extension>"
    exit 1
fi
object="$1"
gcc -std=c99 -Wall -Wextra -Werror -Wvla -pedantic -o "$object" "$object".c
./"$object"