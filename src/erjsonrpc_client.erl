
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
    Json = #{
        <<"jsonprc">> => "2.0",
        <<"method">> => Method,
        <<"params">> => "Hello",
        <<"id">> => timestamp:get_timestamp()
    },
    inets:start(),
    {ok, {{_,200,_},_, Body}} = httpc:request(post,
                    {Url,
                    [],
                    ["application/json"],
                    [jsone:encode(Json)]},
                    [],
                    []),
    {struct, Response} = mochijson:decode(Body),
    Response.