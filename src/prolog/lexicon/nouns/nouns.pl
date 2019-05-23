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
%      File : nouns.pl             % 
%                                  %
% ******************************** %

% noun(noun(),  [sem:,cat:np,case:,sound:,type:,],[gender:,num:,person:]) --> [].

noun(noun(N,ant(Antecedant)),[Sem,Cat,Case,Sound,type:pronoun],SemFeatures)-->

	nounbar(noun(N),[Sem,Cat,Case,Sound,type:pronoun],SemFeatures),
	{anaphora_findSingleAntecedant(SemFeatures,Antecedant)}.

noun(ParseTree,[sem:SemMarker|LexFeatures],SemFeatures) -->
	nounbar(ParseTree, [sem:SemMarker|LexFeatures],SemFeatures),{nn_activateNode(SemMarker)}.



/* common */

nounbar(noun(art),           [sem:art:1,           cat:np,case:_Case,sound:soft,type:common],[gender:neut,   num:sing,person:3])--> [art].
nounbar(noun(barber),        [sem:barber:1,        cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [barber].
nounbar(noun(basin),         [sem:basin:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [basin].
nounbar(noun(bench),         [sem:bench:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [bench].
nounbar(noun(blacksmith),    [sem:blacksmith:1,    cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [blacksmith].
nounbar(noun(blows),         [sem:blows:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [blows].
nounbar(noun(body),          [sem:body:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [body].
nounbar(noun(book),          [sem:book:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [book].
nounbar(noun(brother),       [sem:brother:1,       cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [brother].
nounbar(noun(brothers),      [sem:brother:2,       cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:plur,person:3])--> [brothers].
nounbar(noun(buttons),       [sem:button:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [buttons].
nounbar(noun(caps),          [sem:cap:1,           cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [caps].
nounbar(noun(child),         [sem:child:1,         cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [child].
nounbar(noun(circle),        [sem:circle:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [circle].
nounbar(noun(clothes),       [sem:clothes:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [clothes].
nounbar(noun(coach),         [sem:coach:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [coach].
nounbar(noun(coats),         [sem:coat:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [coats].
nounbar(noun(colours),       [sem:colour:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [colours].
nounbar(noun(country),       [sem:country:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [country].
nounbar(noun(curtain),       [sem:curtain:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [curtain].
nounbar(noun(customers),     [sem:customer:1,      cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:plur,person:3])--> [customers].
nounbar(noun(day),           [sem:day:1,           cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [day].
nounbar(noun(days),          [sem:day:1,           cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [days].
nounbar(noun(daughter),      [sem:daughter:1,      cat:np,case:_Case,sound:hard,type:common],[gender:femn,   num:sing,person:3])--> [daughter].
nounbar(noun(death),         [sem:death:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [death].
nounbar(noun(door),          [sem:door:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [door].
nounbar(noun(earth),         [sem:earth:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:mass,person:3])--> [earth].
nounbar(noun(elves),         [sem:elf:1,           cat:np,case:_Case,sound:soft,type:common],[gender:_Gender,num:plur,person:3])--> [elves].
nounbar(noun(father),        [sem:father:1,        cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [father].
nounbar(noun(feat),          [sem:feat:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [feat].
nounbar(noun(fencing,master),[sem:fencing_master:1,cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [fencing,master].
nounbar(noun(field),         [sem:field:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [field].
nounbar(noun(forefathers),   [sem:forefather:1,    cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:plur,person:3])--> [forefathers].
nounbar(noun(garments),      [sem:garment:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [garments].
nounbar(noun(girl),          [sem:girl:1,          cat:np,case:_Case,sound:hard,type:common],[gender:femn,   num:sing,person:3])--> [girl].
nounbar(noun(gold),          [sem:gold:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [gold].
nounbar(noun(goods),         [sem:goods:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [goods].
nounbar(noun(grave),         [sem:grave:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [grave].
nounbar(noun(greed),         [sem:greed:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [greed].
nounbar(noun(green),         [sem:green:2,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [green].
nounbar(noun(hair),          [sem:hair:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [hair].
nounbar(noun(hare),          [sem:hare:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [hare].
nounbar(noun(head),          [sem:head:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [head].
nounbar(noun(heart),         [sem:heart:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [heart].
nounbar(noun(home),          [sem:home:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [home].
nounbar(noun(horse),         [sem:horse:1,         cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [horse].
nounbar(noun(horses),        [sem:horse:2,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [horses].
nounbar(noun(horseshoes),    [sem:horseshoe:1,     cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [horseshoes].
nounbar(noun(house),         [sem:house:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [house].
nounbar(noun(husband),       [sem:husband:1,       cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [husband].
nounbar(noun(joy),           [sem:joy:1,           cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [joy].
nounbar(noun(king),          [sem:king:1,          cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [king].
nounbar(noun(leather),       [sem:leather:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [leather].
nounbar(noun(living),        [sem:living:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:mass,person:3])--> [living].
nounbar(noun(man),           [sem:man:1,           cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [man].
nounbar(noun(manikin),       [sem:manikin:1,       cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [manikin].
nounbar(noun(marriage),      [sem:marriage:1,      cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [marriage].
nounbar(noun(master),        [sem:master:1,        cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [master].
nounbar(noun(masters),       [sem:master:2,        cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:plur,person:3])--> [masters].
nounbar(noun(masterpiece),   [sem:masterpiece:1,   cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [masterpiece].
nounbar(noun(messenger),     [sem:messenger:1,     cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [messenger].
nounbar(noun(miller),        [sem:miller:1,        cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [miller].
nounbar(noun(money),         [sem:money:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [money].
nounbar(noun(morning),       [sem:morning:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [morning].
nounbar(noun(name),          [sem:name:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [name].
nounbar(noun(names),         [sem:name:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [names].
nounbar(noun(necklace),      [sem:necklace:1,      cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [necklace].
nounbar(noun(nobleman),      [sem:nobleman:1,      cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [nobleman].
nounbar(noun(nothing),       [sem:nothing:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [nothing].
nounbar(noun(offer),         [sem:offer:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [offer].
nounbar(noun(palace),        [sem:palace:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [palace].
nounbar(noun(pairs),         [sem:pair:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [pairs].
nounbar(noun(people),        [sem:people:1,        cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:mass,person:3])--> [people].
nounbar(noun(pieces),        [sem:piece:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [pieces].
nounbar(noun(pity),          [sem:pity:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [pity].
nounbar(noun(plan),          [sem:plan:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [plan].
nounbar(noun(price),         [sem:price:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [price].
nounbar(noun(queen),         [sem:queen:1,         cat:np,case:_Case,sound:hard,type:common],[gender:femn,   num:sing,person:3])--> [queen].
nounbar(noun(rain),          [sem:rain:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:mass,person:3])--> [rain].
nounbar(noun(raindrops),     [sem:raindrop:1,      cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [raindrops].
nounbar(noun(reel),          [sem:reel:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [reel].
nounbar(noun(riches),        [sem:riches:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [riches].
nounbar(noun(ring),          [sem:ring:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [ring].
nounbar(noun(room),          [sem:room:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [room].
nounbar(noun(sets),          [sem:set:1,           cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [sets].
nounbar(noun(shoemaker),     [sem:shoemaker:1,     cat:np,case:_Case,sound:hard,type:common],[gender:_Gender,num:sing,person:3])--> [shoemaker].
nounbar(noun(shoes),         [sem:shoe:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [shoes].
nounbar(noun(sight),         [sem:sight:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [sight].
nounbar(noun(skills),        [sem:skill:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [skills].
nounbar(noun(skin),          [sem:skin:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:mass,person:3])--> [skin].
nounbar(noun(soap),          [sem:soap:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [soap].
nounbar(noun(son),           [sem:son:1,           cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:sing,person:3])--> [son].
nounbar(noun(sons),          [sem:son:2,           cat:np,case:_Case,sound:hard,type:common],[gender:masc,   num:plur,person:3])--> [sons].
nounbar(noun(speed),         [sem:speed:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [speed].
nounbar(noun(spinning,wheel),[sem:spinning_wheel:1,cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [spinning,wheel].
nounbar(noun(stitches),      [sem:stitch:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [stitches].
nounbar(noun(straw),         [sem:straw:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [straw].
nounbar(noun(sun),           [sem:sun:1,           cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [sun].
nounbar(noun(sword),         [sem:sword:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [sword].
nounbar(noun(task),          [sem:task:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [task].
nounbar(noun(teeth),         [sem:teeth:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [teeth].
nounbar(noun(thought),       [sem:thought:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [thought].
nounbar(noun(time),          [sem:time:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [time].
nounbar(noun(tomorrow),      [sem:tomorrow:1,      cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [tomorrow].
nounbar(noun(trade),         [sem:trade:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [trade].
nounbar(noun(trades),        [sem:trade:2,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [trades].
nounbar(noun(trim),          [sem:trim:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [trim].
nounbar(noun(trousers),      [sem:trousers:1,      cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [trousers].
nounbar(noun(wife),          [sem:wife:1,          cat:np,case:_Case,sound:hard,type:common],[gender:femn,   num:sing,person:3])--> [wife].
nounbar(noun(whiskers),      [sem:whisker:1,       cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:plur,person:3])--> [whiskers].
nounbar(noun(window),        [sem:window:1,        cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [window].
nounbar(noun(work),          [sem:work:1,          cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [work].
nounbar(noun(world),         [sem:world:1,         cat:np,case:_Case,sound:hard,type:common],[gender:neut,   num:sing,person:3])--> [world].

/* pronouns */

nounbar(noun(i),    [sem:i:1,    cat:np,case:nom,sound:soft,type:pronoun],[gender:_Gender,num:sing,person:1])--> [i].
nounbar(noun(you),  [sem:you:1,  cat:np,case:nom,sound:soft,type:pronoun],[gender:_Gender,num:sing,person:2])--> [you].
nounbar(noun(he),   [sem:he:1,   cat:np,case:nom,sound:hard,type:pronoun],[gender:masc   ,num:sing,person:3])--> [he].
nounbar(noun(she),  [sem:she:1,  cat:np,case:nom,sound:hard,type:pronoun],[gender:femn   ,num:sing,person:3])--> [she].
nounbar(noun(it),   [sem:it:1,   cat:np,case:nom,sound:hard,type:pronoun],[gender:_Gender,num:sing,person:3])--> [it].
nounbar(noun(this), [sem:this:1, cat:np,case:nom,sound:hard,type:pronoun],[gender:neut,   num:sing,person:3])--> [this].
nounbar(noun(there),[sem:there:1,cat:np,case:nom,sound:hard,type:pronoun],[gender:neut,   num:sing,person:3])--> [there].
nounbar(noun(we),   [sem:we:1,   cat:np,case:nom,sound:hard,type:pronoun],[gender:_Gender,num:plur,person:1])--> [we].
nounbar(noun(you),  [sem:you:1,  cat:np,case:nom,sound:soft,type:pronoun],[gender:_Gender,num:plur,person:2])--> [you].
nounbar(noun(they), [sem:they:1, cat:np,case:nom,sound:hard,type:pronoun],[gender:_Gender,num:plur,person:3])--> [they].

nounbar(noun(me),   [sem:i:1,    cat:np,case:acc,sound:hard,type:pronoun],[gender:_Gender,num:sing,person:1])--> [me].
nounbar(noun(you),  [sem:you:1,  cat:np,case:acc,sound:soft,type:pronoun],[gender:_Gender,num:sing,person:2])--> [you].
nounbar(noun(him),  [sem:he:1,   cat:np,case:acc,sound:hard,type:pronoun],[gender:masc   ,num:sing,person:3])--> [him].
nounbar(noun(her),  [sem:she:1,  cat:np,case:acc,sound:hard,type:pronoun],[gender:femn   ,num:sing,person:3])--> [her].
nounbar(noun(it),   [sem:it:1,   cat:np,case:acc,sound:hard,type:pronoun],[gender:_Gender,num:sing,person:3])--> [it].
nounbar(noun(this), [sem:this:1, cat:np,case:acc,sound:hard,type:pronoun],[gender:neut,   num:sing,person:3])--> [this].
nounbar(noun(there),[sem:there:1,cat:np,case:acc,sound:hard,type:pronoun],[gender:neut,   num:sing,person:3])--> [there].
nounbar(noun(us),   [sem:we:1,   cat:np,case:acc,sound:hard,type:pronoun],[gender:_Gender,num:plur,person:1])--> [us].
nounbar(noun(you),  [sem:you:1,  cat:np,case:acc,sound:soft,type:pronoun],[gender:_Gender,num:plur,person:2])--> [you].
nounbar(noun(them), [sem:they:1, cat:np,case:acc,sound:hard,type:pronoun],[gender:_Gender,num:plur,person:3])--> [them].

/* relexive pronouns */

nounbar(noun(eachother), [sem:eachother:1, cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:_Gender,num:plur,person:3])--> [eachother].
nounbar(noun(herself),   [sem:she:1,       cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:femn,   num:sing,person:3])--> [herself].
nounbar(noun(himself),   [sem:he:1,        cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:masc,   num:sing,person:3])--> [himself].
nounbar(noun(himself),   [sem:it:1,        cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:_Gender,num:sing,person:3])--> [itself].
nounbar(noun(myself),    [sem:i:1,         cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:_Gender,num:sing,person:1])--> [myself].
nounbar(noun(ourselves), [sem:we:1,        cat:np,case:acc,sound:soft,type:rlfx_pronoun],[gender:_Gender,num:plur,person:1])--> [ourselves].
nounbar(noun(themselves),[sem:they:1,      cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:_Gender,num:plur,person:3])--> [themselves].
nounbar(noun(yourself),  [sem:you:1,       cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:_Gender,num:sing,person:2])--> [yourself].
nounbar(noun(yourselves),[sem:you:2,       cat:np,case:acc,sound:hard,type:rlfx_pronoun],[gender:_Gender,num:plur,person:2])--> [yourselves].

/* Proper Nouns */

nounbar(noun(balthazar),                    [sem:balthazar:1,      cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [balthazar].
nounbar(noun(casper),                       [sem:casper:1,         cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [casper].
nounbar(noun(cat),                          [sem:cat:2,            cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [cat].
nounbar(noun(compound_noun(christmas,eve)), [sem:x_mas_eve:1,      cat:np,case:_Case,sound:hard,type:proper],[gender:_Gender,num:sing,person:3])--> [christmas,eve].
nounbar(noun(compound_noun(christmas,time)),[sem:x_mas:1,          cat:np,case:_Case,sound:hard,type:proper],[gender:_Gender,num:sing,person:3])--> [christmas,time].
nounbar(noun(conrad),                       [sem:conrad:1,         cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [conrad].
nounbar(noun(harry),                        [sem:harry:1,          cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [harry].
nounbar(noun(laceleg),                      [sem:laceleg:1,        cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [laceleg].
nounbar(noun(melchior),                     [sem:melchior:1,       cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [melchior].
nounbar(noun(rimmer),                       [sem:rimmer:1,         cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [rimmer].
nounbar(noun(rumpelstiltskin),              [sem:rumpelstiltskin:1,cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [rumpelstiltskin].
nounbar(noun(sheepshanks),                  [sem:sheepshanks:1,    cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [sheepshanks].
nounbar(noun(shortribs),                    [sem:shortribs:1,      cat:np,case:_Case,sound:hard,type:proper],[gender:masc,   num:sing,person:3])--> [shortribs].



/* Gerund Nouns */


nounbar(noun(undertaking),  [sem:undertake:1,cat:np,case:_Case,sound:soft,type:gerund],[gender:_Gender,num:sing,person:3])--> [undertaking].







