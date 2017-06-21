if [[ -f "${HOME}/.Xmodmap" ]]; then
	xmodmap "${HOME}/.Xmodmap"
fi

if [[ -f "${HOME}/.Xresources" ]]; then
	xrdb -merge "${HOME}/.Xresources"
fi

exec i3
