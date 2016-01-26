#! /bin/bash

set -e

if [ "$VIRTUAL_ENV" == "" ]; then
    if [ ! -d ".venv" ]; then
        source scripts/mkvirtualenv.sh
    fi

    source .venv/bin/activate
elif [ "$VIRTUAL_ENV" != "`pwd`/.venv" ]; then
    echo "ERROR: You already have a virtualenv active and it's not the correct one for this project!"
    exit 1
fi

echo "Cleaning pyc files..."
./pyclean.sh
echo "Installing/updating requirements..."
pip install -r requirements/dev.txt
cd proj/site_a
python manage.py migrate
python manage.py runserver 0.0.0.0:9000
