#!/bin/bash
# Gets the weather via curling wttr.in
# Usage: get-weather [CITYNAME] (providing no args gets local forcast via IP)

# Any Copyright is dedicated to the Public Domain.
# http://creativecommons.org/publicdomain/zero/1.0/ 

curl http://wttr.in/$1 
