#!/bin/bash
# Gets the weather via curling wttr.in
# Usage: get-weather [CITYNAME] (if no city is provided, it will use your IP as the location)

# Any Copyright is dedicated to the Public Domain.
# http://creativecommons.org/publicdomain/zero/1.0/ 

curl http://wttr.in/$1 
