#!/bin/bash

# Return timestamp of input line, sourced from movie and tv subtitles
# Usage: $ match.sh "line" "media name" "is-movie" (bool)

quote="$1"
name="$2"
movie=$3

if [[ $movie -eq 1 ]]
then
	term="$(rg -C 3 "$quote" ./movies/"$name"/*.srt | head | grep -e "-->")"
else
	term="$(rg -C 3 "$quote" ./series/"$name"/*.srt | head | grep -e "-->")"
fi

awk -F , '{print $1}' <<< "${term}"
