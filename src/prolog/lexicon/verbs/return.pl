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
%      File : return.pl            %
%                                  %
% ******************************** %

/*                   */
/* Matrix Verbs      */
/*                   */

/* infinite (base) form */

verb(verb(return),[cat:vp,form:base,num:_NUM,person:_PER,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [return].

/* present */

verb(verb(return), [cat:vp,form:pres,num:sing,person:1,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [return].
verb(verb(return), [cat:vp,form:pres,num:sing,person:2,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [return].
verb(verb(returns),[cat:vp,form:pres,num:sing,person:3,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [returns].

verb(verb(return), [cat:vp,form:pres,num:plur,person:_PER,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [return].

/* past */

verb(verb(returned),[cat:vp,form:past,num:_NUM,person:_PER,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [returned].

/* present participle */

verb(verb(returning),[cat:vp,form:pres_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [returning].

/* past participle */

verb(verb(returned),[cat:vp,form:past_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:return:1,vtype:matrix]) --> [returned].
