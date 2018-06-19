-module(erjsonrpc_test).
-include_lib("eunit/include/eunit.hrl").
-author("KeisukeYamashita<19yamashita15@gmail.com").

%% API
-export([test/0]).
-define(URL, "http://localhost:5050/json/post").

-include("erjsonrpc.hrl").

%% Test

test() ->
  newJSONRPCClient_test(),
  setHeader_test(),
  call_test().

newJSONRPCClient_test() ->
  Client = erjsonrpc_client:newJSONRPCClient(?URL),
  ?assertEqual(?URL,Client#jsonrpc.url).

setHeader_test() ->
  Client = erjsonrpc_client:newJSONRPCClient(?URL),
  Client2 = erjsonrpc_client:setHeader(Client,2),
  ?assertEqual(2,Client2#jsonrpc.header).