#!/bin/sh

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run copyq &
run nm-applet &
nitrogen --restore &
run picom --config .config/picom/picom.conf -b &
