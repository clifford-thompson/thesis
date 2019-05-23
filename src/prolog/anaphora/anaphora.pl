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
%      File : anaphora.pl          % 
%                                  %
% ******************************** %

anaphora_maxCandidateScore(1.0).
anaphora_maxCandidatesDifference(0.05).
anaphora_featureScoreModifier(0.75).

/*                                                                     */
/* This predicate is used to find a single antecedant to the reference */
/* features passed                                                     */
/*                                                                     */
anaphora_findSingleAntecedant(ReferenceFeatures,Antecedant) :-

	parser_parsing_only(false),!,
	wm_workingMemory(SemMarkers),!,
	anaphora_gatherFeatures(SemMarkers,Features),!,
	anaphora_createCandidateScores(ReferenceFeatures,SemMarkers,Features,CandidateScores),!,
	write('anaphora.pl features:'), write(CandidateScores),nl,!,
	/*anaphora_removeSemMarkerScore(SemMarker,CandidateScores,NonPerfectScores),*/
	anaphora_incorporateActivations(CandidateScores,ScoresWithActivations),!,
	anaphora_findMaxCandidate(ScoresWithActivations,Antecedant),!.

% anaphora_findSingleAntecedant(_,_).

/*                                                                      */
/* This predicate is used to find multiple antecedants to the reference */
/* features passed                                                      */
/*                                                                      */

anaphora_findMultipleAntecedants(ReferenceFeatures,Antecedants) :-

	/* get working memory list */
        /* get wm feature list */
        /* create similar candidate lists */
        /* find single candidate scores   */
        /* remove perfect scores */
        /* add activations to scores */
        /* find max of single candidate and candidate lists */

	parser_parsing_only(false),!,
	wm_workingMemory(SemMarkers),
	anaphora_gatherFeatures(SemMarkers,Features),
	anaphora_createCandidateScores(ReferenceFeatures,SemMarkers,Features,CandidateScores),
	anaphora_removeSemMarkerScore(CandidateScores,NonPerfectScores),
	anaphora_incorporateActivations(NonPerfectScores,ScoresWithActivations),
	anahora_findMaxCandidates(ScoresWithActivations,Antecedants).

anaphora_findMultipleAntecedant(_,_).
	
/*                                                                 */
/* This predicate retreives the features associated with a list of */
/* semantic markers                                                */

anaphora_gatherFeatures([],[]).
anaphora_gatherFeatures([SemMarker|SMs],[Features|Fs]) :-

	nounbar(_Noun,[sem:SemMarker|_LexFeatures],Features,_Input,_Output),
	anaphora_gatherFeatures(SMs,Fs).

anaphora_getFeatures(_,_) :- 

	write('Error(anaphora.pl): failed to find noun!'), nl. 

/*                                                                   */
/* This predicate creates candidate scores from the semantic markers */
/* within working memory, base on the current acivation of the       */
/* current activation the markers.                                   */
/*                                                                   */

anaphora_createCandidateScores(_ReferenceFeatures,[],[],[]).
anaphora_createCandidateScores(ReferenceFeatures,[SemMarker|SMs],[Features|Fs],[SemMarker:CandidateScore|CSs]) :- 

	nn_semNode(SemMarker,_Bias,_Activation,_),!,
	anaphora_compareFeatureSets(ReferenceFeatures,Features,CandidateScore),!,
	anaphora_createCandidateScores(ReferenceFeatures,SMs,Fs,CSs),!.

anaphora_createCandidateScores(A,B,C,D) :- 

	write('Error(anaphora.pl):') ,
	write(A),
	write(B),
	write(C),
	write(D).

/*                                                                     */
/* This predicate removes the score corresponding to the reference     */
/*                                                                     */

anaphora_removeSemMarkerScore([],[]).

anaphora_removeSemMarkerScore([_SemMarker:Score|SMSs],NewSMSs) :-
	
	anaphora_maxCandidateScore(MaxScore),
	Score =:= MaxScore,
	anaphora_removeSemMarkerScore(SMSs,NewSMSs).

anaphora_removeSemMarkerScore([SemMarker:Score|SMSs],[SemMarker:Score|NewSMSs]) :-

	anaphora_removeSemMarkerScore(SMSs,NewSMSs).
	
/*                                                                  */
/* This predicate incorporates the current activation levels of the */
/* semantic node of marker into its candidate score                 */
/*                                                                  */

anaphora_incorporateActivations([],[]).

anaphora_incorporateActivations( [SemMarker:Score|SMSs],[SemMarker:NewScore|NewSMSs]) :-

	nn_semNode(SemMarker,_Bias,Activation,_),
	NewScore is Score + Activation,
	anaphora_incorporateActivations(SMSs,NewSMSs).

anaphora_incorporateActivation([SemMarker:_Score|_SMSs],_) :- write('Failed to find nn_semNode: ') , write(SemMarker), nl.

/* This predicate compares two feature sets on their relative */
/* similarity                                                 */

anaphora_compareFeatureSets(_ReferenceFeatures,[],MaxScore) :-

	anaphora_maxCandidateScore(MaxScore).

anaphora_compareFeatureSets(ReferenceFeatures,Features,CandidateScore) :-

	anaphora_featureScore(ReferenceFeatures,Features,CandidateScore).


	
/* predicates for calculating the relative similarity */
/* between two feature sets                           */

anaphora_featureScore([],[],MaxScore) :-

	anaphora_maxCandidateScore(MaxScore).

anaphora_featureScore([Label:FeatureA|Fs1],[Label:FeatureB|Fs2],Score) :-
	
	var(FeatureA),
	var(FeatureB),
	anaphora_featureScore(Fs1,Fs2,S),
	anaphora_featureScoreModifier(M),
	Score is S/M.

anaphora_featureScore([Label:FeatureA|Fs1],[Label:FeatureB|Fs2],Score) :-
	
	var(FeatureA),
	nonvar(FeatureB),
	anaphora_featureScore(Fs1,Fs2,S),
	anaphora_featureScoreModifier(M),
	Score is S/M.

anaphora_featureScore([Label:FeatureA|Fs1],[Label:FeatureB|Fs2],Score) :-
	
	nonvar(FeatureA),
	var(FeatureB),
	anaphora_featureScore(Fs1,Fs2,S),
	anaphora_featureScoreModifier(M),
	Score is S/M.

anaphora_featureScore([Label:FeatureA|Fs1],[Label:FeatureB|Fs2],Score) :-
	
	nonvar(FeatureA),
	nonvar(FeatureB),
	FeatureA == FeatureB,
	anaphora_featureScore(Fs1,Fs2,S),
	anaphora_featureScoreModifier(M),
	Score is S/M.

anaphora_featureScore([Label:FeatureA|Fs1], [Label:FeatureB|Fs2], Score) :-

	nonvar(FeatureA),
	nonvar(FeatureB),
	anaphora_featureScore(Fs1,Fs2,S),
	anaphora_featureScoreModifier(M),
	Score is S*M.

anaphora_featureScore(_,_,_) :- write('feature scoring error!\n'), abort.

/* this predicate finds the maximum score in a set of */
/* feature-score pairs                                */

anaphora_findMaxCandidate([],null).

anaphora_findMaxCandidate([SemMarker:Score|SMSs],Antecedant) :-

	anaphora_findMaxCandidate(SMSs,SemMarker:Score,Antecedant).

anaphora_findMaxCandidate([],SemMarker:_Score,SemMarker).

anaphora_findMaxCandidate([SemMarker1:Score1|SMSs],_SemMarker2:Score2,Antecedant) :-

	Score1 > Score2,!,
	anaphora_findMaxCandidate(SMSs,SemMarker1:Score1,Antecedant).

anaphora_findMaxCandidate([_SemMarker1:_Score1|SMSs],SemMarker2:Score2,Antecedant) :-

	anaphora_findMaxCandidate(SMSs,SemMarker2:Score2,Antecedant).

/* This predicate finds a group of maximal scores in a set of */
/* feature-score pairs. "Maximal" is defined as those feature */
/* sets that are within a certain score-distancce from the    */
/* absolute maximum feature-set score                         */

/*anaphora_findMaxCandidates(ScoresWithActivations,Ante) :-*/
