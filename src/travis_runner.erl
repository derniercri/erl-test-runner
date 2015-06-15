%% @copyright 2015 Derniercri
%% @version 1.0.0
%% @title A small travis bootstrapper for Erlang without REBAR

-module(travis_runner).
-vsn(1).
-author(["Arthur d'Azémar", "Xavier van De Woestyne"]).
-export([run/0]).

%% Execute test for a gived module
%% Raise an exception if the test fail
check_test(Module) ->
    io:format("===============~nTesting module : ~s~n===============~n", [Module]),
    case eunit:test(Module) of 
        {error, Reason} ->
            io:format("Test failure: ~p~n", [Reason]),
            throw(travis_test_failure);
        ok ->
            io:format("Test succeeded~n"),
            ok;
        _ ->
            io:format("Unknown error~n"),
            throw(travis_unknown_error)
    end.

%% Convert command lines argument "modules" into a list of atom
extract_arguments() ->
    case init:get_argument(modules) of 
        {ok, [List]} -> lists:map(fun list_to_atom/1, List);
        _ -> []
    end.
            
%% Entry point
run() ->
    Modules = extract_arguments(),
    lists:foreach(fun check_test/1, Modules),
    init:stop().
