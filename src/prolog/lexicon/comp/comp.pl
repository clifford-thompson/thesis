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
%      File : comp.pl              % 
%                                  %
% ******************************** %

comp(comp(that),[cat:comp,sem:that:1])  --> [that].
comp(comp(what),[cat:comp,sem:what:1])  --> [what].
comp(comp(when),[cat:comp,sem:when:1])  --> [when].
comp(comp(why), [cat:comp,sem:why:1])   --> [why].
