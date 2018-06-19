
-module(erjsonrpc_client).
-author("KeisukeYamashita<19yamashita15@gmail.com").

-include("erjsonrpc.hrl").

-export([newJSONRPCClient/1,setHeader/2, call/2]).
-define(METHOD,"POST").

newJSONRPCClient(Url) ->
    #jsonrpc{url=Url}.
    
setHeader(Client, Header) ->
    Client#jsonrpc{header=Header}.

call(Client, Method) ->
    #jsonrpc{url=Url} = Client,
    inets:start(),
    {ok, {{_,200,_},_, Body}} = httpc:request(post,
                    {Url,
                    [],
                    "application/json",
                    []},
                    [],
                    []),
    {struct, Response} = mochijson:decode(Body),
    Response.