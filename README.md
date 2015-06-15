# ERL-travis-bootstrap
Travis is a powerful open-source tool for Continous Integration.
With Erlang, we have to use **Rebar**. In some contexts, Rebar is not really suitable. **Erl-travis-bootstrap** is a little script to use Travis with **EUnit** and without Rebar. You just have to run `./run_test.sh ebin_folder moduleA moduleB ... moduleX` where ebin_folder is the path to your compiled test modules and moduleN are Eunit test's modules.

## Installation

*    `git clone https://github.com/derniercri/erl-travis-bootstrap`
*    `cd erl-travis-bootstrap`
*    `./install PATH` where path is the path to your project

