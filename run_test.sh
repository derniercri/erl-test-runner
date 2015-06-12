#!/bin/sh
erl -pa ebin -modules $* -s travis_runner run -noshell
