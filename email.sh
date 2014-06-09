#! /bin/bash
source ~/personalvars.sh #my personal variables
WEBMAIL_URI=${WEBMAIL_URI:=https://gmail.com}
uzbl-browser "$WEBMAIL_URI"
