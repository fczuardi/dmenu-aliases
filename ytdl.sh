#! /bin/bash

# download a video from the web and plays it
# if no url is given, uses the clipboard value of the common selection

source ~/personalvars.sh #my personal variables
WEB_VIDEOS_FOLDER=${WEB_VIDEOS_FOLDER:=~/Videos/}
PREFERRED_VIDEO_FORMAT=${PREFERRED_VIDEO_FORMAT:="webm/mp4"}
URL=$1
CLIPBOARD=`xclip -o -selection common`
URL=${URL:=$CLIPBOARD}

echo "the URL is $URL"

FILENAME=`youtube-dl -f $PREFERRED_VIDEO_FORMAT --get-filename $URL`

cd "$WEB_VIDEOS_FOLDER"
youtube-dl -f $PREFERRED_VIDEO_FORMAT $URL
echo $FILENAME
mplayer "`echo $FILENAME`"
