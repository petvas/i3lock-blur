#!/bin/bash
TMPBG=/tmp/screen.png
DIR=$(dirname "$(realpath $0)")
LOCK=$DIR/lock.png
TROLL=$DIR/troll.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
BLUR_RATIO='5:1'

ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $TROLL -filter_complex "boxblur=$BLUR_RATIO,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG -loglevel quiet
SDL_VIDEO_FULLSCREEN_HEAD=1 i3lock -i $TMPBG
rm $TMPBG
