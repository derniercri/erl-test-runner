# ERL-travis-bootstrap
Travis is a powerful open-source tool for Continous Integration.
With Erlang, we have to use **Rebar**. In some contexts, Rebar is not really suitable. **Erl-travis-bootstrap** is a little script to use Travis with *EUnit** and without Rebar. You just have to run `./run_test.sh moduleA moduleB ... moduleX` where moduleN are Eunit test's modules.
