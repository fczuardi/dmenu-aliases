#! /bin/bash
SEARCH_URL="https://duckduckgo.com/?q=`echo $@`"
#uzbl-browser "$SEARCH_URL"
chromium-browser --app="$SEARCH_URL"
