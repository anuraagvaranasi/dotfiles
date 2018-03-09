#!/bin/bash

#Quick script to install dotfiles

for file in .[^.]*
do
	#ignore certain files you dont want to link
	if [[ $file == ".git" || $file == ".install.sh.swp" ]] 
	then
		continue
	fi

	#first removes old links if they exist to update
	#just gives an error msg if file doesnt exist
	#but this won't affect installation at all so redirect to dev/null
	rm /home/$USER/$file 2> /dev/null 
	ln -s `pwd`$file /home/$USER/$file

done
