#!/bin/bash

set -e

source ./env/bin/activate

which python

python ./setup.py sdist
python ./setup.py bdist_wheel

twine upload dist/*
