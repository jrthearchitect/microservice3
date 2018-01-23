#!/bin/bash
#
#jrobinson
##########


docker build --no-cache -t jrobinson/plaidapi:micro1 . 
docker push jrobinson/plaidapi:micro1
