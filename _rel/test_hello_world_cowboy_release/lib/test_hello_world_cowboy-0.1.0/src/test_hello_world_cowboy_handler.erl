-module(test_hello_world_cowboy_handler).

-export([init/2]).

init(Req0, Opts) ->
    handle_request(Req0, Opts).

handle_request(Req0, Opts) ->
    Method = cowboy_req:method(Req0),
    Response = case Method of
        <<"GET">> ->
            <<"This is GET method!">>;
        <<"POST">> ->
            cowboy_req:read_body(Req0, #{length => 512000})
    end,
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/plain">>
	}, Response, Req0),
	{ok, Req, Opts}.
