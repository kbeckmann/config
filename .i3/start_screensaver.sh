#/usr/bin/bash
SCREENSAVER_DIR=~/.i3/screensaver
INDEX_FILE=$SCREENSAVER_DIR/index

# increment counter
files=($SCREENSAVER_DIR/*.png)
typeset -i index=$(cat $INDEX_FILE)
files_num=${#files[@]}
index=$index+1
index=$((index % files_num))
file=${files[$index]}
echo $index > $INDEX_FILE

/usr/bin/i3lock -i $file

