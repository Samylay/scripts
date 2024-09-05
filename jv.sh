#!/bin/bash

object = basename $1.java .java
javac $1
java object
rm *.class