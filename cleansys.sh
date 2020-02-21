#!/bin/bash
##################################################################################
# CLEANSYS - THE STUPID SYSTEM MAINTENANCE SCRIPT                                #
#                                                                                #
# Copyright (C) 2020 M. Fox                                                      #
#                                                                                #
# cleansys: Runs helpful system maintenance commands all in one script!          #
# (for DEBIAN-BASED (apt) systems ONLY)                                          #
#                                                                                #
# This program is free software: you can redistribute it and/or modify           #
# it under the terms of the GNU General Public License as published by           #
# the Free Software Foundation, either version 3 of the License, or              #
# (at your option) any later version.                                            #
#	                                                                         #
# This program is distributed in the hope that it will be useful,                #
# but WITHOUT ANY WARRANTY; without even the implied warranty of                 #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                  #
# GNU General Public License for more details.                                   #
#	                                                                         #
# You should have received a copy of the GNU General Public License              #
# along with this program. If not, see <http://www.gnu.org/licenses/>.           #
##################################################################################

##################################################################################
# SETUP:                                                                         #
# 1. Clone repo                                                                  #                            
# 3. Make cleansys.sh and executable file (sudo chmod +x cleansys.sh)            #
# 4. run 'sudo ./cleansys.sh'                                                    #
#                                                                                #
# If you would like to use this as a global command:                             #
# 1. run 'mv cleansys.sh cleansys' (or any other name at your option)            #
# 2. run 'sudo cp cleansys /usr/bin/cleansys'                                    #
# 3. now, running 'cleansys' anywere will work                                   #
##################################################################################

if [ "$EUID" -ne 0 ] # checks for root, exits if not root.
  then echo -e "\e[1m\e[31mRun this as root (sudo)"
  exit
fi
  echo -e "\e[1m\e[32mStarting system maintenance, its a good idea to reboot after this is done"
  printf "\e[39m\e[21m\nCopyright (C) 2019 Gizmoz.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\n"
  sleep 4 # allows you to read the above
# autoruns all these commands
  apt-get update --force-yes # updates the apt repos
  apt-get upgrade --force-yes # installs any updates to the apt repos
  apt-get autoclean --force-yes # cleans files that are no longer needed
  apt-get autoremove --force-yes # cleans file dependencies that are no longer needed
  echo -e "\e[1m\e[32mCleansys is done, reboot now? [Y/\e[31mN\e[32m]\e[39m\e[21m"
  read yesno
  if [ $yesno == "Y" ];
  then
	reboot # reboots system
  fi
    exit
