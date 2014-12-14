#!/usr/bin/env bash

# Since awm still doesn't support bundle installing, this is a workaround to
# install all the workflows "at once".
#
# Note that before continuing to the next workflow you must confirm the installation
# on the Alfred import window

WORKFLOWS=(
	carlosnz.timezones
	com.farrell.pkgman.alfredworkflow
	com.fniephaus.homebrew
	com.hackademic.ka_torrents
	com.kopepasah.google-url-shortener
	com.spr.translate
	designandsuch.alfred.units
	florian.down
	jw.randomopener
	jw.reminders
	pro.elms.paul.speedtest
	tylereich.colors
)

for (( i = 1 ; i <= ${#WORKFLOWS[@]} ; i++ )) do

	awm install ${WORKFLOWS[$i]}

	if [ "$i" -lt "${#WORKFLOWS[@]}" ]; then
		echo "Press any key to continue..."
		read -n 1
	fi

done
