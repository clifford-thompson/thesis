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
%      File : test1.pl             %
%                                  %
% ******************************** %

% (PT,[],[]), nl, nl, drucke_baum(PT).

/* general parsing tests */

sent(PT,[rimmer,and,cat,saw,the,book],[]), nl, nl, drucke_baum(PT), nl.
sent(PT,[they,read,the,book],         []), nl, nl, drucke_baum(PT), nl.
sent(PT,[rimmer,saw,a,book],          []), nl, nl, drucke_baum(PT), nl.
sent(PT,[cat,also,saw,a,book],        []), nl, nl, drucke_baum(PT), nl.

sent(PT,[the,book,was,black,and,had,gold,trim],[]), nl, nl, drucke_baum(PT), nl.

/* run-time tests */

time(sent(PT,[rimmer,and,cat,saw,the,book],[])).
time(sent(PT,[they,read,the,book],         [])).
time(sent(PT,[rimmer,saw,a,book],          [])).
time(sent(PT,[cat,also,saw,a,book],        [])).

sent(PT,[it,was,black],[]), nl, nl, drucke_baum(PT), nl.

time((sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []),
      sent(PT1,[rimmer,and,cat,saw,the,book],[]),
      sent(PT2,[they,read,the,book],         []),
      sent(PT3,[rimmer,saw,a,book],          []),
      sent(PT4,[cat,also,saw,a,book],        []))).

time((  sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]),
	sent(PT,[the,book,was,black,and,had,gold,trim],[]))).
time((
	sent(PT,[a,great,king,had,a,daughter,who,was,very,beautiful],[]),
	sent(PT,[but,she,was,so,proud,and,conceited],[]),
	sent(PT,[no,prince,was good,enough,for,her],[]),
	sent(PT,[the,king,held,a,great,feast,and,invited,all,her,suitors],[]))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rumpelstiltskin                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sent(PT,[there,was,a,miller,who,was,poor,but,had,a,beautiful,daughter],[]), nl, nl, drucke_baum(PT), nl.
sent(PT,[the,miller,visited,the,king,and,told,him,that,his,daughter,could,spin,straw,into,gold],[]), nl, nl, drucke_baum(PT), nl.
sent(PT,[the,king,said,that,this,was,an,art,and,pleased,him],[]), nl, nl, drucke_baum(PT), nl.
sent(PT,[he,requested,that,the,miller,bring,his,daughter,to,the,palace],[]), nl, nl, drucke_baum(PT), nl.

sent(_,PT1, [there,was,a,miller,who,was,poor,but,had,a,beautiful,daughter],[]),!,wm_checkLinks,!,
sent(_,PT2, [the,miller,visited,the,king,and,told,him,that,his,daughter,could,spin,straw,into,gold],[]),!,wm_checkLinks,!,
sent(_,PT3, [the,king,said,that,this,was,an,art,and,pleased,him],[]),!,wm_checkLinks,!,
sent(_,PT4, [he,requested,that,the,miller,bring,his,daughter,to,the,palace],[]),!,wm_checkLinks,!,
sent(_,PT5, [the,girl,was,brought,to,the,king],[]),!,wm_checkLinks,!,
sent(_,PT6, [he,took,her,into,a,room,that,was,filled,with,straw],[]),!,wm_checkLinks,!,
sent(_,PT7, [she,was,given,a,spinning,wheel,and,a,reel],[]),!,wm_checkLinks,!,
sent(_,PT8, [the,king,demanded,that,she,complete,the,work,by,tomorrow,or,die],[]),!,wm_checkLinks,!,
sent(_,PT9, [he,locked,the,room,and,left,the,daughter],[]),!,wm_checkLinks,!,
sent(_,PT10,[the,poor,daughter,sat,there,and,wept],[]),!,wm_checkLinks,!,
sent(_,PT11,[she,knew,that,she,could,not,spin,straw,into,gold],[]),!,wm_checkLinks,!,
sent(_,PT12,[the,door,opened,and,a,little,man,entered,the,room],[]),!,wm_checkLinks,!,
sent(_,PT13,[he,asked,the,girl,why,she,was,crying],[]),!,wm_checkLinks,!,
sent(_,PT14,[she,told,him,that,she,must,spin,straw,into,gold],[]),!,wm_checkLinks,!,
sent(_,PT15,[the,little,man,told,her,that,he,could,spin,the,straw,for,a,price],[]),!,wm_checkLinks,!,
sent(_,PT16,[he,asked,the,girl,what,she,could,give,to,him],[]),!,wm_checkLinks,!,
sent(_,PT17,[the,daughter,offered,a,necklace,to,him],[]),!,wm_checkLinks,!,
sent(_,PT18,[the,man,took,the,necklace,and,sat,at,the,spinning,wheel],[]),!,wm_checkLinks,!,
sent(_,PT19,[he,spun,the,straw,into,gold],[]),!,wm_checkLinks,!,
sent(_,PT20,[the,king,returned,in,the,morning,and,saw,the,gold],[]),!,wm_checkLinks,!,
sent(_,PT21,[he,was,astonished,and,delighted],[]),!,wm_checkLinks,!,
sent(_,PT22,[his,heart,filled,with,greed],[]),!,wm_checkLinks,!,
sent(_,PT23,[the,daughter,was,taken,to,a,larger,room,that,was,filled,with,straw],[]),!,wm_checkLinks,!,
sent(_,PT24,[he,demanded,that,she,complete,the,work,by,tomorrow],[]),!,wm_checkLinks,!,
sent(_,PT25,[the,girl,sat,in,the,large,room,and,cried],[]),!,wm_checkLinks,!,
sent(_,PT26,[the,little,man,returned,and,told,her,that,her,could,spin,the,straw,into,gold],[]),!,wm_checkLinks,!,
sent(_,PT27,[he,asked,her,what,she,could,give,for,the,task],[]),!,wm_checkLinks,!,
sent(_,PT28,[the,daughter,gave,her,ring,to,the,small,man],[]),!,wm_checkLinks,!,
sent(_,PT29,[he,grabbed,the,ring,and,spun,the,straw,into,gold]),!,wm_checkLinks,!,
sent(_,PT30,[the,king,returned,and,was,amazed,by,the,feat],[]),!,wm_checkLinks,!,
sent(_,PT31,[he,demanded,that,the,she,spin,more,gold],[]),!,wm_checkLinks,!,
sent(_,PT32,[the,daughter,was,placed,in,the,largest,room],[]),!,wm_checkLinks,!,

	nl, drucke_baum(PT1), nl, nl,
	nl, drucke_baum(PT2), nl, nl,
	nl, drucke_baum(PT3), nl, nl,
	nl, drucke_baum(PT4), nl, nl,
	nl, drucke_baum(PT5), nl, nl,
	nl, drucke_baum(PT6), nl, nl,
	nl, drucke_baum(PT7), nl, nl,
	nl, drucke_baum(PT8), nl, nl,
	nl, drucke_baum(PT9), nl, nl,
	nl, drucke_baum(PT10), nl, nl,
	nl, drucke_baum(PT11), nl, nl,
	nl, drucke_baum(PT12), nl, nl,
	nl, drucke_baum(PT13), nl, nl,
	nl, drucke_baum(PT14), nl, nl,
	nl, drucke_baum(PT15), nl, nl,
	nl, drucke_baum(PT16), nl, nl,
	nl, drucke_baum(PT17), nl, nl,
	nl, drucke_baum(PT18), nl, nl,
	nl, drucke_baum(PT19), nl, nl.

sent(_,PT1, [there,was,a,miller,who,was,poor,but,had,a,beautiful,daughter],[]),!,wm_checkLinks,!, drucke_baum(PT1), wm_workingMemory(X), parser_showNn.
sent(_,PT2, [the,miller,visited,the,king,and,told,him,that,his,daughter,could,spin,straw,into,gold],[]),!,wm_checkLinks,!, drucke_baum(PT2), wm_workingMemory(X), parser_showNn.
sent(_,PT3, [the,king,said,that,this,was,an,art,and,pleased,him],[]),!,wm_checkLinks,!, drucke_baum(PT3), wm_workingMemory(X), parser_showNn.
sent(_,PT4, [he,requested,that,the,miller,bring,his,daughter,to,the,palace],[]),!,wm_checkLinks,!, drucke_baum(PT4), wm_workingMemory(X), parser_showNn.
sent(_,PT5, [the,girl,was,brought,to,the,king],[]),!,wm_checkLinks,!, drucke_baum(PT5), wm_workingMemory(X), parser_showNn.
sent(_,PT6, [he,took,her,into,a,room,that,was,filled,with,straw],[]),!,wm_checkLinks,!, drucke_baum(PT6), wm_workingMemory(X), parser_showNn.
sent(_,PT7, [she,was,given,a,spinning,wheel,and,a,reel],[]),!,wm_checkLinks,!, drucke_baum(PT7), wm_workingMemory(X), parser_showNn.
sent(_,PT8, [the,king,demanded,that,she,complete,the,work,by,tomorrow,or,die],[]),!,wm_checkLinks,!, drucke_baum(PT8), wm_workingMemory(X), parser_showNn.
sent(_,PT9, [he,locked,the,room,and,left,the,daughter],[]),!,wm_checkLinks,!, drucke_baum(PT9), wm_workingMemory(X), parser_showNn.
sent(_,PT10,[the,poor,daughter,sat,there,and,wept],[]),!,wm_checkLinks,!, drucke_baum(PT10), wm_workingMemory(X), parser_showNn.
sent(_,PT11,[she,knew,that,she,could,not,spin,straw,into,gold],[]),!,wm_checkLinks,!, drucke_baum(PT11), wm_workingMemory(X), parser_showNn.
sent(_,PT12,[the,door,opened,and,a,little,man,entered,the,room],[]),!,wm_checkLinks,!, drucke_baum(PT12), wm_workingMemory(X), parser_showNn.
sent(_,PT13,[he,asked,the,girl,why,she,was,crying],[]),!,wm_checkLinks,!, drucke_baum(PT13), wm_workingMemory(X), parser_showNn.
sent(_,PT14,[she,told,him,that,she,must,spin,straw,into,gold],[]),!,wm_checkLinks,!, drucke_baum(PT14), wm_workingMemory(X), parser_showNn.
sent(_,PT15,[the,little,man,told,her,that,he,could,spin,the,straw,for,a,price],[]),!,wm_checkLinks,!, drucke_baum(PT15), wm_workingMemory(X), parser_showNn.
sent(_,PT16,[he,asked,the,girl,what,she,could,give,to,him],[]),!,wm_checkLinks,!, drucke_baum(PT16), wm_workingMemory(X), parser_showNn.
sent(_,PT17,[the,daughter,offered,a,necklace,to,him],[]),!,wm_checkLinks,!, drucke_baum(PT17), wm_workingMemory(X), parser_showNn.
sent(_,PT18,[the,man,took,the,necklace,and,sat,at,the,spinning,wheel],[]),!,wm_checkLinks,!, drucke_baum(PT18), wm_workingMemory(X), parser_showNn.
sent(_,PT19,[he,spun,the,straw,into,gold],[]),!,wm_checkLinks,!, drucke_baum(PT19), wm_workingMemory(X), parser_showNn.
sent(_,PT20,[the,king,returned,in,the,morning,and,saw,the,gold],[]),!,wm_checkLinks,!, drucke_baum(PT20), wm_workingMemory(X), parser_showNn.
sent(_,PT21,[he,was,astonished,and,delighted],[]),!,wm_checkLinks,!, drucke_baum(PT21), wm_workingMemory(X), parser_showNn.
sent(_,PT22,[his,heart,filled,with,greed],[]),!,wm_checkLinks,!, drucke_baum(PT22), wm_workingMemory(X), parser_showNn.
sent(_,PT23,[the,daughter,was,taken,to,a,larger,room,that,was,filled,with,straw],[]),!,wm_checkLinks,!, drucke_baum(PT23), wm_workingMemory(X), parser_showNn.
sent(_,PT24,[he,demanded,that,she,complete,the,work,by,tomorrow],[]),!,wm_checkLinks,!, drucke_baum(PT24), wm_workingMemory(X), parser_showNn.
sent(_,PT25,[the,girl,sat,in,the,large,room,and,cried],[]),!,wm_checkLinks,!, drucke_baum(PT25), wm_workingMemory(X), parser_showNn.
sent(_,PT26,[the,little,man,returned,and,told,her,that,he,could,spin,the,straw,into,gold],[]),!,wm_checkLinks,!, drucke_baum(PT26), wm_workingMemory(X), parser_showNn.
sent(_,PT27,[he,asked,her,what,she,could,give,for,the,task],[]),!,wm_checkLinks,!, drucke_baum(PT27), wm_workingMemory(X), parser_showNn.
sent(_,PT28,[the,daughter,gave,a,ring,to,the,small,man],[]),!,wm_checkLinks,!, drucke_baum(PT28), wm_workingMemory(X), parser_showNn.
sent(_,PT29,[he,grabbed,the,ring,and,spun,the,straw,into,gold],[]),!,wm_checkLinks,!, drucke_baum(PT29), wm_workingMemory(X), parser_showNn.
sent(_,PT30,[the,king,returned,and,was,amazed,by,the,feat],[]),!,wm_checkLinks,!, drucke_baum(PT30), wm_workingMemory(X), parser_showNn.
sent(_,PT31,[he,demanded,that,she,spin,more,gold],[]),!,wm_checkLinks,!, drucke_baum(PT31), wm_workingMemory(X), parser_showNn.
sent(_,PT32,[the,daughter,was,placed,in,the,largest,room],[]),!,wm_checkLinks,!, drucke_baum(PT32), wm_workingMemory(X), parser_showNn.
sent(_,PT33,[the,king,asked,that,she,complete,the,task,by,the,morning],[]).
sent(_,PT34,[he,said,that,she,would,be,his,wife,when,the,task,was,completed],[]).
sent(_,PT35,[the,manikin,returned,when,the,girl,was,alone],[]).
sent(_,PT36,[he,asked,what,she,would,give,for,the,task],[]).
sent(_,PT37,[she,answered,that,she,had,nothing],[]).
sent(_,PT38,[the,girl,promised,to,give,her,first,child,when,she,becomes,queen],[]), drucke_baum(PT38).
sent(_,PT39,[she,did,not,think,that,this,would,happen],[]), drucke_baum(PT39).
sent(_,PT40,[the,little,man,spun,the,straw,into,gold],[]), drucke_baum(PT40).
sent(_,PT41,[the,king,returned,in,the,morning],[]), drucke_baum(PT41).
sent(_,PT42,[he,found,what,he,wished],[]), drucke_baum(PT42).
sent(_,PT43,[the,king,took,the,girl,in,marriage,and,she,became,queen],[]), drucke_baum(PT43).
sent(_,PT44,[she,brought,a,beautiful,child,into,the,world],[]), drucke_baum(PT44).
sent(_,PT45,[the,queen,gave,no,thought,to,the,manikin],[]), drucke_baum(PT45).
sent(_,PT46,[he,entered,her,room,and,asked,for,her,child],[]), drucke_baum(PT46).
sent(_,PT47,[she,was,surprised,and,offered,riches,to,him],[]), drucke_baum(PT47).
sent(_,PT48,[the,manikin,refused,the,offer],[]), drucke_baum(PT48).
sent(_,PT49,[the,queen,began,to,cry,and,the,little,man,felt,pity],[]), drucke_baum(PT49).
sent(_,PT50,[he,said,that,she,could,keep,her,child,but,she,must,guess,his,name,in,three,days],[]), drucke_baum(PT50).
sent(_,PT51,[she,sent,a,messenger,across,the,country],[]), drucke_baum(PT51).
sent(_,PT52,[he,searched,for,any,name,that,might,exist],[]), drucke_baum(PT52).
sent(_,PT53,[the,manikin,returned,the,next,day],[]), drucke_baum(PT53).
sent(_,PT54,[the,queen,guessed,casper,and,melchior,and,balthazar,and,other,names,that,she,knew],[]), drucke_baum(PT54).
sent(_,PT55,[he,said,that,she,was,incorrect],[]), drucke_baum(PT55).
sent(_,PT56,[she,sent,a,messenger,on,the,second,day],[]), drucke_baum(PT56).
sent(_,PT57,[the,queen,asked,for,uncommon,names],[]), drucke_baum(PT57).
sent(_,PT58,[she,guessed,shortribs,and,sheepshanks,and,laceleg,but,was,incorrect],[]), drucke_baum(PT58).
sent(_,PT59,[the,messenger,found,the,manikins,house,and,overheard,his,name],[]), drucke_baum(PT59).
sent(_,PT60,[the,queen,was,delighted],[]), drucke_baum(PT60).
sent(_,PT61,[the,manikin,returned,on,the,final,day,and,ask,for,a,name],[]), drucke_baum(PT61).
sent(_,PT62,[she,guessed,conrad,and,harry],[]), drucke_baum(PT62).
sent(_,PT63,[he,said,that,she,was,incorrect],[]), drucke_baum(PT63).
sent(_,PT64,[she,guessed,rumpelstiltskin],[]), drucke_baum(PT64).
sent(_,PT65,[the,manikin,became,angry,and,was,pulled,into,the,earth],[]), drucke_baum(PT65).

time(
parser_parseCorpus([

[there,was,a,miller,who,was,poor,but,had,a,beautiful,daughter],
[the,miller,visited,the,king,and,told,him,that,his,daughter,could,spin,straw,into,gold],
[the,king,said,that,this,was,an,art,and,pleased,him],
[he,requested,that,the,miller,bring,his,daughter,to,the,palace],
[the,girl,was,brought,to,the,king],
[he,took,her,into,a,room,that,was,filled,with,straw],
[she,was,given,a,spinning,wheel,and,a,reel],
[the,king,demanded,that,she,complete,the,work,by,tomorrow,or,die],
[he,locked,the,room,and,left,the,daughter],
[the,poor,daughter,sat,there,and,wept],
[she,knew,that,she,could,not,spin,straw,into,gold],
[the,door,opened,and,a,little,man,entered,the,room],
[he,asked,the,girl,why,she,was,crying],
[she,told,him,that,she,must,spin,straw,into,gold],
[the,little,man,told,her,that,he,could,spin,the,straw,for,a,price],
[he,asked,the,girl,what,she,could,give,to,him],
[the,daughter,offered,a,necklace,to,him],
[the,man,took,the,necklace,and,sat,at,the,spinning,wheel],
[he,spun,the,straw,into,gold],
[the,king,returned,in,the,morning,and,saw,the,gold],
[he,was,astonished,and,delighted],
[his,heart,filled,with,greed],
[the,daughter,was,taken,to,a,larger,room,that,was,filled,with,straw],
[he,demanded,that,she,complete,the,work,by,tomorrow],
[the,girl,sat,in,the,large,room,and,cried],
[the,little,man,returned,and,told,her,that,he,could,spin,the,straw,into,gold],
[he,asked,her,what,she,could,give,for,the,task],
[the,daughter,gave,a,ring,to,the,small,man],
[he,grabbed,the,ring,and,spun,the,straw,into,gold],
[the,king,returned,and,was,amazed,by,the,feat],
[he,demanded,that,she,spin,more,gold],
[the,daughter,was,placed,in,the,largest,room],
[the,king,asked,that,she,complete,the,task,by,the,morning],
[he,said,that,she,would,be,his,wife,when,the,task,was,completed],
[the,manikin,returned,when,the,girl,was,alone],
[he,asked,what,she,would,give,for,the,task],
[she,answered,that,she,had,nothing],
[the,girl,promised,to,give,her,first,child,when,she,becomes,queen],
[she,did,not,think,that,this,would,happen],
[the,little,man,spun,the,straw,into,gold],
[the,king,returned,in,the,morning],
[he,found,what,he,wished],
[the,king,took,the,girl,in,marriage,and,she,became,queen],
[she,brought,a,beautiful,child,into,the,world],
[the,queen,gave,no,thought,to,the,manikin],
[he,entered,her,room,and,asked,for,her,child],
[she,was,surprised,and,offered,riches,to,him],
[the,manikin,refused,the,offer],
[the,queen,began,to,cry,and,the,little,man,felt,pity],
[he,said,that,she,could,keep,her,child,but,she,must,guess,his,name,in,three,days],
[she,sent,a,messenger,across,the,country],
[he,searched,for,any,name,that,might,exist],
[the,manikin,returned,the,next,day],
[the,queen,guessed,casper,and,melchior,and,balthazar,and,other,names,that,she,knew],
[he,said,that,she,was,incorrect],
[she,sent,a,messenger,on,the,second,day],
[the,queen,asked,for,uncommon,names],
[she,guessed,shortribs,and,sheepshanks,and,laceleg,but,was,incorrect],
[the,messenger,found,the,manikins,house,and,overheard,his,name],
[the,queen,was,delighted],
[the,manikin,returned,on,the,final,day,and,ask,for,a,name],
[she,guessed,conrad,and,harry],
[he,said,that,she,was,incorrect],
[she,guessed,rumpelstiltskin],
[the,manikin,became,angry,and,was,pulled,into,the,earth]
])).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The three brothers                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


sent(_,PT,[there,was,a,man,who,had,three,sons],[]), drucke_baum(PT).
sent(_,PT,[he,had,nothing,in,the,world],[]), drucke_baum(PT).
sent(_,PT,[each,son,wanted,the,house,after,his,death],[]), drucke_baum(PT).
sent(_,PT,[the,father,loved,them],[]), drucke_baum(PT).
sent(_,PT,[he,did,not,know,what,he,should,do],[]), drucke_baum(PT).
sent(_,PT,[he,did,not,wish,to,sell,the,house],[]), drucke_baum(PT).
sent(_,PT,[it,had,belonged,to,his,forefathers],[]), drucke_baum(PT).
sent(_,PT,[he,conceived,a,plan,and,told,his,sons,that,they,must,learn,a,trade],[]), drucke_baum(PT).
sent(_,PT,[the,son,that,builds,the,best,masterpiece,will,inherit,his,house],[]), drucke_baum(PT).
sent(_,PT,[the,sons,were,content,with,this],[]), drucke_baum(PT).
sent(_,PT,[the,first,son,was,determined,to,be,a,blacksmith],[]), drucke_baum(PT).
sent(_,PT,[the,second,son,wanted,to,be,a,barber],[]), drucke_baum(PT).
sent(_,PT,[the,third,son,desired,to,be,a,fencing,master],[]), drucke_baum(PT).
sent(_,PT,[they,set,a,time,when,they,should,come,home],[]), drucke_baum(PT).
sent(_,PT,[the,brothers,found,skillfull,masters,who,taught,them,their,trades],[]), drucke_baum(PT).
sent(_,PT,[the,blacksmith,had,to,shoe,horses,that,belonged,to,the,king],[]), drucke_baum(PT).
sent(_,PT,[he,believed,that,he,would,inherit,the,house],[]), drucke_baum(PT).
sent(_,PT,[the,barber,shaved,only,distinguished,people],[]), drucke_baum(PT).
sent(_,PT,[he,believed,that,his,father,would,give,the,house,to,him],[]), drucke_baum(PT).
sent(_,PT,[the,fencing,master,suffered,many,blows,to,his,body,but,he,grit,his,teeth],[]), drucke_baum(PT).
sent(_,PT,[he,thought,that,he,would,win,the,house],[]), drucke_baum(PT).
sent(_,PT,[the,brothers,returned,home,to,their,father],[]), drucke_baum(PT).
sent(_,PT,[they,did,not,know,when,they,would,demonstrate,their,skills,to,their,father],[]), drucke_baum(PT).
sent(_,PT,[the,brothers,sat,and,contemplated,what,they,could,do],[]), drucke_baum(PT).
sent(_,PT,[a,hare,ran,across,the,field],[]), drucke_baum(PT).
sent(_,PT,[the,barber,took,his,basin,and,soap],[]), drucke_baum(PT).
sent(_,PT,[he,lathered,until,the,hare,drew,near],[]), drucke_baum(PT).
sent(_,PT,[he,soaped,and,shaved,the,hares,whiskers,while,he,was,running,at,his,top,speed],[]), drucke_baum(PT).
sent(_,PT,[he,did,not,cut,his,skin,or,a,hair,on,his,body],[]), drucke_baum(PT).
sent(_,PT,[the,father,was,delighted],[]), drucke_baum(PT).
sent(_,PT,[a,nobleman,came,in,his,coach,and,at,full,speed],[]), drucke_baum(PT).
sent(_,PT,[the,blacksmith,ran,towards,the,coach],[]), drucke_baum(PT).
sent(_,PT,[he,took,four,horseshoes,off,the,horse,while,it,was,galloping,and,put,new,shoes,on,him],[]), drucke_baum(PT).
sent(_,PT,[the,father,thought,that,this,was,wonderful],[]), drucke_baum(PT).
sent(_,PT,[the,third,son,asked,to,demonstrate,his,skills],[]), drucke_baum(PT).
sent(_,PT,[it,began,to,rain,and,the,son,drew,his,sword],[]), drucke_baum(PT).
sent(_,PT,[the,sword,flourished,backwards,and,forwards,above,his,head],[]), drucke_baum(PT).
sent(_,PT,[no,raindrops,fell,upon,him],[]), drucke_baum(PT).
sent(_,PT,[the,rain,fell,harder,and,harder],[]), drucke_baum(PT).
sent(_,PT,[he,flourished,his,sword,and,remained,dry],[]), drucke_baum(PT).
sent(_,PT,[his,father,was,amazed,at,this,and,gave,his,house,to,the,third,son],[]), drucke_baum(PT).
sent(_,PT,[his,brothers,were,satisfied,with,this],[]), drucke_baum(PT).
sent(_,PT,[they,decided,to,live,together,since,they,loved,eachother],[]), drucke_baum(PT).
sent(_,PT,[the,brothers,continued,their,trades,and,earned,a,good,living],[]), drucke_baum(PT).
sent(_,PT,[they,lived,happily,until,they,grew,old],[]), drucke_baum(PT).
sent(_,PT,[one,brother,became,sick,and,died],[]), drucke_baum(PT).
sent(_,PT,[the,brothers,grieved,intensely,and,they,became,ill,and,died],[]), drucke_baum(PT).
sent(_,PT,[they,were,laid,in,the,same,grave,because,they,loved,eachother],[]), drucke_baum(PT).
sent(_,PT,[],[]), drucke_baum(PT).
sent(_,PT,[],[]), drucke_baum(PT).

time(
parser_parseCorpus([

[there,was,a,man,who,had,three,sons],
[he,had,nothing,in,the,world],
[each,son,wanted,the,house,after,his,death],
[the,father,loved,them],
[he,did,not,know,what,he,should,do],
[he,did,not,wish,to,sell,the,house],
[it,had,belonged,to,his,forefathers],
[he,conceived,a,plan,and,told,his,sons,that,they,must,learn,a,trade],
[the,son,that,builds,the,best,masterpiece,will,inherit,his,house],
[the,sons,were,content,with,this],
[the,first,son,was,determined,to,be,a,blacksmith],
[the,second,son,wanted,to,be,a,barber],
[the,third,son,desired,to,be,a,fencing,master],
[they,set,a,time,when,they,should,come,home],
[the,brothers,found,skillfull,masters,who,taught,them,their,trades],
[the,blacksmith,had,to,shoe,horses,that,belonged,to,the,king],
[he,believed,that,he,would,inherit,the,house],
[the,barber,shaved,only,distinguished,people],
[he,believed,that,his,father,would,give,the,house,to,him],
[the,fencing,master,suffered,many,blows,to,his,body,but,he,grit,his,teeth],
[he,thought,that,he,would,win,the,house],
[the,brothers,returned,home,to,their,father],
[they,did,not,know,when,they,would,demonstrate,their,skills,to,their,father],
[the,brothers,sat,and,contemplated,what,they,could,do],
[a,hare,ran,across,the,field],
[the,barber,took,his,basin,and,soap],
[he,lathered,until,the,hare,drew,near],
[he,soaped,and,shaved,the,hares,whiskers,while,he,was,running,at,his,top,speed],
[he,did,not,cut,his,skin,or,a,hair,on,his,body],
[the,father,was,delighted],
[a,nobleman,came,in,his,coach,and,at,full,speed],
[the,blacksmith,ran,towards,the,coach],
[he,took,four,horseshoes,off,the,horse,while,it,was,galloping,and,put,new,shoes,on,him],
[the,father,thought,that,this,was,wonderful],
[the,third,son,asked,to,demonstrate,his,skills],
[it,began,to,rain,and,the,son,drew,his,sword],
[the,sword,flourished,backwards,and,forwards,above,his,head],
[no,raindrops,fell,upon,him],
[the,rain,fell,harder,and,harder],
[he,flourished,his,sword,and,remained,dry],
[his,father,was,amazed,at,this,and,gave,his,house,to,the,third,son],
[his,brothers,were,satisfied,with,this],
[they,decided,to,live,together,since,they,loved,eachother],
[the,brothers,continued,their,trades,and,earned,a,good,living],
[they,lived,happily,until,they,grew,old],
[one,brother,became,sick,and,died],
[the,brothers,grieved,intensely,and,they,became,ill,and,died],
[they,were,laid,in,the,same,grave,because,they,loved,eachother]
])).














test([[0,1,0],[0,0,1]],[0.1,0.1,0.1],0,NWs,[OutA,OutB]).

test2([0],[0.1,0.1,0.1],NWs,[Out1,Out2]).


test([[I11,I12,I13],[I21,I22,I23]],[W1,W2,W3],Bias,[Nw1,Nw2,Nw3],[[Out11,Out13],[Out21,Out22]]) :-

	neuron([I12,I11],[W2,W3],Bias,[Tw2,Tw3],Out13),
	neuron([I12,I13],[W1,Tw3],Bias,[Tw1,TTw3],Out11),
	neuron([I21,I23],[Tw1,Tw2],Bias,[TTw1,Nw2],Out22),
	neuron([I22,I23],[TTw1,TTw3],Bias,[Nw1,Nw3],Out21).

test2([I11],[W1,W2,W3],[Nw1,Nw2,Nw3],[Out21,Out22]) :-

	neuron([1,I11],    [W2,W3]    ,0,[Tw2,Tw3] ,Out13),
	neuron([1,Out13],[W1,Tw3]   ,0,[Tw1,TTw3],Out11),
	neuron([Out11,1],[Tw1,Tw2]  ,0,[TTw1,Nw2],Out22),
	neuron([Out22,1],[TTw1,TTw3],0,[Nw1,Nw3] ,Out21)
