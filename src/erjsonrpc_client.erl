
-module(erjsonrpc_client).
-author("KeisukeYamashita<19yamashita15@gmail.com").

-include("erjsonrpc.hrl").

-export([newJSONRPCClient/1,setHeader/2]).
-define(METHOD,"POST").

newJSONRPCClient(Url) ->
    #jsonrpc{url=Url}.
    
setHeader(Client, Header) ->
    Client#jsonrpc{header=Header}.