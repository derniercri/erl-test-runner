#!/bin/sh

BIN=erl-travis-bootstrap/

if [ ! $# -eq 1 ]
then
    echo "wrong arguments, usage : $0 path/to/project"
    exit 1
fi

PROJECT_FOLDER=$1

echo $PROJECT_FOLDER
if [ -w $PROJECT_FOLDER ]
then
    make
    mkdir -p $PROJECT_FOLDER/$BIN
    cp ebin/travis_runner.beam $PROJECT_FOLDER/$BIN
    cp run_test.sh $PROJECT_FOLDER/
else
    echo "can't write in directory $PROJECT_FOLDER"
    exit 1
fi
