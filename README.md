#erl-test-runner
**erl-test-runner** is a minimalist test runner for Erlang with easily travis integration. 

## Installation

*    `git clone https://github.com/derniercri/erl-travis-bootstrap`
*    `cd erl-travis-bootstrap`
*    `make`
*    `make install`

You can use the script install-dependencies.sh in your .travis.yml to install erl-test-runner on the travis's VM

## Launching the test-runner

Run the command `/usr/lib/erl-test-runner/erl-test-runner TEST_BIN MODULES` where TEST_BIN is the path to your .beam test modules and MODULES is your test's modules names separated with blanks spaces.

Example : `/usr/lib/erl-test-runner/erl-test-runner ./ebin test1 test2 test3`

## Travis usage

* copy the script install-dependencies.sh at your root's project and add the following line to your .travis.yml `install: install-dependencies.yml`
* in your Makefile add a rule named `test` which will launch the test-runner (see the previous section)


## use example
You can see a use's example at [https://github.com/altor/erl-test-runner-example](https://github.com/derniercri/erl-test-runner-example "erl-test-runner-example")
