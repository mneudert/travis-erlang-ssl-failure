-module(failure_tests).
-include_lib("eunit/include/eunit.hrl").

remote_test() ->
    application:ensure_all_started(ssl, temporary),
    application:ensure_all_started(inets, temporary),
    failure_app:call_https(),
    ok = ok.
