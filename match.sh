#!/bin/bash

quote="$1"
name="$2"
movie=$3

if [[ $movie -eq 1 ]]
then
	rg "$quote" ./movies/"$name"/*.srt | head -1
else
	rg "$quote" ./series/"$name"/*.srt | head -1
fi
