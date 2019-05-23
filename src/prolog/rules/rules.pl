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
%      File : rules.pl             %
%                                  %
% ******************************** %

/************************************************************/
/*                                                          */
/*                  Top Level Sentence                      */
/*                                                          */
/************************************************************/

sent([sem:sent:1],sent(IIP,CS))   --> {nn_fadeNodes},iip(_,IIP), conjsent(_,CS)/*,{wm_checkLinks}*/.

conjsent([sem:conjsent:1],conjsent(C,S)) --> {nn_fadeNodes}, conj(C,_Features), sent(_,S).
conjsent([],conjsent(null))              --> [].

/*         */
/* Clauses */
/*         */

iip([sem:iip:1],iip(IP))     --> {nn_fadeNodes}, ip(_,IP).
ip( [sem:ip:1], ip(NP,VP))   --> {nn_fadeNodes}, nomp(_,NP), vvp(_,VP).

/************************************************************/
/*                                                          */
/*                    Noun Phrase                           */
/*                                                          */
/************************************************************/

/*              */
/* Case phrases */
/*              */

/* Nomative case */

nomp([sem:nomp:1],nomp(NP,RCP))  --> {nn_fadeNodes},nnp(_,NP),rcp(_,RCP).

/* Accusitive case  */

accp([sem:accp:1],accp(NP,RCP)) --> {nn_fadeNodes},nnp(_,NP),rcp(_,RCP).
accp([],accp(null))             --> [].

/* Dative case  */

datp([sem:datp:1],datp(NP,RCP))  --> {nn_fadeNodes},nnp(_,NP),rcp(_,RCP).
datp([],datp(null))              --> [].

/****************/
/* noun phrases */
/****************/

nnp([sem:nnp:1],nnp(NP))        --> {nn_fadeNodes},np(_,NP).
nnp([sem:nnp:2],nnp(NP))        --> {nn_fadeNodes},conjnp(_,NP).

np([sem:np:1],np(NNB))         --> {nn_fadeNodes},nnbar(_,NNB).

nnbar([sem:nnbar:1],nnbar(NB))    --> {nn_fadeNodes},nbar(_,NB).
nnbar([sem:nnbar:2],nnbar(DP,NB)) --> {nn_fadeNodes},dp(_,DP),nbar(_,NB).

nbar([sem:nbar:1],nbar(N))       --> {nn_fadeNodes},noun(N,_LexFeatures,_SemFeatures).
nbar([sem:nbar:2],nbar(AP,N))    --> {nn_fadeNodes},aadjp(_,AP), noun(N,_LexFeatures,_SemFeatures).

/* Conjunctive Noun Phrase */

conjnp([sem:conjnp:1],conjnp(NP,C))            --> {nn_fadeNodes},np(_,NP), conjnpbar(_,C).
conjnpbar([sem:conjnpbar:1],conjnpbar(C,NNP))  --> {nn_fadeNodes},conj(C,_Features), nnp(_,NNP).

/* relative clause */

rcp([sem:rcp:1],rcp(R,VP)) --> {nn_fadeNodes}, rel(R,_Features), vvp(_,VP).
rcp([],rcp(null)) --> [].


/************************************************************/
/*                                                          */
/*                    Verb Phrase                           */
/*                                                          */
/************************************************************/

vvp([sem:vvp:1],vvp(VP,CVP))        --> {nn_fadeNodes},vp(_,VP), conjvp(_,CVP).

vp([sem:vp:1],vp(VB,AP,DP,VCP,PPP)) --> {nn_fadeNodes},vvbar(_,VB), accp(_,AP), datp(_,DP), vcp(_,VCP), ppp(_,PPP).
vp([sem:vp:2],vp(VB,AP,PPP))        --> {nn_fadeNodes},vvbar(_,VB), aadjp(_,AP),ppp(_,PPP).


/* Conjunctive Verb Phrase */

conjvp([sem:conjvp:1],conjvp(C,VP))   --> {nn_fadeNodes},conj(C,_Features), vp(_,VP).
conjvp([],conjvp(null))   --> [].

/* verb complement phrase */

vcp([sem:vcp:1],vcp(C,IP,CVCP))      --> {nn_fadeNodes}, comp(C,_Features), ip(_,IP), conjvcp(_,CVCP).
vcp([],vcp(null))                    --> [].

conjvcp([sem:conjvcp:1],conjvcp(C,VCP))  --> {nn_fadeNodes}, conj(C,_Features), vcp(_,VCP).
conjvcp([],conjvcp(null))   --> [].

/*****************/
/*               */
/* Simple Aspect */
/*               */
/*****************/

vvbar([sem:vvbar:5],vvbar(V,VB))  --> {nn_fadeNodes},

	verb(V,_F1),
	vbar(_,VB,_F2).

vvbar([sem:vvbar:9],vvbar(V,VN,VB)) --> {nn_fadeNodes},

	verb(V,_F1),
	vneg(VN,_F2),
	vbar(_,VB,_F3).

vvbar([sem:vvbar:1],vvbar(VB))    --> {nn_fadeNodes},vbar(_,VB,_Features).


/* Present Simple */


/*vvbar([sem:vvbar:1],vvbar(VB))    --> {nn_fadeNodes},vbar(_,VB,[cat:vp,form:pres,num:_NUM1,person:_PER1,prtype:_PTYPE1,sem:_SEM1,vtype:matrix]).*/
/*vvbar([sem:vvbar:2],vvbar(VB))    --> {nn_fadeNodes},vbar(_,VB,[cat:vp,form:pres,num:_NUM2,person:_PER2,prtype:_PTYPE2,sem:_SEM2,vtype:copula]).*/

/* Past Simple */

/*vvbar([sem:vvbar:3],vvbar(VB))    --> {nn_fadeNodes},vbar(_,VB, [cat:vp,form:past,num:_NUM1,person:_PER1,prtype:_PTYPE1,sem:_SEM1,vtype:matrix]).*/
/*vvbar([sem:vvbar:4],vvbar(VB))    --> {nn_fadeNodes},vbar(_,VB, [cat:vp,form:past,num:_NUM2,person:_PER2,prtype:_PTYPE2,sem:_SEM2,vtype:copula]).*/

/* Past Progressive */

/*vvbar([sem:vvbar:5],vvbar(V,VB)) --> {nn_fadeNodes},*/

	/*verb(V,   [cat:vp, form:past,      _NUM1, _PER2, _PRT1, _SEM1, vtype:aux]),*/
	/*vbar(_,VB,[cat:vp, form:pres_part, _NUM2, _PER2, _PRT2, _SEM3, vtype:matrix]).*/

/* Future Simple */

/* Present Tense Auxillary Constructions */

/*vvbar([sem:vvbar:6],vvbar(V,VB)) --> {nn_fadeNodes}, */

	/*verb(V,   [cat:vp, form:pres,      _NUM1, _PER2, _PRT1, _SEM1, vtype:aux]), */
/*	vbar(_,VB,[cat:vp, form:pres_part, _NUM2, _PER2, _PRT2, _SEM2, vtype:matrix]).*/

/* Past Tense Auxillary Constructions */

/*vvbar([sem:vvbar:6],vvbar(V,VB)) --> {nn_fadeNodes}, */

	/*verb(V, [cat:vp, form:past,      _NUM1, _PER2, _PRT1, _SEM1, vtype:aux]), */
	/*vbar(_,VB,[cat:vp, form:past_part, _NUM2, _PER2, _PRT2, _SEM2, vtype:matrix]).*/

/* Present Tense Modal Auxillary Constructions */

/*vvbar([sem:vvbar:8],vvbar(V,VB)) --> {nn_fadeNodes}, */

	/*verb(V, [cat:vp, form:pres, _NUM1, _PER2, _PRT1, _SEM1, vtype:modal]), */
	/*vbar(_,VB,[cat:vp, form:base, _NUM2, _PER2, _PRT2, _SEM2, vtype:matrix]).*/

/*vvbar([sem:vvbar:9],vvbar(V,VN,VB)) --> {nn_fadeNodes}, */

	/*verb(V, [cat:vp, form:pres, _NUM1, _PER2, _PRT1, _SEM1, vtype:modal]),*/
	/*vneg(VN,_Features),*/
	/*vbar(_,VB,[cat:vp, form:base, _NUM2, _PER2, _PRT2, _SEM3, vtype:matrix]).*/

/* Past Tense Modal Auxillary Constructions */

/*vvbar([sem:vvbar:10],vvbar(V,VB)) --> {nn_fadeNodes}, */

	/*verb(V, [cat:vp, form:past, _NUM1, _PER2, _PRT1, _SEM1, vtype:modal]),*/
	/*vbar(_,VB,[cat:vp, form:base, _NUM2, _PER2, _PRT2, _SEM2, vtype:matrix]).*/

/*vvbar([sem:vvbar:11],vvbar(V,VN,VB)) --> {nn_fadeNodes}, */

	/*verb(V, [cat:vp, form:past, _NUM1, _PER2, _PRT1, _SEM1, vtype:modal]),*/
/*	vneg(VN,_Features),*/
/*	vbar(_,VB,[cat:vp, form:base, _NUM2, _PER2, _PRT2, _SEM3, vtype:matrix]).*/

/*********************************/
/* Bottom level verb attachments */
/*********************************/


vbar([sem:vbar:1],vbar(V),Features)         --> {nn_fadeNodes},verb(V,Features).
vbar([sem:vbar:2],vbar(V1,to,V2),Features1) --> {nn_fadeNodes},verb(V1,Features1),
	                                        [to],
                                                verb(V2,[cat:vp,form:base|_Fs]).
vbar([sem:vbar:3],vbar(V,VN),F1)            --> {nn_fadeNodes},verb(V,F1),vneg(VN,_F2).

vbar([sem:vbar:4],vbar(V,AV),Features) --> {nn_fadeNodes},advp(_,AV), verb(V,Features).



/************************************************************/
/*                                                          */
/*               Prepositional Phrase                       */
/*                                                          */
/************************************************************/

ppp([sem:ppp:1],ppp(P,NNP,CPPP)) -->

	{nn_fadeNodes},
	prep(P,[_Cat,_Sem,_type]),
	nomp(_,NNP),
	conjppp(_,CPPP).

ppp(_,ppp(null)) --> [].

conjppp([sem:conjppp:1],conjppp(C,PPP)) --> {nn_fadeNodes}, conj(C,_Features), ppp(_,PPP).
conjppp([],conjppp(null))               --> [].



/************************************************************/
/*                                                          */
/*                    Adverb Phrase                         */
/*                                                          */
/************************************************************/

advp([sem:advp:1],advp(AV))            --> {nn_fadeNodes},adv(AV,_Features).

/************************************************************/
/*                                                          */
/*                    Adjective Phrase                      */
/*                                                          */
/************************************************************/

aadjp([sem:aadjp:1],AP) --> {nn_fadeNodes}, adjp(_,AP).
aadjp([sem:aadjp:2],AP) --> {nn_fadeNodes}, conjadjp(_,AP).

conjadjp([sem:conjadjp:1],conjadjp(AP,C))       --> {nn_fadeNodes}, adjp(_,AP), conjadjpbar(_,C).
conjadjpbar([sem:conjajpbar:1],conjadjpbar(C,AP)) --> {nn_fadeNodes}, conj(C,_Features), aadjp(_,AP).

adjp([sem:adjp:1],adjp(ADJ))    --> {nn_fadeNodes}, adj(ADJ,_Features).

/************************************************************/
/*                                                          */
/*                    Determiner Phrase                     */
/*                                                          */
/************************************************************/


/* The following code is based on the LanEng determiner phrase */

dp([sem:dp:1],dp(DB))    --> {nn_fadeNodes},dbar(_,DB).

dbar([sem:dbar:1],dbar(D)) --> {nn_fadeNodes},detp(_,D).

detp([sem:detp:1],detp(A))     --> {nn_fadeNodes},art(A,_LexFeatures,_SemFeatures).
detp([sem:detp:2],detp(A1,A2)) --> {nn_fadeNodes},
                                   art(A1,_LexFeatures1,_SemFeatures1),
				   art(A2,[_Sem,_Cat,_Snd,_Def,type:poss_noun],_SemFeatures2).
