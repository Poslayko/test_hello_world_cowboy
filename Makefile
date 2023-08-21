PROJECT = test_hello_world_cowboy
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

DEPS = cowboy

dep_cowboy = git https://github.com/ninenines/cowboy.git 2.8.0

BUILD_DEPS += relx
include erlang.mk
