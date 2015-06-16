BIN = ebin
SRC = src
.PHONY: all clean

all: compile

init:
	mkdir -p  $(BIN)

compile: $(SRC)/travis_runner.erl init
	erlc -o $(BIN) $(<) 

install:
	mkdir -p /usr/lib/erl-test-runner/bin
	cp $(BIN)/* /usr/lib/erl-test-runner/bin/
	cp run_test.sh /usr/lib/erl-test-runner/erl-test-runner
	chmod 755 /usr/lib/erl-test-runner/erl-test-runner

uninstall:
	rm -R /usr/lib/erl-test-runner

clean:
	rm -rf ebin/*.beam
	rm -rf erl_crash.dump
