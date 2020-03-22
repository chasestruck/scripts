#!/bin/bash
# Update system repos and apply updates in 1 command rather than 4
# Usage: sudo system-update.sh 

# Any Copyright is dedicated to the Public Domain.
# http://creativecommons.org/publicdomain/zero/1.0/ 
                                   
if [ "$EUID" -ne 0 ] # checks for root, exits if false.
  then echo -e "Fatal: Are you root?"
  exit
fi
  yes | apt-get update     # updates the repo's
  yes | apt-get upgrade    # installs any updates to the apt repos
  yes | apt-get autoclean  # cleans files that are no longer needed
  yes | apt-get autoremove # cleans file dependencies that are no longer needed
  echo -e "Done."
  exit
