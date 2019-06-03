-module(dialyzer_problem).

%% API exports
-export([f1/0, f2/0]).

%%====================================================================
%% API functions
%%====================================================================

-spec f1() ->
  ok.
f1() ->
  function1({k1, "9"}).

-spec f2() ->
  ok.
f2() ->
  function2({k1, "9"}).

%%====================================================================
%% Internal functions
%%====================================================================

-spec function1(Val) -> Res when
    Val :: {k1, integer()} |
           {k2, term()} |
           {k3, integer()} |
           {k4, integer()} |
           {k5, integer()} |
           {k6, integer()},
    Res :: ok.
function1(_Val) ->
  ok.

-spec function2(Val) -> Res when
    Val :: {k1, integer()} |
           {k2, term()} |
           {k3, integer()} |
           {k4, integer()} |
           {k5, integer()},
    Res :: ok.
function2(_Val) ->
  ok.
