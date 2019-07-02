#!/bin/bash
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

# Set application name
application=`getApplication`

./clean.sh
./mesh.sh 

rm -fr log.$application
runApplication $application

grep "added mass" log.$application > log.addedMass
