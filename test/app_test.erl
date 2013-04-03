-module(app_test).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

start_test() ->
    ok = application:start(binarysearch),
    ?assertNot(undefined == whereis(binarysearch_sup)),
    application:stop(binarysearch).

stop_test() ->
    ok = application:start(binarysearch),
    ?assertEqual(ok, application:stop(binarysearch)).
