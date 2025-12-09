%% Once upon a time... Erlang example
-module(vampire).
-export([start/0, age/1]).

-record(vampire, {location, birth, death}).

age(#vampire{birth=B, death=D}) -> D - B.

start() ->
    D = #vampire{location = "Transylvania", birth = 1428, death = 1476},
    io:format("~s age: ~p~n", [D#vampire.location, age(D)]).
