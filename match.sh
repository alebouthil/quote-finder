#!/bin/bash

quote="$1"
name="$2"
movie=$3

if [[ $movie -eq 1 ]]
then
	rg -rnw "$quote" ./movies/"$name"/*.srt | head -1
else
	rg -rnw "$quote" ./series/"$name"/*.srt | head -1
fi
