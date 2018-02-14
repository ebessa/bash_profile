#!/bin/bash

function tmuxdevelopment {
  session="development"

  # Create 'development' session with named window
  tmux new-session -d -s $session -n "Terms"

  # Split first window vertically 50%
  tmux splitw -h -p 50

  # Start npm in first pane of first window
  tmux select-pane -t 0
  tmux send-keys "git status;npm start" C-m

  # Split second pane in first window
  tmux splitw -h -p 30
  tmux select-pane -t 1
  tmux send-keys "mitmproxy -p 8888" # type keys, without 'Enter'

  # Select third pane and type adb command
  tmux select-pane -t 2
  tmux send-keys "web-builder --adbReverse" C-m

  # Creat new window
  tmux new-window -t $session:1 -n "Vim"

  # Split window horizontally 30%
  tmux splitw -v -p 30

  # Zoom in pane 1 and start vim on it
  tmux select-pane -t 0
  tmux send-keys "vim"

  # Maximize vim window
  tmux resize-pane -Z

  # Finally, attach to the tmux session
  tmux attach-session -t $session

  echo "Done!"
}
