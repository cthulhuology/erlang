-module(util).
-export([ vi/1 ]).

vi(X) when is_list(X) ->
	os:cmd("gvim " ++ X).
