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
%      File : prep.pl              % 
%                                  %
% ******************************** %


%prep(prep(),[cat:pp,sem:,type:]) --> [].

prep(prep(above),           [cat:pp,sem:above:1,   type:loct]) --> [above].
prep(prep(across),          [cat:pp,sem:across:1,  type:time]) --> [across].
prep(prep(after),           [cat:pp,sem:after:1,   type:time]) --> [after].
prep(prep(at),              [cat:pp,sem:at:1,      type:loct]) --> [at].
prep(prep(behind),          [cat:pp,sem:behind:1,  type:loct]) --> [behind].
prep(prep(by),              [cat:pp,sem:by:1,      type:time]) --> [by].
prep(prep(for),             [cat:pp,sem:for:1,     type:benf]) --> [for].
prep(prep(in),              [cat:pp,sem:in:1 ,     type:loct]) --> [in].
prep(prep(in),              [cat:pp,sem:in:2 ,     type:time]) --> [in].
prep(prep(into),            [cat:pp,sem:into:1,    type:move]) --> [into].
prep(prep(off),             [cat:pp,sem:off:1,     type:move]) --> [off].
prep(prep(on),              [cat:pp,sem:on:1,      type:loct]) --> [on].
prep(prep(on),              [cat:pp,sem:on:2,      type:time]) --> [on].
prep(prep(out),             [cat:pp,sem:out:1,     type:move]) --> [out].
prep(prep(compound(out,of)),[cat:pp,sem:out:2,     type:move]) --> [out,of].
prep(prep(over),            [cat:pp,sem:over:1,    type:move]) --> [over].
prep(prep(to),              [cat:pp,sem:to:1,      type:move]) --> [to].
prep(prep(towards),         [cat:pp,sem:towards:1, type:move]) --> [towards].
prep(prep(until),           [cat:pp,sem:until:1,   type:time]) --> [until].
prep(prep(upon),            [cat:pp,sem:upon:1,    type:move]) --> [upon].
prep(prep(with),            [cat:pp,sem:with:1,    type:acmp]) --> [with].

