-module(user_default).
-export([ vi/1 , home/0]).

vi(X) when is_atom(X) ->
	File = atom_to_list(X),
	case filelib:is_file(File ++ ".erl") of
		true -> vi(File ++ ".erl");
		false -> vi(File)
	end;
vi(X) when is_list(X) ->
	spawn(fun () -> os:cmd("gvim " ++ X ) end).

home() ->
	c:cd("c:/Users/dave/Erlang").
