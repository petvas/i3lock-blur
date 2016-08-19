# i3lock-blur

simplest i3lock blur script only requirements is `ffmpeg`

##simple usecase:

1. put lock.png and lock.sh to the home folder
2. edit `lock.sh line4` for you diplay resolution
3. chmode +x lock.sh
4. add i3 config: `bindsym $mod+q exec ~/lock.sh` to bind lock to `mod+q`
