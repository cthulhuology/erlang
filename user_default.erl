-module(user_default).
-export([ vi/1 , home/0]).

vi(X) when is_atom(X) ->
	vi(atom_to_list(X));
vi(X) when is_list(X) ->
	os:cmd("gvim " ++ X ).

home() ->
	c:cd("c:/Users/dave/Erlang").
