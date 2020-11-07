#!/bin/sh

killall -q polybar

logdir=${XDG_CACHE_HOME:-$HOME/.cache}/polybar
logfile=$logdir/main.log

mkdir -p $logdir

echo "[$(date)] --- START POLYBAR [main] ---" | tee -a $logfile
polybar main >> $logfile 2>&1 & disown
echo "[$(date)] --- LAUNCHED POLYBAR [main] ---" | tee -a $logfile
