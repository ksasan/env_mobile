#!/bin/bash
echo "Setting up environment on a new machine !!"
curdir=`pwd`
targetdir=$(dirname $(readlink -e $0))	# Provides full directory path

file=".bash_aliases"
if [ -e ~/${file} ] ; then
	echo "Aliases ($file) already exists! not changing anything !"
else
	echo "(1) Setting up aliases script ($file) "
	ln -s ${targetdir}/${file} ~/${file}
fi
