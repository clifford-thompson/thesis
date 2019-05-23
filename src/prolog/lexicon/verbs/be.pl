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
%      File : be.pl                % 
%                                  %
% ******************************** %

/*                   */
/*                   */
/* Copula Verbs      */
/*                   */
/*                   */


/* infinite (base) form */

verb(verb(be), [cat:vp,form:base,num:_NUM,person:_PER,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [be].

/* present */

verb(verb(am), [cat:vp,form:pres,num:sing,person:1,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [am].
verb(verb(are),[cat:vp,form:pres,num:sing,person:2,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [are].
verb(verb(is), [cat:vp,form:pres,num:sing,person:3,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [is].

verb(verb(are),[cat:vp,form:pres,num:plur,person:1,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [are]. 
verb(verb(are),[cat:vp,form:pres,num:plur,person:2,prtype:_PTYPE,sem:be:1,vtype:copula])  --> [are]. 
verb(verb(are),[cat:vp,form:pres,num:plur,person:3,prtype:_PTYPE,sem:be:1,vtype:copula])  --> [are].

/* past */
	
verb(verb(was), [cat:vp,form:past,num:sing,person:1,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [was].
verb(verb(were),[cat:vp,form:past,num:sing,person:2,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [were].
verb(verb(was), [cat:vp,form:past,num:sing,person:3,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [was].

verb(verb(were),[cat:vp,form:past,num:plur,person:1,prtype:_PTYPE,sem:be:1,vtype:copula]) --> [were]. 
verb(verb(were),[cat:vp,form:past,num:plur,person:2,prtype:_PTYPE,sem:be:1,vtype:copula])  --> [were]. 
verb(verb(were),[cat:vp,form:past,num:plur,person:3,prtype:_PTYPE,sem:be:1,vtype:copula])  --> [were]. 

/* present participle */

verb(verb(being),[cat:vp,form:pres_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:be:1,vtype:copula])  --> [being]. 

/* past participle */

verb(verb(been),[cat:vp,form:past_part,num:_NUM,person:_PER,prtype:_PTYPE,sem:be:1,vtype:copula])  --> [been].

/*                         */
/*                         */
/* Modal Auxiliary Verbs   */
/*                         */
/*                         */

/* present */

verb(verb(am), [cat:vp,form:pres,num:sing,person:1,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [am].
verb(verb(are),[cat:vp,form:pres,num:sing,person:2,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [are].
verb(verb(is), [cat:vp,form:pres,num:sing,person:3,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [is].

verb(verb(are),[cat:vp,form:pres,num:plur,person:1,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [are]. 
verb(verb(are),[cat:vp,form:pres,num:plur,person:2,prtype:_PTYPE,sem:be:2,vtype:aux])  --> [are]. 
verb(verb(are),[cat:vp,form:pres,num:plur,person:3,prtype:_PTYPE,sem:be:2,vtype:aux])  --> [are].

/* past */
	
verb(verb(was), [cat:vp,form:past,num:sing,person:1,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [was].
verb(verb(were),[cat:vp,form:past,num:sing,person:2,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [were].
verb(verb(was), [cat:vp,form:past,num:sing,person:3,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [was].

verb(verb(were),[cat:vp,form:past,num:plur,person:1,prtype:_PTYPE,sem:be:2,vtype:aux]) --> [were]. 
verb(verb(were),[cat:vp,form:past,num:plur,person:2,prtype:_PTYPE,sem:be:2,vtype:aux])  --> [were]. 
verb(verb(were),[cat:vp,form:past,num:plur,person:3,prtype:_PTYPE,sem:be:2,vtype:aux])  --> [were]. 


/* present participle  - see copula */
/* past participle - see coplua */
