% *************************************************************************** %
%
%  Copyright (c) 2006-2019 Clifford Thompson
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
%      File : contemplate.pl       % 
%                                  %
% ******************************** %

/*                   */
/* Matrix Verbs      */
/*                   */

/* infinite (base) form */

verb(verb(contemplate),[cat:vp,form:base,num:_NUM,person:_PER,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplate].

/* present */

verb(verb(contemplate), [cat:vp,form:pres,num:sing,person:1,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplate].
verb(verb(contemplate), [cat:vp,form:pres,num:sing,person:2,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplate].
verb(verb(contemplates),[cat:vp,form:pres,num:sing,person:3,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplates].

verb(verb(contemplate), [cat:vp,form:pres,num:plur,person:_PER,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplate].

/* past */

verb(verb(contemplated),[cat:vp,form:past,num:_NUM,person:_PER,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplated].

/* present participle */

verb(verb(contemplating),[cat:vp,form:pres_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplating].

/* past participle */

verb(verb(contemplated),[cat:vp,form:past_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:contemplate:1,vtype:matrix]) --> [contemplated].
