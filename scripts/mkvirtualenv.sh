#!/bin/bash

virtualenv -p python2.7 .venv
echo "`pwd`/lib" > .venv/lib/python2.7/site-packages/lib.pth
echo "Virtualenv created!"


