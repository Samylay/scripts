#!/bin/bash

#Compile C code, run it, then delete object file(s) 
object = basename $1.c .c
# echo object
gcc $object -o $1
./object 
rm object