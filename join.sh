#!/bin/sh
#description    :Join separated audio and video files into a single one in the directory wheere is executed the script following the pattern filename.prefix.videoExtension and filename.audioExtension.
#usage          :sh join.sh
#notes          :Install ffmpeg to use this script.
#author         :rafe95
#=========================================================================

for FILE in *;
    do ffmpeg -i "${FILE%.*}.mp4" -i "${FILE%%.*}.mp3" -c:v copy -c:a copy "${FILE%%.*}.mixed.mkv";
done
