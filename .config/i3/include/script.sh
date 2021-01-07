#!/bin/bash
i3_config="$HOME/.config/i3/config"

# replace env vars
envsubst < "$i3_config" | tee "$i3_config" > /dev/null

# replace every "include /path/to/file" with content of that file
if grep -q '^include' "$i3_config"; then
  grep -n '^include ' "$i3_config" |
    sed  -e 's/:[^ ]* /{ r /'    \
    -e 'G;s/.$/&b&}/'       |
    sed -nf - -ep "$i3_config" | tee $i3_config.gen 
  # for some reason, it's not possible to redirect output to $i3_config so we are swaping it with .gen
  rm $i3_config
  mv $i3_config.gen $i3_config
fi

