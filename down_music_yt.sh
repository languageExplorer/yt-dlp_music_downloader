#!/bin/bash

BOLDBLUE="\033[1;34m"
RESET="\033[0m"

while true; do
	echo -e -n "${BOLDBLUE}Link:${RESET} "
	read link
	
	if [ $link == "exit" ]; then
		exit
	fi
	
	echo -e -n "${BOLDBLUE}Artist:${RESET} "
	read artist
	
	echo -e -n "${BOLDBLUE}Song name:${RESET} "
	read name
	
	yt-dlp -f bestaudio -x --audio-format mp3 -o ~/Music/songs/"$artist - $name" $link > /dev/null

done
