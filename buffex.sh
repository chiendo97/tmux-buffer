#!/usr/bin/env bash

tmp_file=$(mktemp) 
tmux capture-pane -J -S -3000
tmux save-buffer "$tmp_file"
tmux display-popup -E -w 90% -h 90% "nvim '-c set ft=bash' + $tmp_file"
