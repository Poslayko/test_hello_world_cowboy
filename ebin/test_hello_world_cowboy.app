{application, 'test_hello_world_cowboy', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['test_hello_world_cowboy_app','test_hello_world_cowboy_handler','test_hello_world_cowboy_sup']},
	{registered, [test_hello_world_cowboy_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{optional_applications, []},
	{mod, {test_hello_world_cowboy_app, []}},
	{env, []}
]}.