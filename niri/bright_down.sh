#!/bin/bash
brightnessctl -e4 -n2 set 5%- && notify-send -h string:x-dunst-stack-tag:brightness -h int:value:$(brightnessctl -m | awk -F, '{print substr($4,1,length($4)-1)}') "Brightness" "$(brightnessctl -m | awk -F, '{print substr($4,1,length($4)-1)}')%"
