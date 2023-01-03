session=${1:-gameshell}

case $session in
hdmi )
	exec /usr/bin/aria2c --conf-path=/home/cpi/launcher/aria2.conf &
	feh --bg-center ~/launchergo/sysgo/gameshell/wallpaper/desktopbg.jpg
	cd ~/launchergo/
	exec ~/launchergo/app &
	exec ~/launchergo/load.sh &
	exec ~/launcher/sys.py/gsnotify/gsnotify-arm daemon &
#	exec /usr/bin/twm -f ~/launchergo/.twmrc
	exec ~/launchergo/dwm-mod
	;;
gameshell ) 
	exec /usr/bin/aria2c --conf-path=/home/cpi/launcher/aria2.conf &
	feh --bg-center ~/launchergo/sysgo/gameshell/wallpaper/loading.png
	cd ~/launchergo/
	exec ~/launchergo/app &
	exec ~/launchergo/load.sh &
	exec ~/launcher/sys.py/gsnotify/gsnotify-arm &
#	exec awesome -c ~/launchergo/awesome/rc.lua
	exec ~/launchergo/dwm-mod -w
	;;
*) 
	exec $1;;
esac

