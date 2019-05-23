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
%      File : grow.pl              %
%                                  %
% ******************************** %

/*                   */
/* Matrix Verbs      */
/*                   */


/* infinite (base) form */

verb(verb(grow),[cat:vp,form:base,num:_NUM,person:_PER,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grow].

/* present */

verb(verb(grow), [cat:vp,form:pres,num:sing,person:1,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grow].
verb(verb(grow), [cat:vp,form:pres,num:sing,person:2,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grow].
verb(verb(grows),[cat:vp,form:pres,num:sing,person:3,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grows].

verb(verb(grow), [cat:vp,form:pres,num:plur,person:_PER,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grow].

/* past */

verb(verb(grew),[cat:vp,form:past,num:_NUM,person:_PER,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grew].

/* present participle */

verb(verb(growing),[cat:vp,form:pres_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [growing].

/* past participle */

verb(verb(grown),[cat:vp,form:past_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:grow:1,vtype:matrix]) --> [grown].
