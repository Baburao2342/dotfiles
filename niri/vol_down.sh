#!/bin/bash
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && notify-send -h string:x-dunst-stack-tag:volume -h int:value:$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%d", $2*100}') "Volume" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%d%%", $2*100}')"
