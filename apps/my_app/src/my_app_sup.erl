-module(my_app_sup).

-behaviour(supervisor).

% API
-export([start_link/0]).

% supervisor Callbacks
-export([init/1]).

%--- API ----------------------------------------------------------------------

start_link() -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%--- supervisor Callbacks -----------------------------------------------------

init([]) -> {ok, { {one_for_one, 5, 10}, []}}.
