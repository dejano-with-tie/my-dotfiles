#!/bin/bash
include_path="$HOME/.i3/include/"
i3_config="$HOME/.i3/config"

cat "${include_path}/*.conf" > "$i3_config"
