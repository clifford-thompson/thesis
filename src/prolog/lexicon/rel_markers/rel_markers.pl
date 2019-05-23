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
%      File : rel_markers.pl       % 
%                                  %
% ******************************** %

%rel(rel(),[cat:rel,sem:,type:]) --> [].

rel(rel(that),[cat:rel,sem:that:1,type:_Type]) --> [that].
rel(rel(what),[cat:rel,sem:what:1,type:vp])    --> [what].
rel(rel(when),[cat:rel,sem:when:1,type:_Type]) --> [when].
rel(rel(who), [cat:rel,sem:who:1, type:_Type]) --> [which].
rel(rel(who), [cat:rel,sem:who:1, type:_Type]) --> [who].
rel(rel(whom),[cat:rel,sem:who:1, type:_Type]) --> [whom].
