%% @author Amie Norden
%% @from http://www.it.uu.se/edu/course/homepage/p2p/st12/labs/client_server/lab.pdf
%% @modified by Andrea Cerrai


-module(cs).
-compile(export_all).

start() ->
	Pid = spawn(cs, server, [[]]),
	spawn_n(1, Pid, test:ranNum()).

spawn_n(0, _ServerPid, RN) ->
	io:format("Last client spawned~n");
spawn_n(N, ServerPid, RN) ->
	spawn(cs, client, [ServerPid, "client_"++integer_to_list(N), RN]),
	spawn_n(N-1, ServerPid, RN).

notify_clients([], _) ->
	ok;
notify_clients([{Pid, _Name} | RestNodes], {Msg, From}) ->
	Pid ! {msg, Msg, From},
	notify_clients(RestNodes, {Msg, From});
notify_clients([{Pid, _Name} | RestNodes], Msg) ->
	Pid ! {online_nodes, Msg},
	notify_clients(RestNodes, Msg).

server(OnlineNodes) ->
	receive
		{send, Msg, From} ->
			notify_clients(OnlineNodes, {Msg, From}),
			server(OnlineNodes);
		{online, Name, Pid} ->
			NewOnlineNodes = [{Pid, Name} | OnlineNodes],
			notify_clients(NewOnlineNodes, NewOnlineNodes),
			server(NewOnlineNodes);
		{offline, Name} ->
			NewOnlineNodes = lists:keydelete(Name, 2, OnlineNodes),
			notify_clients(NewOnlineNodes, NewOnlineNodes),
			server(NewOnlineNodes)
	end.

client(Server, Name, RN) ->
	Server ! {online, Name, self()},
	gui:c(RN),
	%gui:start(self(), Name),
	%gui:start(self(), Name, []),
	client_loop(Server, Name).

client_loop(Server, Name) ->
	receive
		{msg, Msg, From} ->
			%gui:display_new_msg(Msg, Name, From),
			client_loop(Server, Name);
		{send_msg, Msg} ->
			Server ! {send, Msg, Name},
			client_loop(Server, Name);
		{online_nodes, OnlineNodes} ->
			%gui:update_online_nodes(OnlineNodes, Name),
			client_loop(Server, Name);
		go_offline ->
			Server ! {offline, Name}
	end.