#!/bin/sh

event=$1

case $event in
  period-changed)
    # prev_period=$2
    period=$3
    exec notify-send "Redshift" "Period changed to \"${period}\""
esac
