#!/usr/bin/env bash

killall -q polybar

echo "" | tee -a /tmp/polybar1.log /tmp/polybar.log
polybar bar1 >> /tmp/polybar.log 2>&1 &
polybar bar2 >> /tmp/polybar.log 2>&1 &
polybar bar3 >> /tmp/polybar.log 2>&1 &
polybar bar4 >> /tmp/polybar.log 2>&1 &
polybar bar5 >> /tmp/polybar.log 2>&1 &
polybar bar6 >> /tmp/polybar.log 2>&1 &
