% *************************************************************************** %
%
%  Copyright (c) 2003-2019 Clifford Thompson
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
%      File : neural_networks.pl   %
%                                  %
% ******************************** %

:- dynamic nn_semNode/4.
:- dynamic nn_semLink/3.

nn_defaultBias(0.0).
nn_defaultActivation(0.0).
nn_defaultWeight(0.00000001).
nn_defaultActivationFade(0.9999999).
nn_defaultActivationHistory([]).

nn_lowestActivation(-1).
nn_highestActivation(1).

nn_learningRate(0.0005).
nn_unlearningRate(0.00000001).
nn_decayRate(0.0001).

/*                                           */
/* predicates for generating nodes and links */
/*                                           */

nn_generateNodes :-

        retractall(nn_semLink(_,_,_)),!,
        retractall(nn_semNode(_,_,_,_)),!,
        findall(Marker,marker(Marker),Bag),!,
        nn_generateNode(Bag),!.

nn_generateNode([]).
nn_generateNode([Marker|Ms]) :-

        nn_defaultBias(Bias),!,
        nn_defaultActivation(Act),!,
        nn_defaultActivationHistory(History),!,
        asserta(nn_semNode(Marker,Bias,Act,History)),!,
        nn_generateNode(Ms),!.

nn_generateLinks :-

retractall(nn_semLink(_,_,_)),!,
        findall(Marker,nn_semNode(Marker,_,_,_),Bag),!,
        nn_makeLinks(Bag,Bag),!.

nn_makeLinks([],_Markers).
nn_makeLinks([Marker|Ms],Markers) :-

        nn_makeLink(Marker,Markers),!,
        nn_makeLinks(Ms,Markers),!.

nn_makeLink(_Marker,[]).
nn_makeLink(Marker1,[Marker2|M2s]) :-

        Marker1 == Marker2,!,
        nn_makeLink(Marker1,M2s),!.

nn_makeLink(Marker1,[Marker2|M2s]) :-

        nn_defaultWeight(Weight),!,
        asserta(nn_semLink(Marker1,Marker2,Weight)),!,
        nn_makeLink(Marker1,M2s),!.


%
% fading effect of concepts in working memory
%

nn_fadeNodes :- parser_parsing_only(true),!.

nn_fadeNodes :-

        findall(Marker,Bias^Act^ActHistory^nn_semNode(Marker,Bias,Act,ActHistory),Bag),
        nn_fadeNodes(Bag),!.

nn_fadeNodes([]).

nn_fadeNodes([Marker|Ms]) :-

        nn_semNode(Marker,Bias,Activation,History),
        nn_defaultActivationFade(FadeRate),
        NewActivation is (Activation*FadeRate),
        retractall(nn_semNode(Marker,Bias,Activation,History)),
        assertz(nn_semNode(Marker,Bias,NewActivation,History)),
        nn_fadeNodes(Ms),!.

nn_fadeNodes(_) :- write('neural network: fade node failure!'), nl, fail.

/*                                                 */
/* activate a semantic node with a specific marker */
/*                                                 */

nn_activateNode(_) :-

        parser_parsing_only(true),!.

nn_activateNode(Marker1) :-

        nn_fadeNodes,
        nn_semNode(Marker1,Bias1,Act,History),
	nn_highestActivation(NewAct),
        retractall(nn_semNode(Marker1,Bias1,Act,History)),
        asserta(nn_semNode(Marker1,Bias1,NewAct,[1|History])),
        findall(Marker2,nn_semLink(Marker1,Marker2,_W),Bag),
        nn_processNodes(Bag),
        wm_activateWm(Marker1),!.

nn_activateNode(_) :- write('neural network: failed to activate node!'),nl, fail.

/* predicates for processing the activation history of a semantic */
/* node                                                           */

nn_processActHistory([],[]).

nn_processActHistory([Time|Ts],[NewTime|NTs]) :-

        NewTime is Time + 1.0,
        nn_processActHistory(Ts,NTs),!.

/* process activations for all nodes attached to */
/* to a particular node                          */

nn_processNodes([]).

nn_processNodes([Node|Ns]) :-

        nn_processNode(Node),
        nn_processNodes(Ns).

nn_processNode(Marker) :-

        nn_semNode(Marker,Bias,Act,ActHistory),
        findall(Neighbour,nn_semLink(Neighbour,Marker,_W),Neighbours),
        nn_getActivationWeight(Marker,Neighbours,Activations,Weights),
        nn_neuron(Activations,Weights,Act,NewWeights,Output),
        retractall(nn_semNode(Marker,Bias,Act,ActHistory)),
        asserta(nn_semNode(Marker,Bias,Output,ActHistory)),
        nn_updateWeights(Marker,Neighbours,NewWeights),!.

nn_processNode(_) :- write('neural network: nn_processNode failure!'),nl, fail.


nn_updateWeights(_Marker,[],[]).
nn_updateWeights(Marker,[Neighbour|Ns],[NewWeight|Ws]) :-

        retractall(nn_semLink(Neighbour,Marker,_W)),
        asserta(nn_semLink(Neighbour,Marker,NewWeight)),
        nn_updateWeights(Marker,Ns,Ws),!.



nn_getActivationWeight(_,[],[],[]).

nn_getActivationWeight(Marker,[Child|Cs],[Activation|As],[Weight|Ws]) :-

        nn_semNode(Child,_Bias,Activation,_),
        nn_semLink(Child,Marker,Weight),
        nn_getActivationWeight(Marker,Cs,As,Ws),!.



/*                                     */
/* single neuron processing predicates */
/*                                     */

nn_harlim(Input,Output)  :- Input >= 0, Output is 1,!.
nn_harlim(_Input,Output) :- Output is 0,!.

nn_purelin(Input,Output)  :- Output is Input,!.

nn_poslin(Input,Output) :- Input =< 0, Output is 0,!.
nn_poslin(Input,Output) :- Output is Input.

nn_satlin(Input,Output) :- Input >= 1, Output is 1,!.
nn_satlin(Input,Output) :- Input =< 0, Output is 0,!.
nn_satlin(Input,Output) :- Output is Input.

nn_satlins(Input,Output) :-

	nn_highestActivation(Act),
	Input > Act,!,
	Output is Act,!.

nn_satlins(Input,Output) :-

	nn_lowestActivation(Act),
	Input < Act,!,
	Output is Act,!.

nn_satlins(Input,Output) :- Output is Input.

nn_logsig(Input,Output)   :- Output is 1 / (1 + (exp(1) ** (-Input))),!.

nn_tansig(Input,Output)   :- Output is ((exp(1) ** Input) - (exp(1) ** (-Input))) / ((exp(1) ** Input) + (exp(1) ** (-Input))),!.

/* nn_sum */

nn_sum([],[],Total)  :-

        Total is 0,!.

nn_sum([Input|Is],[Weight|Ws], Total) :-

        nn_sum(Is,Ws,Result),!,
        Total is ((Input * Weight) + Result),!.

/* nn_sumHistory */

nn_sumHistory([],_,Total) :-

	Total is float(0.0),!.

nn_sumHistory([Time|Ts],Decay,Sum) :-

	nn_sumHistory(Ts,Decay,Total),!,
	Sum is Total + (Time**(-Decay)),!.

nn_neuron(Inputs,Weights,Bias,NewWeights,Output) :-

        nn_sum(Inputs,Weights,Total),!,
        nn_tansig(Total+Bias,Output),!,
        nn_createWeights(Weights,NewWeights,Inputs,Output),!.

nn_createWeights([],[],[],_Output).
nn_createWeights([OldWeight|OWs],[NormWeight|NWs],[Input|Is],Output) :-

        nn_learningRate(LR),!,
	NewWeight is OldWeight + (LR * Input * Output),!,
	nn_normalizeWeight(NewWeight,NormWeight),!,
        nn_createWeights(OWs,NWs,Is,Output),!.

 /* nn_unlearningRate(UR),!, */
 /*NewWeight is OldWeight + (LR * Input * Output) - (UR * Output * OldWeight),!,*/

/* predicate to normalize link weight if is drops below the */
/* value of nn_defaultWeight */

nn_normalizeWeight(Weight,DefaultWeight) :-

	nn_defaultWeight(DefaultWeight),
	Weight < DefaultWeight,!.

nn_normalizeWeight(Weight,Weight).
