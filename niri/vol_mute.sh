#!/bin/bash
wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && notify-send -h string:x-dunst-stack-tag:volume "Volume" "Muted"
