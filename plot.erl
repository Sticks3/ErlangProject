%% @author Andrea
%% @doc @todo gui:add description to plot.


-module(plot).

-compile(export_all).

-include_lib("wx/include/wx.hrl").

plotP1(_, _, _, 0) -> ok;
plotP1(Grid, X, Y, Count) -> gui:addCharP1(Grid, Y-1, X-1).

plotP2(_, _, _, 0) -> ok;
plotP2(Grid, X, Y, Count) -> gui:addCharP2(Grid, Y-1, X-1).

plotO1(_, _, _, 0) -> ok;
plotO1(Grid, X, Y, Count) -> gui:addCharO1(Grid, Y-1, X-1).
plotO2(_, _, _, 0) -> ok;
plotO2(Grid, X, Y, Count) -> gui:addCharO2(Grid, Y-1, X-1).
plotO3(_, _, _, 0) -> ok;
plotO3(Grid, X, Y, Count) -> gui:addCharO3(Grid, Y-1, X-1).
plotO4(_, _, _, 0) -> ok;
plotO4(Grid, X, Y, Count) -> gui:addCharO4(Grid, Y-1, X-1).
plotO5(_, _, _, 0) -> ok;
plotO5(Grid, X, Y, Count) -> gui:addCharO5(Grid, Y-1, X-1).
plotO6(_, _, _, 0) -> ok;
plotO6(Grid, X, Y, Count) -> gui:addCharO6(Grid, Y-1, X-1).
plotO7(_, _, _, 0) -> ok;
plotO7(Grid, X, Y, Count) -> gui:addCharO7(Grid, Y-1, X-1).
plotO8(_, _, _, 0) -> ok;
plotO8(Grid, X, Y, Count) -> gui:addCharO8(Grid, Y-1, X-1).
plotO9(_, _, _, 0) -> ok;
plotO9(Grid, X, Y, Count) -> gui:addCharO9(Grid, Y-1, X-1).
plot10(_, _, _, 0) -> ok;
plot10(Grid, X, Y, Count) -> gui:addCharO10(Grid, Y-1, X-1).



%% plot(Grid, P1, Coord1, Coord2, Coord3, Coord4, Coord5, P2, Coord6, Coord7, Coord8, Coord9, Coord10) ->
%% 	if
%% 		P1 == [1,1] -> gui:addCharP1(Grid, 0, 0);
%% 		P1 == [2,1] -> gui:addCharP1(Grid, 1, 0);
%% 		P1 == [3,1] -> gui:addCharP1(Grid, 2, 0);
%% 		P1 == [4,1] -> gui:addCharP1(Grid, 3, 0);
%% 		P1 == [5,1] -> gui:addCharP1(Grid, 4, 0);
%% 		P1 == [1,2] -> gui:addCharP1(Grid, 0, 1);
%% 		P1 == [2,2] -> gui:addCharP1(Grid, 1, 1);
%% 		P1 == [3,2] -> gui:addCharP1(Grid, 2, 1);
%% 		P1 == [4,2] -> gui:addCharP1(Grid, 3, 1);
%% 		P1 == [5,2] -> gui:addCharP1(Grid, 4, 1);
%% 		P1 == [1,3] -> gui:addCharP1(Grid, 0, 2);
%% 		P1 == [2,3] -> gui:addCharP1(Grid, 1, 2);
%% 		P1 == [3,3] -> gui:addCharP1(Grid, 2, 2);
%% 		P1 == [4,3] -> gui:addCharP1(Grid, 3, 2);
%% 		P1 == [5,3] -> gui:addCharP1(Grid, 4, 2);
%% 		P1 == [1,4] -> gui:addCharP1(Grid, 0, 3);
%% 		P1 == [2,4] -> gui:addCharP1(Grid, 1, 3);
%% 		P1 == [3,4] -> gui:addCharP1(Grid, 2, 3);
%% 		P1 == [4,4] -> gui:addCharP1(Grid, 3, 3);
%% 		P1 == [5,4] -> gui:addCharP1(Grid, 4, 3);
%% 		P1 == [1,5] -> gui:addCharP1(Grid, 0, 4);
%% 		P1 == [2,5] -> gui:addCharP1(Grid, 1, 4);
%% 		P1 == [3,5] -> gui:addCharP1(Grid, 2, 4);
%% 		P1 == [4,5] -> gui:addCharP1(Grid, 3, 4);
%% 		P1 == [5,5] -> gui:addCharP1(Grid, 4, 4)
%% 	end,
%% 
%% 	if	
%% 		P2 == [1,1] -> gui:addCharP2(Grid, 0, 0);
%% 		P2 == [2,1] -> gui:addCharP2(Grid, 1, 0);
%% 		P2 == [3,1] -> gui:addCharP2(Grid, 2, 0);
%% 		P2 == [4,1] -> gui:addCharP2(Grid, 3, 0);
%% 		P2 == [5,1] -> gui:addCharP2(Grid, 4, 0);
%% 		P2 == [1,2] -> gui:addCharP2(Grid, 0, 1);
%% 		P2 == [2,2] -> gui:addCharP2(Grid, 1, 1);
%% 		P2 == [3,2] -> gui:addCharP2(Grid, 2, 1);
%% 		P2 == [4,2] -> gui:addCharP2(Grid, 3, 1);
%% 		P2 == [5,2] -> gui:addCharP2(Grid, 4, 1);
%% 		P2 == [1,3] -> gui:addCharP2(Grid, 0, 2);
%% 		P2 == [2,3] -> gui:addCharP2(Grid, 1, 2);
%% 		P2 == [3,3] -> gui:addCharP2(Grid, 2, 2);
%% 		P2 == [4,3] -> gui:addCharP2(Grid, 3, 2);
%% 		P2 == [5,3] -> gui:addCharP2(Grid, 4, 2);
%% 		P2 == [1,4] -> gui:addCharP2(Grid, 0, 3);
%% 		P2 == [2,4] -> gui:addCharP2(Grid, 1, 3);
%% 		P2 == [3,4] -> gui:addCharP2(Grid, 2, 3);
%% 		P2 == [4,4] -> gui:addCharP2(Grid, 3, 3);
%% 		P2 == [5,4] -> gui:addCharP2(Grid, 4, 3);
%% 		P2 == [1,5] -> gui:addCharP2(Grid, 0, 4);
%% 		P2 == [2,5] -> gui:addCharP2(Grid, 1, 4);
%% 		P2 == [3,5] -> gui:addCharP2(Grid, 2, 4);
%% 		P2 == [4,5] -> gui:addCharP2(Grid, 3, 4);
%% 		P2 == [5,5] -> gui:addCharP2(Grid, 4, 4)
%% 	end,
%% 
%% 	if	
%% 		Coord1 == [1,1] -> gui:addCharO1(Grid, 0, 0);
%% 		Coord1 == [2,1] -> gui:addCharO1(Grid, 1, 0);
%% 		Coord1 == [3,1] -> gui:addCharO1(Grid, 2, 0);
%% 		Coord1 == [4,1] -> gui:addCharO1(Grid, 3, 0);
%% 		Coord1 == [5,1] -> gui:addCharO1(Grid, 4, 0);
%% 		Coord1 == [1,2] -> gui:addCharO1(Grid, 0, 1);
%% 		Coord1 == [2,2] -> gui:addCharO1(Grid, 1, 1);
%% 		Coord1 == [3,2] -> gui:addCharO1(Grid, 2, 1);
%% 		Coord1 == [4,2] -> gui:addCharO1(Grid, 3, 1);
%% 		Coord1 == [5,2] -> gui:addCharO1(Grid, 4, 1);
%% 		Coord1 == [1,3] -> gui:addCharO1(Grid, 0, 2);
%% 		Coord1 == [2,3] -> gui:addCharO1(Grid, 1, 2);
%% 		Coord1 == [3,3] -> gui:addCharO1(Grid, 2, 2);
%% 		Coord1 == [4,3] -> gui:addCharO1(Grid, 3, 2);
%% 		Coord1 == [5,3] -> gui:addCharO1(Grid, 4, 2);
%% 		Coord1 == [1,4] -> gui:addCharO1(Grid, 0, 3);
%% 		Coord1 == [2,4] -> gui:addCharO1(Grid, 1, 3);
%% 		Coord1 == [3,4] -> gui:addCharO1(Grid, 2, 3);
%% 		Coord1 == [4,4] -> gui:addCharO1(Grid, 3, 3);
%% 		Coord1 == [5,4] -> gui:addCharO1(Grid, 4, 3);
%% 		Coord1 == [1,5] -> gui:addCharO1(Grid, 0, 4);
%% 		Coord1 == [2,5] -> gui:addCharO1(Grid, 1, 4);
%% 		Coord1 == [3,5] -> gui:addCharO1(Grid, 2, 4);
%% 		Coord1 == [4,5] -> gui:addCharO1(Grid, 3, 4);
%% 		Coord1 == [5,5] -> gui:addCharO1(Grid, 4, 4)
%% 	end,
%% 
%% 	if	
%% 		Coord2 == [1,1] -> gui:addCharO2(Grid, 0, 0);
%% 		Coord2 == [2,1] -> gui:addCharO2(Grid, 1, 0);
%% 		Coord2 == [3,1] -> gui:addCharO2(Grid, 2, 0);
%% 		Coord2 == [4,1] -> gui:addCharO2(Grid, 3, 0);
%% 		Coord2 == [5,1] -> gui:addCharO2(Grid, 4, 0);
%% 		Coord2 == [1,2] -> gui:addCharO2(Grid, 0, 1);
%% 		Coord2 == [2,2] -> gui:addCharO2(Grid, 1, 1);
%% 		Coord2 == [3,2] -> gui:addCharO2(Grid, 2, 1);
%% 		Coord2 == [4,2] -> gui:addCharO2(Grid, 3, 1);
%% 		Coord2 == [5,2] -> gui:addCharO2(Grid, 4, 1);
%% 		Coord2 == [1,3] -> gui:addCharO2(Grid, 0, 2);
%% 		Coord2 == [2,3] -> gui:addCharO2(Grid, 1, 2);
%% 		Coord2 == [3,3] -> gui:addCharO2(Grid, 2, 2);
%% 		Coord2 == [4,3] -> gui:addCharO2(Grid, 3, 2);
%% 		Coord2 == [5,3] -> gui:addCharO2(Grid, 4, 2);
%% 		Coord2 == [1,4] -> gui:addCharO2(Grid, 0, 3);
%% 		Coord2 == [2,4] -> gui:addCharO2(Grid, 1, 3);
%% 		Coord2 == [3,4] -> gui:addCharO2(Grid, 2, 3);
%% 		Coord2 == [4,4] -> gui:addCharO2(Grid, 3, 3);
%% 		Coord2 == [5,4] -> gui:addCharO2(Grid, 4, 3);
%% 		Coord2 == [1,5] -> gui:addCharO2(Grid, 0, 4);
%% 		Coord2 == [2,5] -> gui:addCharO2(Grid, 1, 4);
%% 		Coord2 == [3,5] -> gui:addCharO2(Grid, 2, 4);
%% 		Coord2 == [4,5] -> gui:addCharO2(Grid, 3, 4);
%% 		Coord2 == [5,5] -> gui:addCharO2(Grid, 4, 4)
%% 	end,
%% 	
%% 	if	
%% 		Coord3 == [1,1] -> gui:addCharO3(Grid, 0, 0);
%% 		Coord3 == [2,1] -> gui:addCharO3(Grid, 1, 0);
%% 		Coord3 == [3,1] -> gui:addCharO3(Grid, 2, 0);
%% 		Coord3 == [4,1] -> gui:addCharO3(Grid, 3, 0);
%% 		Coord3 == [5,1] -> gui:addCharO3(Grid, 4, 0);
%% 		Coord3 == [1,2] -> gui:addCharO3(Grid, 0, 1);
%% 		Coord3 == [2,2] -> gui:addCharO3(Grid, 1, 1);
%% 		Coord3 == [3,2] -> gui:addCharO3(Grid, 2, 1);
%% 		Coord3 == [4,2] -> gui:addCharO3(Grid, 3, 1);
%% 		Coord3 == [5,2] -> gui:addCharO3(Grid, 4, 1);
%% 		Coord3 == [1,3] -> gui:addCharO3(Grid, 0, 2);
%% 		Coord3 == [2,3] -> gui:addCharO3(Grid, 1, 2);
%% 		Coord3 == [3,3] -> gui:addCharO3(Grid, 2, 2);
%% 		Coord3 == [4,3] -> gui:addCharO3(Grid, 3, 2);
%% 		Coord3 == [5,3] -> gui:addCharO3(Grid, 4, 2);
%% 		Coord3 == [1,4] -> gui:addCharO3(Grid, 0, 3);
%% 		Coord3 == [2,4] -> gui:addCharO3(Grid, 1, 3);
%% 		Coord3 == [3,4] -> gui:addCharO3(Grid, 2, 3);
%% 		Coord3 == [4,4] -> gui:addCharO3(Grid, 3, 3);
%% 		Coord3 == [5,4] -> gui:addCharO3(Grid, 4, 3);
%% 		Coord3 == [1,5] -> gui:addCharO3(Grid, 0, 4);
%% 		Coord3 == [2,5] -> gui:addCharO3(Grid, 1, 4);
%% 		Coord3 == [3,5] -> gui:addCharO3(Grid, 2, 4);
%% 		Coord3 == [4,5] -> gui:addCharO3(Grid, 3, 4);
%% 		Coord3 == [5,5] -> gui:addCharO3(Grid, 4, 4)
%% 	end,
%% 	
%% 	if	
%% 		Coord4 == [1,1] -> gui:addCharO4(Grid, 0, 0);
%% 		Coord4 == [2,1] -> gui:addCharO4(Grid, 1, 0);
%% 		Coord4 == [3,1] -> gui:addCharO4(Grid, 2, 0);
%% 		Coord4 == [4,1] -> gui:addCharO4(Grid, 3, 0);
%% 		Coord4 == [5,1] -> gui:addCharO4(Grid, 4, 0);
%% 		Coord4 == [1,2] -> gui:addCharO4(Grid, 0, 1);
%% 		Coord4 == [2,2] -> gui:addCharO4(Grid, 1, 1);
%% 		Coord4 == [3,2] -> gui:addCharO4(Grid, 2, 1);
%% 		Coord4 == [4,2] -> gui:addCharO4(Grid, 3, 1);
%% 		Coord4 == [5,2] -> gui:addCharO4(Grid, 4, 1);
%% 		Coord4 == [1,3] -> gui:addCharO4(Grid, 0, 2);
%% 		Coord4 == [2,3] -> gui:addCharO4(Grid, 1, 2);
%% 		Coord4 == [3,3] -> gui:addCharO4(Grid, 2, 2);
%% 		Coord4 == [4,3] -> gui:addCharO4(Grid, 3, 2);
%% 		Coord4 == [5,3] -> gui:addCharO4(Grid, 4, 2);
%% 		Coord4 == [1,4] -> gui:addCharO4(Grid, 0, 3);
%% 		Coord4 == [2,4] -> gui:addCharO4(Grid, 1, 3);
%% 		Coord4 == [3,4] -> gui:addCharO4(Grid, 2, 3);
%% 		Coord4 == [4,4] -> gui:addCharO4(Grid, 3, 3);
%% 		Coord4 == [5,4] -> gui:addCharO4(Grid, 4, 3);
%% 		Coord4 == [1,5] -> gui:addCharO4(Grid, 0, 4);
%% 		Coord4 == [2,5] -> gui:addCharO4(Grid, 1, 4);
%% 		Coord4 == [3,5] -> gui:addCharO4(Grid, 2, 4);
%% 		Coord4 == [4,5] -> gui:addCharO4(Grid, 3, 4);
%% 		Coord4 == [5,5] -> gui:addCharO4(Grid, 4, 4)
%% 	end,
%% 	
%% 	if	
%% 		Coord5 == [1,1] -> gui:addCharO5(Grid, 0, 0);
%% 		Coord5 == [2,1] -> gui:addCharO5(Grid, 1, 0);
%% 		Coord5 == [3,1] -> gui:addCharO5(Grid, 2, 0);
%% 		Coord5 == [4,1] -> gui:addCharO5(Grid, 3, 0);
%% 		Coord5 == [5,1] -> gui:addCharO5(Grid, 4, 0);
%% 		Coord5 == [1,2] -> gui:addCharO5(Grid, 0, 1);
%% 		Coord5 == [2,2] -> gui:addCharO5(Grid, 1, 1);
%% 		Coord5 == [3,2] -> gui:addCharO5(Grid, 2, 1);
%% 		Coord5 == [4,2] -> gui:addCharO5(Grid, 3, 1);
%% 		Coord5 == [5,2] -> gui:addCharO5(Grid, 4, 1);
%% 		Coord5 == [1,3] -> gui:addCharO5(Grid, 0, 2);
%% 		Coord5 == [2,3] -> gui:addCharO5(Grid, 1, 2);
%% 		Coord5 == [3,3] -> gui:addCharO5(Grid, 2, 2);
%% 		Coord5 == [4,3] -> gui:addCharO5(Grid, 3, 2);
%% 		Coord5 == [5,3] -> gui:addCharO5(Grid, 4, 2);
%% 		Coord5 == [1,4] -> gui:addCharO5(Grid, 0, 3);
%% 		Coord5 == [2,4] -> gui:addCharO5(Grid, 1, 3);
%% 		Coord5 == [3,4] -> gui:addCharO5(Grid, 2, 3);
%% 		Coord5 == [4,4] -> gui:addCharO5(Grid, 3, 3);
%% 		Coord5 == [5,4] -> gui:addCharO5(Grid, 4, 3);
%% 		Coord5 == [1,5] -> gui:addCharO5(Grid, 0, 4);
%% 		Coord5 == [2,5] -> gui:addCharO5(Grid, 1, 4);
%% 		Coord5 == [3,5] -> gui:addCharO5(Grid, 2, 4);
%% 		Coord5 == [4,5] -> gui:addCharO5(Grid, 3, 4);
%% 		Coord5 == [5,5] -> gui:addCharO5(Grid, 4, 4)
%% 	end,
%% 	
%% 	if	
%% 		Coord6 == [1,1] -> gui:addCharO6(Grid, 0, 0);
%% 		Coord6 == [2,1] -> gui:addCharO6(Grid, 1, 0);
%% 		Coord6 == [3,1] -> gui:addCharO6(Grid, 2, 0);
%% 		Coord6 == [4,1] -> gui:addCharO6(Grid, 3, 0);
%% 		Coord6 == [5,1] -> gui:addCharO6(Grid, 4, 0);
%% 		Coord6 == [1,2] -> gui:addCharO6(Grid, 0, 1);
%% 		Coord6 == [2,2] -> gui:addCharO6(Grid, 1, 1);
%% 		Coord6 == [3,2] -> gui:addCharO6(Grid, 2, 1);
%% 		Coord6 == [4,2] -> gui:addCharO6(Grid, 3, 1);
%% 		Coord6 == [5,2] -> gui:addCharO6(Grid, 4, 1);
%% 		Coord6 == [1,3] -> gui:addCharO6(Grid, 0, 2);
%% 		Coord6 == [2,3] -> gui:addCharO6(Grid, 1, 2);
%% 		Coord6 == [3,3] -> gui:addCharO6(Grid, 2, 2);
%% 		Coord6 == [4,3] -> gui:addCharO6(Grid, 3, 2);
%% 		Coord6 == [5,3] -> gui:addCharO6(Grid, 4, 2);
%% 		Coord6 == [1,4] -> gui:addCharO6(Grid, 0, 3);
%% 		Coord6 == [2,4] -> gui:addCharO6(Grid, 1, 3);
%% 		Coord6 == [3,4] -> gui:addCharO6(Grid, 2, 3);
%% 		Coord6 == [4,4] -> gui:addCharO6(Grid, 3, 3);
%% 		Coord6 == [5,4] -> gui:addCharO6(Grid, 4, 3);
%% 		Coord6 == [1,5] -> gui:addCharO6(Grid, 0, 4);
%% 		Coord6 == [2,5] -> gui:addCharO6(Grid, 1, 4);
%% 		Coord6 == [3,5] -> gui:addCharO6(Grid, 2, 4);
%% 		Coord6 == [4,5] -> gui:addCharO6(Grid, 3, 4);
%% 		Coord6 == [5,5] -> gui:addCharO6(Grid, 4, 4)
%% 	end,
%% 
%% 	if	
%% 		Coord7 == [1,1] -> gui:addCharO7(Grid, 0, 0);
%% 		Coord7 == [2,1] -> gui:addCharO7(Grid, 1, 0);
%% 		Coord7 == [3,1] -> gui:addCharO7(Grid, 2, 0);
%% 		Coord7 == [4,1] -> gui:addCharO7(Grid, 3, 0);
%% 		Coord7 == [5,1] -> gui:addCharO7(Grid, 4, 0);
%% 		Coord7 == [1,2] -> gui:addCharO7(Grid, 0, 1);
%% 		Coord7 == [2,2] -> gui:addCharO7(Grid, 1, 1);
%% 		Coord7 == [3,2] -> gui:addCharO7(Grid, 2, 1);
%% 		Coord7 == [4,2] -> gui:addCharO7(Grid, 3, 1);
%% 		Coord7 == [5,2] -> gui:addCharO7(Grid, 4, 1);
%% 		Coord7 == [1,3] -> gui:addCharO7(Grid, 0, 2);
%% 		Coord7 == [2,3] -> gui:addCharO7(Grid, 1, 2);
%% 		Coord7 == [3,3] -> gui:addCharO7(Grid, 2, 2);
%% 		Coord7 == [4,3] -> gui:addCharO7(Grid, 3, 2);
%% 		Coord7 == [5,3] -> gui:addCharO7(Grid, 4, 2);
%% 		Coord7 == [1,4] -> gui:addCharO7(Grid, 0, 3);
%% 		Coord7 == [2,4] -> gui:addCharO7(Grid, 1, 3);
%% 		Coord7 == [3,4] -> gui:addCharO7(Grid, 2, 3);
%% 		Coord7 == [4,4] -> gui:addCharO7(Grid, 3, 3);
%% 		Coord7 == [5,4] -> gui:addCharO7(Grid, 4, 3);
%% 		Coord7 == [1,5] -> gui:addCharO7(Grid, 0, 4);
%% 		Coord7 == [2,5] -> gui:addCharO7(Grid, 1, 4);
%% 		Coord7 == [3,5] -> gui:addCharO7(Grid, 2, 4);
%% 		Coord7 == [4,5] -> gui:addCharO7(Grid, 3, 4);
%% 		Coord7 == [5,5] -> gui:addCharO7(Grid, 4, 4)
%% 	end,
%% 
%% 	if	
%% 		Coord8 == [1,1] -> gui:addCharO8(Grid, 0, 0);
%% 		Coord8 == [2,1] -> gui:addCharO8(Grid, 1, 0);
%% 		Coord8 == [3,1] -> gui:addCharO8(Grid, 2, 0);
%% 		Coord8 == [4,1] -> gui:addCharO8(Grid, 3, 0);
%% 		Coord8 == [5,1] -> gui:addCharO8(Grid, 4, 0);
%% 		Coord8 == [1,2] -> gui:addCharO8(Grid, 0, 1);
%% 		Coord8 == [2,2] -> gui:addCharO8(Grid, 1, 1);
%% 		Coord8 == [3,2] -> gui:addCharO8(Grid, 2, 1);
%% 		Coord8 == [4,2] -> gui:addCharO8(Grid, 3, 1);
%% 		Coord8 == [5,2] -> gui:addCharO8(Grid, 4, 1);
%% 		Coord8 == [1,3] -> gui:addCharO8(Grid, 0, 2);
%% 		Coord8 == [2,3] -> gui:addCharO8(Grid, 1, 2);
%% 		Coord8 == [3,3] -> gui:addCharO8(Grid, 2, 2);
%% 		Coord8 == [4,3] -> gui:addCharO8(Grid, 3, 2);
%% 		Coord8 == [5,3] -> gui:addCharO8(Grid, 4, 2);
%% 		Coord8 == [1,4] -> gui:addCharO8(Grid, 0, 3);
%% 		Coord8 == [2,4] -> gui:addCharO8(Grid, 1, 3);
%% 		Coord8 == [3,4] -> gui:addCharO8(Grid, 2, 3);
%% 		Coord8 == [4,4] -> gui:addCharO8(Grid, 3, 3);
%% 		Coord8 == [5,4] -> gui:addCharO8(Grid, 4, 3);
%% 		Coord8 == [1,5] -> gui:addCharO8(Grid, 0, 4);
%% 		Coord8 == [2,5] -> gui:addCharO8(Grid, 1, 4);
%% 		Coord8 == [3,5] -> gui:addCharO8(Grid, 2, 4);
%% 		Coord8 == [4,5] -> gui:addCharO8(Grid, 3, 4);
%% 		Coord8 == [5,5] -> gui:addCharO8(Grid, 4, 4)
%% 	end,
%% 	
%% 	if	
%% 		Coord9 == [1,1] -> gui:addCharO9(Grid, 0, 0);
%% 		Coord9 == [2,1] -> gui:addCharO9(Grid, 1, 0);
%% 		Coord9 == [3,1] -> gui:addCharO9(Grid, 2, 0);
%% 		Coord9 == [4,1] -> gui:addCharO9(Grid, 3, 0);
%% 		Coord9 == [5,1] -> gui:addCharO9(Grid, 4, 0);
%% 		Coord9 == [1,2] -> gui:addCharO9(Grid, 0, 1);
%% 		Coord9 == [2,2] -> gui:addCharO9(Grid, 1, 1);
%% 		Coord9 == [3,2] -> gui:addCharO9(Grid, 2, 1);
%% 		Coord9 == [4,2] -> gui:addCharO9(Grid, 3, 1);
%% 		Coord9 == [5,2] -> gui:addCharO9(Grid, 4, 1);
%% 		Coord9 == [1,3] -> gui:addCharO9(Grid, 0, 2);
%% 		Coord9 == [2,3] -> gui:addCharO9(Grid, 1, 2);
%% 		Coord9 == [3,3] -> gui:addCharO9(Grid, 2, 2);
%% 		Coord9 == [4,3] -> gui:addCharO9(Grid, 3, 2);
%% 		Coord9 == [5,3] -> gui:addCharO9(Grid, 4, 2);
%% 		Coord9 == [1,4] -> gui:addCharO9(Grid, 0, 3);
%% 		Coord9 == [2,4] -> gui:addCharO9(Grid, 1, 3);
%% 		Coord9 == [3,4] -> gui:addCharO9(Grid, 2, 3);
%% 		Coord9 == [4,4] -> gui:addCharO9(Grid, 3, 3);
%% 		Coord9 == [5,4] -> gui:addCharO9(Grid, 4, 3);
%% 		Coord9 == [1,5] -> gui:addCharO9(Grid, 0, 4);
%% 		Coord9 == [2,5] -> gui:addCharO9(Grid, 1, 4);
%% 		Coord9 == [3,5] -> gui:addCharO9(Grid, 2, 4);
%% 		Coord9 == [4,5] -> gui:addCharO9(Grid, 3, 4);
%% 		Coord9 == [5,5] -> gui:addCharO9(Grid, 4, 4)
%% 	end,
%% 	
%% 	if	
%% 		Coord10 == [1,1] -> gui:addCharO10(Grid, 0, 0);
%% 		Coord10 == [2,1] -> gui:addCharO10(Grid, 1, 0);
%% 		Coord10 == [3,1] -> gui:addCharO10(Grid, 2, 0);
%% 		Coord10 == [4,1] -> gui:addCharO10(Grid, 3, 0);
%% 		Coord10 == [5,1] -> gui:addCharO10(Grid, 4, 0);
%% 		Coord10 == [1,2] -> gui:addCharO10(Grid, 0, 1);
%% 		Coord10 == [2,2] -> gui:addCharO10(Grid, 1, 1);
%% 		Coord10 == [3,2] -> gui:addCharO10(Grid, 2, 1);
%% 		Coord10 == [4,2] -> gui:addCharO10(Grid, 3, 1);
%% 		Coord10 == [5,2] -> gui:addCharO10(Grid, 4, 1);
%% 		Coord10 == [1,3] -> gui:addCharO10(Grid, 0, 2);
%% 		Coord10 == [2,3] -> gui:addCharO10(Grid, 1, 2);
%% 		Coord10 == [3,3] -> gui:addCharO10(Grid, 2, 2);
%% 		Coord10 == [4,3] -> gui:addCharO10(Grid, 3, 2);
%% 		Coord10 == [5,3] -> gui:addCharO10(Grid, 4, 2);
%% 		Coord10 == [1,4] -> gui:addCharO10(Grid, 0, 3);
%% 		Coord10 == [2,4] -> gui:addCharO10(Grid, 1, 3);
%% 		Coord10 == [3,4] -> gui:addCharO10(Grid, 2, 3);
%% 		Coord10 == [4,4] -> gui:addCharO10(Grid, 3, 3);
%% 		Coord10 == [5,4] -> gui:addCharO10(Grid, 4, 3);
%% 		Coord10 == [1,5] -> gui:addCharO10(Grid, 0, 4);
%% 		Coord10 == [2,5] -> gui:addCharO10(Grid, 1, 4);
%% 		Coord10 == [3,5] -> gui:addCharO10(Grid, 2, 4);
%% 		Coord10 == [4,5] -> gui:addCharO10(Grid, 3, 4);
%% 		Coord10 == [5,5] -> gui:addCharO10(Grid, 4, 4)
%% 	end.
%% 
%% plotP1(_, _, 0, 6) -> ok;
%% plotP1(_, _, 1, 6) -> ok;
%% plotP1(_, _, 2, 6) -> ok;
%% plotP1(_, _, 3, 6) -> ok;
%% plotP1(_, _, 4, 6) -> ok;
%% plotP1(_, _, 5, 6) -> ok;
%% plotP1(_, _, 6, 6) -> ok;
%% plotP1(_, _, 6, 0) -> ok;
%% plotP1(_, _, 6, 1) -> ok;
%% plotP1(_, _, 6, 2) -> ok;
%% plotP1(_, _, 6, 3) -> ok;
%% plotP1(_, _, 6, 4) -> ok;
%% plotP1(_, _, 6, 5) -> ok;

%% plotP1(Grid, P1, Count, X, Y) -> 
%% 	X=5,
%% 	Y=5,
%% 	io:format("x: ~p ~ny:~p ~n", [X,Y]),
%% 	P1={[X,Y]}, gui:addCharP1(Grid, X, Y),
%% 	io:format("X1: ~p~nY1: ~p~n", [X,Y]),
%% 	gui:addCharP1(Grid, X, Y),
%% 	plotP1(Grid, P1, Count-1, X, Y).
