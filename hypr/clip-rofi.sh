#!/bin/bash
# Generate previews for rofi
cliphist list | while read -r id; do
  if [[ $id =~ ^image/png ]]; then
    img_path="/tmp/clip-$id.png"
    cliphist decode "$id" > "$img_path" 2>/dev/null
    echo -en "\0icon\x1f$img_path\n$id"
  else
    echo -e "$id\t$id"
  fi
done | rofi -dmenu -i -matching fuzzy -p "Clipboard" \
  -theme-str 'element-icon {size: 80px;} listview {lines: 10; columns: 1;}' \
  -parse-chars 0 | {
    id=$REPLY; cliphist decode "$id" | wl-copy; rm -f "/tmp/clip-$id.png"
  }
