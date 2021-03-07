#!/bin/bash

for user in `more user-list.txt`
do
  if id -u "$user" >/dev/null 2>&1; then
    echo "" | passwd --stdin "$user"
    chage -d 0 $user
  fi
done
