#!/bin/sh

if [ "$1" == "help" ]
then
	printf "\nset-wallpaper.sh by Jack Mechem\nhttps://github.com/JackMechem\n\n\n Usage: set-wallpaper [ Directory/to/wallpaper.jpg | help | install ]\n\n"
	printf "help - Help page\ninstall - Copies the script into /usr/local/bin (requires sudo)\n\n\n"
	exit
fi

if [ "$1" == "install" ]
then
	sudo cp set-wallpaper.sh /usr/local/bin/set-wallpaper
	exit
fi

wallpaper="$1"

wal -i "$wallpaper" -n &

monitorcount=`xrandr --query | grep -ow 'connected' | wc -l`

for((i=0;i<=$(($monitorcount-1));i++)) do
	nitrogen --set-zoom-fill --head="$i" "$wallpaper" --save
done
exit
