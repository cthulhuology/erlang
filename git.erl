-module(git).
-export([ 
	init/0, 
	commit/1, 
	add/1,
	push/0, pull/0, pull/1, 
	delete/1,
	checkout/1,
	feature/1,	
	merge/1,
	status/0, log/0,
	branch/0
	]).


init() ->
	io:format("~s" , [ os:cmd("git init .") ]).

commit(Message) ->
	io:format("~s" , [ os:cmd("git commit -a -m \"" ++ Message ++ "\"") ]).

add(File)  ->
	io:format("~s", [ os:cmd("git add " ++ File) ]).

push() ->
	io:format("~s", [ os:cmd("git push")] ).

pull() ->
	io:format("~s", [ os:cmd("git pull")]).

pull(Origin) ->
	io:format("~s", [ os:cmd("git pull " ++ Origin)]).

checkout(Branch) ->
	io:format("~s", [ os:cmd("git checkout " ++ Branch)]).

feature(Branch) ->
	io:format("~s", [ os:cmd("git checkout -b " ++ Branch)]).

delete(Branch) ->
	io:format("~s", [ os:cmd("git branch -D " ++ Branch)]).

status() ->
	io:format("~s", [ os:cmd("git status") ]).
	
log() ->
	io:format("~s", [ os:cmd("git log") ]).

branch() ->
	io:format("~s", [ os:cmd("git branch") ]).
