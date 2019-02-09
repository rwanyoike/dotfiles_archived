#!/usr/bin/env bash

redshift_event=$1

case $redshift_event in
  period-changed)
    # prev_period=$2
    curr_period=$3
    exec notify-send "Redshift" "Period changed to '${curr_period}'"
esac
