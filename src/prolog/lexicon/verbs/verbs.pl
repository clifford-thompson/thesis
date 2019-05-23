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
%      File : verbs.pl             %
%                                  %
% ******************************** %

%:-include(lexicon/verbs/afford).
:-include(lexicon/verbs/amaze).
:-include(lexicon/verbs/answer).
:-include(lexicon/verbs/ask).
:-include(lexicon/verbs/astonish).
:-include(lexicon/verbs/be).
:-include(lexicon/verbs/become).
:-include(lexicon/verbs/begin).
:-include(lexicon/verbs/believe).
:-include(lexicon/verbs/belong).
:-include(lexicon/verbs/bring).
:-include(lexicon/verbs/build).
%:-include(lexicon/verbs/buy).
:-include(lexicon/verbs/can).
%:-include(lexicon/verbs/caper).
%:-include(lexicon/verbs/clean).
:-include(lexicon/verbs/come).
:-include(lexicon/verbs/complete).
:-include(lexicon/verbs/conceive).
:-include(lexicon/verbs/contemplate).
:-include(lexicon/verbs/continue).
:-include(lexicon/verbs/cry).
:-include(lexicon/verbs/cut).
%:-include(lexicon/verbs/dance).
:-include(lexicon/verbs/decide).
:-include(lexicon/verbs/delight).
:-include(lexicon/verbs/demand).
:-include(lexicon/verbs/demonstrate).
:-include(lexicon/verbs/desire).
:-include(lexicon/verbs/determine).
:-include(lexicon/verbs/die).
:-include(lexicon/verbs/do).
:-include(lexicon/verbs/draw).
:-include(lexicon/verbs/earn).
:-include(lexicon/verbs/enter).
:-include(lexicon/verbs/exist).
:-include(lexicon/verbs/fall).
:-include(lexicon/verbs/feel).
:-include(lexicon/verbs/fill).
:-include(lexicon/verbs/find).
%:-include(lexicon/verbs/finish).
:-include(lexicon/verbs/flourish).
:-include(lexicon/verbs/gallop).
:-include(lexicon/verbs/give).
:-include(lexicon/verbs/grab).
:-include(lexicon/verbs/grieve).
:-include(lexicon/verbs/grit).
:-include(lexicon/verbs/grow).
:-include(lexicon/verbs/guess).
:-include(lexicon/verbs/happen).
:-include(lexicon/verbs/have).
%:-include(lexicon/verbs/hide).
%:-include(lexicon/verbs/hop).
:-include(lexicon/verbs/inherit).
:-include(lexicon/verbs/injure).
:-include(lexicon/verbs/keep).
:-include(lexicon/verbs/know).
:-include(lexicon/verbs/lather).
%:-include(lexicon/verbs/laugh).
:-include(lexicon/verbs/lay).
:-include(lexicon/verbs/learn).
:-include(lexicon/verbs/leave).
:-include(lexicon/verbs/lie).
%:-include(lexicon/verbs/like).
:-include(lexicon/verbs/live).
:-include(lexicon/verbs/lock).
:-include(lexicon/verbs/love).
%:-include(lexicon/verbs/make).
:-include(lexicon/verbs/may).
:-include(lexicon/verbs/must).
:-include(lexicon/verbs/name).
:-include(lexicon/verbs/offer).
:-include(lexicon/verbs/open).
:-include(lexicon/verbs/overhear).
%:-include(lexicon/verbs/pay).
:-include(lexicon/verbs/place).
:-include(lexicon/verbs/please).
%:-include(lexicon/verbs/prance).
:-include(lexicon/verbs/promise).
:-include(lexicon/verbs/pull).
:-include(lexicon/verbs/put).
:-include(lexicon/verbs/rain).
:-include(lexicon/verbs/read).
:-include(lexicon/verbs/refuse).
:-include(lexicon/verbs/remain).
:-include(lexicon/verbs/request).
:-include(lexicon/verbs/return).
%:-include(lexicon/verbs/rise).
:-include(lexicon/verbs/run).
:-include(lexicon/verbs/satisfy).
:-include(lexicon/verbs/say).
:-include(lexicon/verbs/search).
:-include(lexicon/verbs/see).
:-include(lexicon/verbs/send).
:-include(lexicon/verbs/set).
:-include(lexicon/verbs/sell).
:-include(lexicon/verbs/shave).
:-include(lexicon/verbs/shoe).
:-include(lexicon/verbs/should).
:-include(lexicon/verbs/sit).
%:-include(lexicon/verbs/shall).
:-include(lexicon/verbs/soap).
:-include(lexicon/verbs/spin).
:-include(lexicon/verbs/stop).
%:-include(lexicon/verbs/start).
:-include(lexicon/verbs/suffer).
%:-include(lexicon/verbs/support).
:-include(lexicon/verbs/surprise).
:-include(lexicon/verbs/take).
:-include(lexicon/verbs/teach).
:-include(lexicon/verbs/tell).
:-include(lexicon/verbs/think).
:-include(lexicon/verbs/visit).
%:-include(lexicon/verbs/wait).
:-include(lexicon/verbs/want).
:-include(lexicon/verbs/weep).
:-include(lexicon/verbs/will).
:-include(lexicon/verbs/win).
:-include(lexicon/verbs/wish).
%:-include(lexicon/verbs/work).

%verb(verb(),[cat:verb,sem:,tense:,inf:,num:,person:,gender:]) --> [].


%      cat:          vp,       % [ap,np,ip,pp,vp,spec,compl]
%      form:         FORM,     % [base,pres,past,pres_part,past_part],
%      number:       NUM,      % [sing,plur]
%      person:       PERS,     % [1,2,3]
%      prtype:       PTYPE,    % [trans, ditrans, intrans]
%      sem:          SEM,      % [?]
%      vtype:        VTYPE     % [matrix,aux,modal,control,copula]]



/*         */
/* verb    */
/*         */

%verb(verb(),[cat:vp,form:,num:,person:,prtype:,sem:,vtype:]) --> [].

/* infinite (base) form */
/* present */
/* past */
/* present participle */
/* past participle */
