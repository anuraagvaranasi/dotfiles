#!/bin/bash


for file in .[^.]*
do
	rm /home/$USER/$file
	ln -s `pwd`$file /home/$USER/$file

done
