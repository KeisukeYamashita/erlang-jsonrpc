# erlang-jsonrpc

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![image.png](https://qiita-image-store.s3.amazonaws.com/0/153320/c2dac897-fe0f-95ca-95a5-34c1e902fad5.png)

erlang-jsonrpc is a erlang library use for interacting to your server with JSON-RPC.

## Build 
Compile with this command.

```
$ rebar3 compile
```

## Test

```
rebar3 eunit
```

## Usage

```erlang
Url = "https://localhost.com".
Client = erjsonrpc:newJSONRPCClient(Url).
```

## Contribution
To contribute, just send us a pull request!
If it is valid, you will be added on the contribution doc in `/doc/contributor.md` .

## License
Copyright 2018 Keisuke Yamashita.

Licensed under the Apache 2.0 license.
