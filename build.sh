#!/bin/bash
#
#jrobinson
##########


docker build --no-cache -t jrobinson/plaidapi:micro3 . 
docker push jrobinson/plaidapi:micro3
