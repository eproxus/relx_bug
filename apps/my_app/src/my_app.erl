-module(my_app).

-behaviour(application).

% Application Callbacks
-export([start/2]).
-export([stop/1]).

%--- Application Callbacks ----------------------------------------------------

start(_StartType, _StartArgs) ->
    my_app_sup:start_link().

stop(_State) -> ok.
