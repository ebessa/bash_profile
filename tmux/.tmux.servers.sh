#!/bin/bash

function tmuxserver {
  # start tmux 
  tmux start-server

  session="SERVERS"

  # Create 'SERVERS' session
  tmux new-session -d -s $session -n "Loggi"

  # create grid of 4 50% windows
  tmux splitw -h -p 50
  tmux select-pane -t 0
  tmux splitw -v -p 50
  tmux select-pane -t 1
  tmux splitw -v -p 50

  # start main server
  tmux select-pane -t 0
  tmux send-keys "loggi down && loggi up && loggi run" C-m

  # prepare composition of docker
  tmux select-pane -t 1
  tmux send-keys "docker-compose -f docker-compose-standalone.yml up"

  # start celery app
  tmux select-pane -t 2
  tmux send-keys "loggi celery" C-m

  echo "Done!"
}
