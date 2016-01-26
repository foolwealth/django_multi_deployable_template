#! /bin/bash

set -e

if [ "$VIRTUAL_ENV" == "" ]; then
    echo "ERROR: You must be in a VENV to run this script"
    exit 1
elif [ ! -z "$ENVIRONMENT" ]; then
    echo "ERROR: Dude, you almost ran up.sh on a non-dev environment"
    exit 1
else
    echo "Cleaning pyc files..."
    ./pyclean.sh
    echo "Installing/updating requirements..."
    pip install -r requirements/dev.txt
fi
