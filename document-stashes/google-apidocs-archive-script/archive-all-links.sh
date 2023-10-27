#!/bin/bash

LINK_DEPTH=1 #4
LINKS_LIST_FILE=base-links.txt
LINK_COUNT=$(cat $LINKS_LIST_FILE | wc -l | gsed -e 's/ //g')

for urlLink in $(cat $LINKS_LIST_FILE)
do
	echo "Archiving URL: $urlLink"
	httrack -v --ext-depth=$LINK_DEPTH $urlLink
done

