#!/bin/bash
# 1,3,5,7 day using emacs
# 2,4,6 day using vim

dates=$(date +%d)
echo $((10#${dates}%2))
if [ $((10#${dates}%2)) -eq 0 ];
then
  $EDITOR='emacs'

else
  $EDITOR='vim'
fi
