#!/bin/bash

# Remove old virtual enviroment
if [ -d "./env" ]
then
  echo "Virutal enviroment exists. Deleting!"
  rm -rf ./env
fi

# Make new one
echo "Creating Virtual enviroment at ./env and activating"
python -m venv env
source env/bin/activate
python -m pip install -U pip
python -m pip install wheel


if [ -f "./requirements.txt" ]
then
  echo "Found requirements.txt, installing"
  python -m pip install -r requirements.txt
fi
