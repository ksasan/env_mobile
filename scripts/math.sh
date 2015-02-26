#!/bin/bash

# Functions for math library !!1

h2d(){
  echo "ibase=16; $@"|bc
}
d2h(){
  echo "obase=16; $@"|bc
}

# One can also use inbuilt function printf as well example is as follows:
# $(printf "%d\n" 0xfff)
# printf "%x\n" 4095

