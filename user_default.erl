-module(user_default).
-export([ vi/1 , home/0,
	git_clone/1,
	git_init/0, 
	git_commit/1, 
	git_add/1,
	git_add_all/0,
	git_push/0, git_pull/0, git_pull/1, 
	git_delete/1,
	git_checkout/1,
	git_feature/1,	
	git_merge/1,
	git_status/0, git_log/0,
	git_branch/0,
	git_diff/1
	]).


vi(X) when is_atom(X) ->
	vi(atom_to_list(X));
vi(X) when is_list(X) ->
	os:cmd("gvim " ++ X ).

home() ->
	c:cd(os:getenv("USERPROFILE") ++ "/Erlang").


git_clone(Url) ->
	io:format("~s", [ os:cmd("git clone " ++ Url) ]).

git_init() ->
	io:format("~s" , [ os:cmd("git init .") ]).

git_commit(Message) ->
	io:format("~s" , [ os:cmd("git commit -a -m \"" ++ Message ++ "\"") ]).

git_add(File)  ->
	io:format("~s", [ os:cmd("git add " ++ File) ]).

git_add_all()  ->
	io:format("~s", [ os:cmd("git add *") ]).

git_push() ->
	io:format("~s", [ os:cmd("git push")] ).

git_pull() ->
	io:format("~s", [ os:cmd("git pull")]).

git_pull(Origin) ->
	io:format("~s", [ os:cmd("git pull " ++ Origin)]).

git_checkout(Branch) ->
	io:format("~s", [ os:cmd("git checkout " ++ Branch)]).

git_feature(Branch) ->
	io:format("~s", [ os:cmd("git checkout -b " ++ Branch)]).

git_delete(Branch) ->
	io:format("~s", [ os:cmd("git branch -D " ++ Branch)]).

git_merge(Branch) ->
	io:format("~s", [ os:cmd("git merge --squash " ++ Branch)]).

git_status() ->
	io:format("~s", [ os:cmd("git status") ]).
	
git_log() ->
	io:format("~s", [ os:cmd("git log") ]).

git_branch() ->
	io:format("~s", [ os:cmd("git branch") ]).

git_diff(Tag) ->
	io:format("~s", [ os:cmd("git diff " ++ Tag) ]).
