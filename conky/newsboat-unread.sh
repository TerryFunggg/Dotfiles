#!/bin/sh

unread=$(newsboat -x print-unread | awk '{print $1}')
echo "$unread"
