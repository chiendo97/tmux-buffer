#!/usr/bin/env bash

tmp_file=$(mktemp) 
tmux capture-pane -pJS -3000 > "$tmp_file"
tmux display-popup -d '#{pane_current_path}' -E -w 90% -h 90% "nvim '-c set ft=bash' + $tmp_file"
