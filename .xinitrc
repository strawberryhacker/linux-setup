
# This for having a wallpaper
nitrogen --restore &

# This will make sure you can restart DWM with shift-mod-q
while true; do
	dwm >/dev/null 2>&1
done

# This will start DWM
exec dwm
