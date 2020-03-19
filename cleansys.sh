#!/bin/bash
# Cleansys -- The all-in-one system update command (becuase debian's way is too hard)                                        

# Any Copyright is dedicated to the Public Domain.
# http://creativecommons.org/publicdomain/zero/1.0/ 

# SETUP:                                                                         
# 1. Clone repo                                                                                              
# 2. Make cleansys.sh and executable file (sudo chmod +x cleansys.sh)            
# 3. run 'sudo ./cleansys.sh'                                                    
#                                                                                
# If you would like to use this as a global command:                             
# 1. run 'mv cleansys.sh cleansys' (or any other name at your option)            
# 2. run 'sudo cp cleansys /usr/bin/cleansys'                                    
# 3. now, running 'cleansys' anywere will work                                   

if [ "$EUID" -ne 0 ] # checks for root, exits if not root.
  then echo -e "\e[1m\e[31mCleansys does not have a ability to run 'sudo'. Make sure you are root and run again"
  exit
fi
  echo -e "\e[1m\e[32mStarting system maintenance, its a good idea to reboot after this is done"
  echo -e "\e[39m"
  sleep 2 # allows you to read the above
  
  # autoruns all these commands
  yes | apt-get update # updates the apt repos
  yes | apt-get upgrade # installs any updates to the apt repos
  yes | apt-get autoclean # cleans files that are no longer needed
  yes | apt-get autoremove # cleans file dependencies that are no longer needed
  echo -e "\e[1m\e[32mCleansys is done, you may now go about your work"
  exit
