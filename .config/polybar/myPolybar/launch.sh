#!/usr/bin/env bash

killall -q polybar

echo "" | tee -a /tmp/polybar1.log /tmp/polybar.log
polybar bar1 >> /tmp/polybar.log 2>&1 & 
