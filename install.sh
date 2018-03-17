#!/bin/bash

#Quick script to install dotfiles

for file in .[^.]*
do
	#ignore certain files you dont want to add
	if [[ $file == ".git" || $file == "*.swp" ]] 
	then
		continue
	fi

	#first removes old files if they exist to update
	#just gives an error msg if file doesnt exist
	#but this won't affect installation at all so redirect to dev/null
	rm /home/$USER/$file 2> /dev/null 
	cp $file /home/$USER/$file

done

