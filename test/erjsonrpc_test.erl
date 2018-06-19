-module(erjsonrpc_test).
-include_lib("eunit/include/eunit.hrl").
-author("KeisukeYamashita<19yamashita15@gmail.com").

%% API
-export([test/0]).

%% Test

test() ->
  assert_test().

assert_test() ->
  ?assertEqual(4, erjsonrpc:add(2,2)),
  ?assertEqual(5, erjsonrpc:add(2,3)).
