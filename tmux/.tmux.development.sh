#!/bin/bash

function tmuxdevelopment {
  session="development"

  cd "$HOME/Projects"
  ssh-add -K ~/.ssh/id_rsa

  # Create 'development' session with named window
  tmux new-session -d -s $session -n "Terms"

  # Split first window vertically 50%
  tmux splitw -h -p 50

  # Start npm in first pane of first window
  tmux select-pane -t 0
  tmux send-keys "z intern" C-m # type keys & press 'Enter'

  # Split second pane in first window
  tmux select-pane -t 1
  tmux send-keys "z bff"

  # Creat new window
  tmux new-window -t $session:1 -n "Vim"

  # Split window horizontally 30%
  tmux splitw -v -p 30

  # Zoom in pane 1 and start vim on it
  tmux select-pane -t 0

  # Maximize vim window
  tmux resize-pane -Z

  # Start vim
  tmux send-keys "z intern" C-m
  tmux send-keys "vim" C-m

  tmux attach
}
