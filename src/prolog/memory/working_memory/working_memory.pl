% *************************************************************************** %
%
%  Copyright (c) 2004-2019 Clifford Thompson
%
%  This program is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation, either version 3 of the License, or
%  (at your option) any later version.
%
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%
%  You should have received a copy of the GNU General Public License
%  along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
% *************************************************************************** %

% ******************************** %
%                                  %
%      Class: MCPS 791             %
%      Prof : Dr.Charles Brown     %
%      File : working_memory.pl    %
%                                  %
% ******************************** %

:- dynamic nn_semNode/4.
:- dynamic wm_workingMemory/1.

wm_workingMemory([]).

% Thompson threshold
%wm_activationThreshold(0.5).

% ACT-R threshold
wm_activationThreshold(0.5).

%
% add the semantic marker to working memory
%

wm_activateWm(SemMarker) :-

	nn_semNode(SemMarker,_Bias,Activation,_ActHistory),
	wm_activationThreshold(Threshold),
	Activation > Threshold,!,
	wm_workingMemory(List),!,
	union([SemMarker],List,NewList),!,
	retractall(wm_workingMemory(_)),!,
	asserta(wm_workingMemory(NewList)),!,
	write(SemMarker), write(' activated ('), write(Activation), write(')\n'),!.

/* node not activated */

wm_activateWm(_).

%
% check to see if semantic links exists between items in
% working memory
%


wm_checkLinks :-

	wm_workingMemory(List),!,
	wm_removeStale(List,NewList),!,
	retractall(wm_workingMemory(_)),!,
	asserta(wm_workingMemory(NewList)),!,
	wm_checkLinks(NewList,NewList),!.

wm_checkLinks([],_SemMarkers).

wm_checkLinks([Marker|Ms],Markers) :-

	wm_checkLink(Marker,Markers),!,
	wm_checkLinks(Ms,Markers),!.


wm_checkLink(_Marker,[]).

wm_checkLink(Marker1,[Marker1|M2s]) :-

	wm_checkLink(Marker1,M2s),!.

wm_checkLink(Marker1,[Marker2|M2s]) :-

	nn_semLink(Marker1,Marker2,_W),
	wm_checkLink(Marker1,M2s),!.

wm_checkLink(Marker1,[Marker2|M2s]) :-

	nn_defaultWeight(Weight),
	assert(nn_semLink(Marker1,Marker2,Weight)),
	wm_checkLink(Marker1,M2s),!.







%
% Remove nodes from working memory that have reached a certain
% fading threshold
%

wm_removeStale([],[]).

wm_removeStale([Marker|Ms],NewMs) :-

	nn_semNode(Marker,_Bias,Activation,_),
	wm_activationThreshold(Threshold),
	Activation < Threshold,
	write(Marker),write(' faded\n'),
	wm_removeStale(Ms,NewMs),!.

wm_removeStale([Marker|Ms],[Marker|NewMs]) :-

	wm_removeStale(Ms,NewMs),!.
