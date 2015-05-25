%% @author Andrea
%% @doc @todo Add description to gui.


-module(gui).

-compile(export_all).

-include_lib("wx/include/wx.hrl").

c(RN) ->
	Wx = wx:new(),
	Frame = wxFrame:new(Wx, ?wxID_ANY, "Rugby", [{size,{200,200}}]),
	
	%Fun = fun({_Pid, Name}) -> Name end,
	%{items, lists:map(Fun, OnlineNodes)}]),
	
	Panel = wxPanel:new(Frame, []),
	
    %% Setup sizers
    MainSizer = wxBoxSizer:new(?wxVERTICAL),
    Sizer = wxStaticBoxSizer:new(?wxVERTICAL, Panel),

    Grid = create_grid(Panel, RN),
	
    Options = [{flag, ?wxEXPAND}, {proportion, 1}],

    wxSizer:add(Sizer, Grid, Options),
    wxSizer:add(MainSizer, Sizer, Options),

    wxPanel:setSizer(Panel, MainSizer),
	
	wxSizer:fit(Sizer, Panel),
    wxFrame:fit(Frame),
	wxFrame:show(Frame).

create_grid(Panel, RN) ->
    %% Create the grid with 5 * 5 cells
    Grid = wxGrid:new(Panel, 2, []),
    wxGrid:createGrid(Grid, 5, 5),
	
	test:getCoords(Grid, RN),
	doFontR(Grid, 0, 0),
	doFontR(Grid, 1, 0),
	doFontR(Grid, 2, 0),
	doFontR(Grid, 3, 0),
	doFontR(Grid, 4, 0),

	wxGrid:setColLabelValue(Grid, 0, "1"),
	wxGrid:setColLabelValue(Grid, 1, "2"),
	wxGrid:setColLabelValue(Grid, 2, "3"),
	wxGrid:setColLabelValue(Grid, 3, "4"),
	wxGrid:setColLabelValue(Grid, 4, "5"),

	sizeCols(Grid, 0, 50),
	sizeRows(Grid, 0, 50),
	%wxGrid:setCellBackgroundColour(Grid, 0, 2, {181, 230, 29}),
	%wxGrid:setCellBackgroundColour(Grid, 4, 2, {181, 230, 29}),
	Grid.


addCharP1(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "P1").

addCharP2(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "P2").

addCharO1(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O10").
addCharO2(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O9").
addCharO3(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O8").
addCharO4(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O7").
addCharO5(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O6").
addCharO6(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O5").
addCharO7(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O4").
addCharO8(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O3").
addCharO9(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O2").
addCharO10(Grid, R, C) ->
	wxGrid:setCellValue(Grid, R, C, "O1").

doFontR(_, 0, 6) -> ok;
doFontR(_, 1, 6) -> ok;
doFontR(_, 2, 6) -> ok;
doFontR(_, 3, 6) -> ok;
doFontR(_, 4, 6) -> ok;
doFontR(_, 5, 6) -> ok;

doFontR(Grid, R, C) -> 
	wxGrid:setReadOnly(Grid, R, C, [{isReadOnly,true}]),
    Font = wxFont:new(20, ?wxFONTFAMILY_SWISS, ?wxFONTSTYLE_NORMAL, ?wxFONTWEIGHT_NORMAL, []),
	wxGrid:setCellBackgroundColour(Grid, R, C, {34,117,76}),
	wxGrid:setCellFont(Grid, R, C, Font),
	doFontR(Grid, R, C+1).

sizeCols(_, 6, _) -> ok;

sizeCols(Grid, C, Size) -> 
	wxGrid:setColSize(Grid, C, 70),
	sizeCols(Grid, C+1, Size).
	
sizeRows(_, 6, _) -> ok;

sizeRows(Grid, R, Size) -> 
	wxGrid:setRowSize(Grid, R, 70),
	sizeRows(Grid, R+1, Size).


