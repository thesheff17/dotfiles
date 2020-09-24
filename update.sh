#!/bin/bash

SECONDS=0

echo "update.sh started..."

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo apt-get update 
sudo apt-get upgrade -y

duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
echo "update.sh completed"

