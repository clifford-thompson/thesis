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
%      File : articles.pl          % 
%                                  %
% ******************************** %

%art(art(), [sem:,cat:art,sound:,def:,type:],[gender:,num:,person:]) --> [].

art(art(A,ant(Antecedant)),[Sem,Cat,Sound,Def,type:poss],SemFeatures) -->

	artbar(art(A),[Sem,Cat,Sound,Def,type:poss],SemFeatures),
	{anaphora_findSingleAntecedant(SemFeatures,Antecedant)}.

art(A,LexFeatures,SemFeatures) --> artbar(A,LexFeatures,SemFeatures).

/*                   */
/* definite articles */
/*                   */

artbar(art(the), [sem:the:1,cat:art,sound:_Sound,def:def,type:det],[gender:_Gender,num:_Number,person:3]) --> [the].
/*artbar(art(that),[sem:that:1,cat:art,sound:_Sound,def:def,type:det],[gender:_Gender,num:sing,person:]) --> [that].*/

/*                     */
/* indefinite articles */
/*                     */

artbar(art(a),  [sem:a:1,  cat:art,sound:hard,  def:indef,type:det],[gender:_Gender,num:sing,person:3]) --> [a].
artbar(art(an), [sem:a:1,  cat:art,sound:soft,  def:indef,type:det],[gender:_Gender,num:sing,person:3]) --> [an].
artbar(art(any),[sem:any:1,cat:art,sound:_Sound,def:indef,type:det],[gender:_Gender,num:sing,person:3]) --> [any].


/*                 */
/* degree articles */
/*                 */

artbar(art(enough), [sem:enough:1,cat:art,sound:_Sound,def:indef,type:deg],[gender:_Gender,num:mass,person:3]) --> [enough].
artbar(art(many),   [sem:many:1,  cat:art,sound:_Sound,def:indef,type:deg],[gender:_Gender,num:mass,person:3]) --> [many].
artbar(art(only),   [sem:only:1,  cat:art,sound:_Sound,def:indef,type:deg],[gender:_Gender,num:mass,person:3]) --> [only].


/*                    */
/* possesive articles */
/*                    */
artbar(art(my),  [sem:i:1,  cat:art,sound:_Sound,def:def,type:poss],[gender:_Gender,num:sing,person:1]) --> [my].
artbar(art(your),[sem:you:1,cat:art,sound:_Sound,def:def,type:poss],[gender:_Gender,num:sing,person:2]) --> [your].
artbar(art(his), [sem:he:1, cat:art,sound:_Sound,def:def,type:poss],[gender:masc   ,num:sing,person:3]) --> [his].
artbar(art(her), [sem:she:1,cat:art,sound:_Sound,def:def,type:poss],[gender:femn   ,num:sing,person:3]) --> [her].
artbar(art(its), [sem:it:1, cat:art,sound:_Sound,def:def,type:poss],[gender:_Gender,num:sing,person:3]) --> [its].

artbar(art(our),  [sem:we:1,  cat:art,sound:_Sound,def:def,type:poss],[gender:_Gender,num:plur,person:1]) --> [our].
artbar(art(your), [sem:you:1, cat:art,sound:_Sound,def:def,type:poss],[gender:_Gender,num:plur,person:2]) --> [your].
artbar(art(their),[sem:they:1,cat:art,sound:_Sound,def:def,type:poss],[gender:_Gender,num:plur,person:3]) --> [their].

artbar(art(hares),   [sem:hare:1,   cat:art,sound:_Sound,def:def,type:poss_noun],[gender:_Gender,num:sing,person:3]) --> [hares].
artbar(art(kings),   [sem:king:1,   cat:art,sound:_Sound,def:def,type:poss_noun],[gender:masc,   num:sing,person:3]) --> [kings].
artbar(art(manikins),[sem:manikin:1,cat:art,sound:_Sound,def:def,type:poss_noun],[gender:_Gender,num:sing,person:3]) --> [manikins].


/*                    */
/* Numbers            */
/*                    */

artbar(art(one),   [sem:one:1,  cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:sing,person:3]) --> [one].
artbar(art(two),   [sem:two:1,  cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [two].
artbar(art(three), [sem:three:1,cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [three].
artbar(art(four),  [sem:four:1, cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [four].
artbar(art(five),  [sem:five:1, cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [five].
artbar(art(six),   [sem:six:1,  cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [six].
artbar(art(seven), [sem:seven:1,cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [seven].
artbar(art(eight), [sem:eight:1,cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [eight].
artbar(art(nine),  [sem:nine:1, cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [nine].
artbar(art(ten),   [sem:ten:1,  cat:art,sound:_Sound,def:def,type:num],[gender:_Gender,num:plur,person:3]) --> [ten].

artbar(art(each),  [sem:each:1,  cat:art,sound:_Sound,def:indef,type:num],[gender:_Gender,num:sing,person:3]) --> [each].
artbar(art(no),    [sem:each:1,  cat:art,sound:_Sound,def:indef,type:num],[gender:_Gender,num:sing,person:3]) --> [no].
