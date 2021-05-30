pid="$(ps -u $USER -o pid,%cpu,%mem,comm | sort -b -k2 -r | sed -n '1!p' | dmenu -i -l 10 | awk '{print $1}')"

kill -9 $pid
