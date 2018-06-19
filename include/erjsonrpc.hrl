-record(jsonrpc,{
    url,
    header
}).

-type jsonrpc() :: #jsonrpc{
    url :: string(),
    header :: list(tuple())
}.  