#!/bin/bash

tmux start-server
tmux new-session -d -s scene1 -n scene1
tmux split-window -v -p 15
tmux select-pane -t scene1.0
tmux split-window -h -p 50
tmux select-pane -t scene1.2
tmux split-window -h -p 50
tmux send-keys -t scene1.3 'nice htop' C-m 
tmux select-pane -t scene1.0
tmux attach-session -t scene1
