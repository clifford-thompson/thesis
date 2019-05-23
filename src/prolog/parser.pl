% *************************************************************************** %
%
%  Copyright (c) 2005-2019 Clifford Thompson
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
%      File : parser.pl            %
%                                  %
% ******************************** %

/* set the default float point precious for printing */
/* to the standard output                            */

:- set_prolog_flag(float_format, '%.18g').

/* load the required files */

:- [tools/tree_draw_swi].
:- [rules/rules].
:- [lexicon/lexicon].
:- [memory/memory].
:- [anaphora/anaphora].

/*                                               */
/* some predicates that define parsing behavoiur */
/*                                               */

parser_parsing_only(false).

/*                              */
/* things to execute at startup */
/*                              */

:- nn_generateNodes.

%:- guitracer.

/*                                   */
/* Tools for view the neural network */
/*                                   */

parser_showNn :-

	listing(nn_semNode/4), nl, nl.

parser_assertDcg(Rule) :-

	expand_term(Rule, Clause),
	assert(Clause).

/*************************************************/
/* predicates for parsing a corpus               */
/*************************************************/

parser_parseCorpus([]).

parser_parseCorpus([S|Ss]) :-

	sent(_,PT,S,[]),!,
	wm_checkLinks,!,
	write('************************************************************************************************************************************************'),nl,nl,!,
	drucke_baum(PT), nl,!,
	wm_workingMemory(WM),!,
	length(WM,Length),!,
	write('Working Memory: '), write(WM), write( '('), write(Length), write(')'),nl, !,
	/*parser_showNn,!,*/
	write('************************************************************************************************************************************************'),nl,nl,!,
	parser_parseCorpus(Ss).
