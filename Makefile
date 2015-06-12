BIN = ebin
SRC = src
.PHONY: all clean

all: compile

init:
	mkdir -p  $(BIN)

compile: $(SRC)/travis_runner.erl init
	erlc -o $(BIN) $(<) 

clean:
	rm -rf ebin/*.beam
	rm -rf erl_crash.dump
