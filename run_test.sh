#!/bin/sh
BIN=erl-travis-bootstrap/

EBIN=$1

if [ ! -e $EBIN  ]
then
    echo "wrong arguments, usage : $0 /path/to/test_ebin Module1 ... ModuleN"
    exit 1
fi
MODULES=$(echo $* | cut -d " " -f $(seq -s "," 2 $#))
erl -pa $EBIN -pa $BIN -modules $MODULES -s travis_runner run -noshell
