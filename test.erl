%% @author by Andrea Cerrai

-module(test).
%-export([addItems/1, addGrid/2, grid/0]).
%-export([addGrid/2, grid/0]).
%-export([addGrid/1, grid/0, genBoard/2, genRow/3, ranNumT1/0, ranNumT2/0]).
-compile(export_all).


notSoRanNum() ->
	%random:seed(now()),
	random:seed(),
	%F = fun() -> io:format("~p~n", [[random:uniform(10) || _ <- lists:seq(1, 10)]]) end,
	%spawn(F).
	[random:uniform(5) || _ <- lists:seq(1, 20)].
	%[random:uniform(10) || _ <- lists:seq(1, 100)],
	%io:format("~p~n", [RanList]).

ranNum() ->
	random:seed(now()),
	[random:uniform(5) || _ <- lists:seq(1, 20)].

%spliting list in two 
t() -> 
	List = {_T1, _T2} = lists:split(10, ranNum()),
	List.

getList(List) ->
	%io:format("List: ~p~n", [tuple_to_list(List)]),
	List.

getCoords(Grid, RN) ->
	%List = setCoords(),
	List = lists:split(10, RN),
	%io:format("List: ~p~n", [getList(List)]),
	A = getNthList(1, List),
	B = getNthList(2, List),
	
	%1st Team
	Coord1 = lists:sublist(A, 2),
	NewL = lists:subtract(A, Coord1),
	Coord2 = lists:sublist(NewL, 2),
	NewL2 = lists:subtract(NewL, Coord2),
	Coord3 = lists:sublist(NewL2, 2),
	NewL3 = lists:subtract(NewL2, Coord3),
	Coord4 = lists:sublist(NewL3, 2),
	NewL4 = lists:subtract(NewL3, Coord4),
	Coord5 = lists:sublist(NewL4, 2),
	
	%2nd Team
	Coord6 = lists:sublist(B, 2),
	NewL6 = lists:subtract(B, Coord6),
	Coord7 = lists:sublist(NewL6, 2),
	NewL7 = lists:subtract(NewL6, Coord7),
	Coord8 = lists:sublist(NewL7, 2),
	NewL8 = lists:subtract(NewL7, Coord8),
	Coord9 = lists:sublist(NewL8, 2),
	NewL9 = lists:subtract(NewL8, Coord9),
	Coord10 = lists:sublist(NewL9, 2),
	
	
	P1 = {ok,[X, Y]} = io:fread( "Enter X, Y for player 1, please: ", "~d ~d" ),
	P2 = {ok,[X1, Y1]} = io:fread( "Enter X, Y for player 2, please: ", "~d ~d" ),
	P1M = {K, C}=P1, C,
	P2M = {K1, C1}=P2, C1,
	
	breakListsAndPlot(Grid, C, Coord1, Coord2, Coord3, Coord4, Coord5, C1, Coord6, Coord7, Coord8, Coord9, Coord10),
	chkStuff(C, Coord1, Coord2, Coord3, Coord4, Coord5, C1, Coord6, Coord7, Coord8, Coord9, Coord10).

breakListsAndPlot(Grid, P1, Coord1, Coord2, Coord3, Coord4, Coord5, P2, Coord6, Coord7, Coord8, Coord9, Coord10) ->
	P1X = getIndCosX(P1),
	P1Y = getIndCosY(P1),
	P2X = getIndCosX(P2),
	P2Y = getIndCosY(P2),
	C1X = getIndCosX(Coord1),
	C1Y = getIndCosY(Coord1),
	C2X = getIndCosX(Coord2),
	C2Y = getIndCosY(Coord2),
	C3X = getIndCosX(Coord3),
	C3Y = getIndCosY(Coord3),
	C4X = getIndCosX(Coord4),
	C4Y = getIndCosY(Coord4),
	C5X = getIndCosX(Coord5),
	C5Y = getIndCosY(Coord5),
	C6X = getIndCosX(Coord6),
	C6Y = getIndCosY(Coord6),
	C7X = getIndCosX(Coord7),
	C7Y = getIndCosY(Coord7),
	C8X = getIndCosX(Coord8),
	C8Y = getIndCosY(Coord8),
	C9X = getIndCosX(Coord9),
	C9Y = getIndCosY(Coord9),
	C10X = getIndCosX(Coord10),
	C10Y = getIndCosY(Coord10),
	
	plot:plotP1(Grid, P1X, P1Y, 6),
	plot:plotP2(Grid, P2X, P2Y, 6),
	plot:plotO1(Grid, C1X, C1Y, 6),
	plot:plotO2(Grid, C2X, C2Y, 6),
	plot:plotO3(Grid, C3X, C3Y, 6),
	plot:plotO4(Grid, C4X, C4Y, 6),
	plot:plotO5(Grid, C5X, C5Y, 6),
	plot:plotO6(Grid, C6X, C6Y, 6),
	plot:plotO7(Grid, C7X, C7Y, 6),
	plot:plotO8(Grid, C8X, C8Y, 6),
	plot:plotO9(Grid, C9X, C9Y, 6),
	plot:plot10(Grid, C10X, C10Y, 6).

getIndCosX(Point) ->
	X = test:getValueinList(1, Point),
	X.

getIndCosY(Point) ->
	Y = test:getValueinList(2, Point),
	Y.

chkStuff(P1, Coord1, Coord2, Coord3, Coord4, Coord5, P2, Coord6, Coord7, Coord8, Coord9, Coord10) ->
	chkBounds(P1, P2),
	case chkTry(P1, P2) of 
		true -> io:format("Game Over ~n");
		false -> chkColls(P1, Coord1, Coord2, Coord3, Coord4, Coord5, P2, Coord6, Coord7, Coord8, Coord9, Coord10)
		end.
	%chkTry(P1, P2),


%X is position in list Y 
getNthList(X, Y) -> element(X, Y).

%gets the value in position A in list B
getValueinList(A, B) -> element(A, list_to_tuple(B)).

%send stuff Msg = coordinates, Name = Server/Reciever, From = Sender
send(Name, Msg, From) ->
	Name!{msg, Msg, From}.

chkTry(P1, P2) ->
	if
		P1 == [1,5] -> tryScored(1), true;
		P1 == [2,5] -> tryScored(1), true;
		P1 == [3,5] -> tryScored(1), true;
		P1 == [4,5] -> tryScored(1), true;
		P1 == [5,5] -> tryScored(1), true;
		
		P2 == [1,1] -> tryScored(2), true;
		P2 == [2,1] -> tryScored(2), true;
		P2 == [3,1] -> tryScored(2), true;
		P2 == [4,1] -> tryScored(2), true;
		P2 == [5,1] -> tryScored(2), true;
		
		true -> false
	end.

chkBounds(P1, P2) ->
	if
		P1 == [0,0] -> errorB(1);
		P1 == [0,1] -> errorB(1);
		P1 == [0,2] -> errorB(1);
		P1 == [0,3] -> errorB(1);
		P1 == [0,4] -> errorB(1);
		P1 == [6,1] -> errorB(1);
		P1 == [6,2] -> errorB(1);
		P1 == [6,3] -> errorB(1);
		P1 == [6,4] -> errorB(1);
		P1 == [1,6] -> errorB(1);
		
		P2 == [0,0] -> errorB(2);
		P2 == [0,2] -> errorB(2);
		P2 == [0,3] -> errorB(2);
		P2 == [0,4] -> errorB(2);
		P2 == [0,5] -> errorB(2);
		P2 == [6,2] -> errorB(2);
		P2 == [6,3] -> errorB(2);
		P2 == [6,4] -> errorB(2);
		P2 == [6,5] -> errorB(2);
		
		true -> false
	end.


chkColls(P1, Coord1, Coord2, Coord3, Coord4, Coord5, P2, Coord6, Coord7, Coord8, Coord9, Coord10) ->
	if
		P1 == Coord1 -> tackled(1,10);
		P1 == Coord2 -> tackled(1,9);
		P1 == Coord3 -> tackled(1,8);
		P1 == Coord4 -> tackled(1,7);
		P1 == Coord5 -> tackled(1,6);
		P1 == Coord6 -> tackled(1,5);
		P1 == Coord7 -> tackled(1,4);
		P1 == Coord8 -> tackled(1,3);
		P1 == Coord9 -> tackled(1,2);
		P1 == Coord10 -> tackled(1,1);
	
		P2 == Coord1 -> tackled(2,10);
		P2 == Coord2 -> tackled(2,9);
		P2 == Coord3 -> tackled(2,8);
		P2 == Coord4 -> tackled(2,7);
		P2 == Coord5 -> tackled(2,6);
		P2 == Coord6 -> tackled(2,5);
		P2 == Coord7 -> tackled(2,4);
		P2 == Coord8 -> tackled(2,3);
		P2 == Coord9 -> tackled(2,2);
		P2 == Coord10 -> tackled(2,1);
		

		true -> io:format("Starting Again ~n"), cs:start()
				
	end.


tackled(P, O) -> 
	io:format("Player ~s Has Been Tackled by opponent ~s~n", [integer_to_list(P), integer_to_list(O)]),
	if
		P == 1 -> io:format("Player 2 Wins!~n");
		P == 2 -> io:format("Player 1 Wins!~n")
	end.

errorB(P) ->
	io:format("Player ~s has gone in to touch ~n", [integer_to_list(P)]),
	if
		P == 1 -> io:format("Player 2 Wins!~n");
		P == 2 -> io:format("Player 1 Wins!~n")
	end.

tryScored(P) ->
	io:format("Player ~s has scored a try ~n", [integer_to_list(P)]),
	if
		P == 1 -> io:format("Player 1 Wins!~n");
		P == 2 -> io:format("Player 2 Wins!~n")
	end.

%% setCoords() -> 
%% 	List = t(),
%% 	getList(List),
%% 	%List = lists:split(10, ranNum()),
%% 	%io:format("List: ~p~n", [getList(List)]),
%% 	A = getNthList(1, List),
%% 	B = getNthList(2, List),
%% 	
%% 	%1st Team
%% 	Coord1 = lists:sublist(A, 2),
%% 	NewL = lists:subtract(A, Coord1),
%% 	Coord2 = lists:sublist(NewL, 2),
%% 	NewL2 = lists:subtract(NewL, Coord2),
%% 	Coord3 = lists:sublist(NewL2, 2),
%% 	NewL3 = lists:subtract(NewL2, Coord3),
%% 	Coord4 = lists:sublist(NewL3, 2),
%% 	NewL4 = lists:subtract(NewL3, Coord4),
%% 	Coord5 = lists:sublist(NewL4, 2),
%% 	
%% 	%2nd Team
%% 	Coord6 = lists:sublist(B, 2),
%% 	NewL6 = lists:subtract(B, Coord6),
%% 	Coord7 = lists:sublist(NewL6, 2),
%% 	NewL7 = lists:subtract(NewL6, Coord7),
%% 	Coord8 = lists:sublist(NewL7, 2),
%% 	NewL8 = lists:subtract(NewL7, Coord8),
%% 	Coord9 = lists:sublist(NewL8, 2),
%% 	NewL9 = lists:subtract(NewL8, Coord9),
%% 	Coord10 = lists:sublist(NewL9, 2),
%% 	
%% 	P1 = [1,3],
%% 	P2 = [5,5],
%% 	{P1, Coord1, Coord2, Coord3, Coord4, Coord5, P2, Coord6, Coord7, Coord8, Coord9, Coord10}.

%% %sending things to peers
%% addThings(Name) ->
%% 	List = t(),
%% 	%List = lists:split(10, ranNum()),
%% 	getList(List),
%% 	%io:format("List: ~p~n", [getList(List)]),
%% 	A = getNthList(1, List),
%% 	B = getNthList(2, List),
%% 	
%% 	%1st Team
%% 	Coord1 = lists:sublist(A, 2),
%% 	NewL = lists:subtract(A, Coord1),
%% 	Coord2 = lists:sublist(NewL, 2),
%% 	NewL2 = lists:subtract(NewL, Coord2),
%% 	Coord3 = lists:sublist(NewL2, 2),
%% 	NewL3 = lists:subtract(NewL2, Coord3),
%% 	Coord4 = lists:sublist(NewL3, 2),
%% 	NewL4 = lists:subtract(NewL3, Coord4),
%% 	Coord5 = lists:sublist(NewL4, 2),
%% 	
%% 	%2nd Team
%% 	Coord6 = lists:sublist(B, 2),
%% 	NewL6 = lists:subtract(B, Coord6),
%% 	Coord7 = lists:sublist(NewL6, 2),
%% 	NewL7 = lists:subtract(NewL6, Coord7),
%% 	Coord8 = lists:sublist(NewL7, 2),
%% 	NewL8 = lists:subtract(NewL7, Coord8),
%% 	Coord9 = lists:sublist(NewL8, 2),
%% 	NewL9 = lists:subtract(NewL8, Coord9),
%% 	Coord10 = lists:sublist(NewL9, 2),
%% 	
%% 	P1 = [1,3],
%% 	P2 = [5,5],
%% 	Record = #user{p1=P1, p2=P2, coord1=Coord1, coord2=Coord2, coord3=Coord3, coord4=Coord4, coord5=Coord5, coord6=Coord6, 
%% 				   coord7=Coord7, coord8=Coord8, coord9=Coord9, coord10=Coord10},
%%  	Name!{put, user}.
%%  	%Name!{put, t()}.
%%  	%Name!{put, grid}.
%% 
%% getThings(Name) ->
%% 	Name!{get, user}.

%addItems(Name) ->
%	Name!{put,music},
%	Name!{put,krakow},
%	Name!{put,ab},
%	Name!{put,document},
%	Name!{put,zakon},
%	Name!{put,zavrzlama},
%	Name!{put,skafoskafnjak},
%	Name!{put,brana},
%	Name!{put,kilo},
%	Name!{put,tristih}.

%addGrid(Name, GridDeats) ->
%	Name!{put, GridDeats}.

genBoard(Board, 10) -> lists:reverse(Board);
genBoard(Board, Rows) ->
	genBoard([genRow([], 9, Rows)|Board], Rows+1).

genRow(Row, 0, _RowNum) -> Row;
genRow(Row, NumCols, RowNum) ->
	genRow([{empty, RowNum, NumCols}|Row], NumCols-1, RowNum).

grid() ->
	%genBoard([ranNumT1], 10).
	io:format("~p~n", [genBoard([93, 91, 93, 91, 93, 91, 93, 91, 93, 91], 10)]).
	%io:format("~w~w~w ~n~w~w~w ~n~w~w~w ~n", [[ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ]]).

%accessing the different neighbours (players around the user)
north(R,C, Grid) ->
	element((R+4) rem 5, C, Grid).
south(R,C, Grid) ->
	element((R+1) rem 5, C, Grid).
east(R,C, Grid) ->
	element(R, (C+1) rem 5, Grid).
west(R,C, Grid) ->
	element(R, (C+4) rem 5, Grid).

this(R, C, Grid) ->
	element(R, C, Grid).


element(Row, Col, Grid) ->
	element(Col+1, element(Row+1, Col+1, Grid), Grid).
	
	