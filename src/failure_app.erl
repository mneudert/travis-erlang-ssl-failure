-module(failure_app).
-export([start/2, stop/1]).
-export([call_https/0]).

-behaviour(application).

start(_StartType, _StartArgs) ->
    {ok, self()}.

stop(_State) ->
    ok.

call_https() ->
    io:fwrite("calling https\n"),
    {ok, {{_Version, 200, _Reason}, _Headers, _Body}} =
        httpc:request(get, {"https://www.github.com", []}, [], []).
