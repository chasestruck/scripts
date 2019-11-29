#!/bin/bash

##############################################################################
# CLEANSYS - THE STUPID SYSTEM MAINTENANCE SCRIPT                            #
#                                                                            #
# Copyright (C) 2019 Gizmoz                                                  #
#                                                                            #
# cleansys: Runs helpful system maintenance commands all in one script!      #
# (for DEBIAN-BASED (apt) systems ONLY)                                      #
#                                                                            #
# This program is free software: you can redistribute it and/or modify       #
# it under the terms of the GNU General Public License as published by       #
# the Free Software Foundation, either version 3 of the License, or          #
# (at your option) any later version.                                        #
#	                                                                     #
# This program is distributed in the hope that it will be useful,            #
# but WITHOUT ANY WARRANTY; without even the implied warranty of             #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              #
# GNU General Public License for more details.                               #
#	                                                                     #
# You should have received a copy of the GNU General Public License          #
# along with this program. If not, see <http://www.gnu.org/licenses/>.       #
##############################################################################

##############################################################################
# SETUP - to use this program, put it in a directory (via git clone or just  #
# copy paste it as a file and chmod it as an exe). Then you can cd to that   #
# directory and do sudo ./cleansys (or whatever you named it). To use it as  #
# a bin command, go to the directory you have it in and do                   #         
# sudo cp cleansys /usr/bin/. If it does not work, google it, then try       #
# turning it off and back on.                                                #
##############################################################################

if [ "$EUID" -ne 0 ] # checks for root, exits if not root.
  then echo "Run this as root (sudo)"
  exit
fi
  echo "Starting system maintenance, its a good idea to reboot after this is done"
  sleep 2
# autoruns all these commands
  apt-get update --force-yes # updates the apt repos
  apt-get upgrade --force-yes # installs any updates to the apt repos
  apt-get autoclean --force-yes # cleans files that are no longer needed
  apt-get autoremove --force-yes # cleans file dependencies that are no longer needed
  echo "Cleansys is done, reboot now? [Y/N]"
  read yesno
  if [ $yesno == "Y" ];
  then
	reboot # reboots system
  fi
    exit
