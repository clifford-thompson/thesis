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
%      File : conj.pl              % 
%                                  %
% ******************************** %


conj(conj(and),    [cat:conj,sem:and:1]    ) --> [and].
conj(conj(or),     [cat:conj,sem:or:1]     ) --> [or].
conj(conj(even,so),[cat:conj,sem:even_so:1]) --> [even,so].
conj(conj(but),    [cat:conj,sem:but:1]    ) --> [but].
conj(conj(because),[cat:conj,sem:because:1]) --> [because].
conj(conj(since),  [cat:conj,sem:since:1])   --> [since].
conj(conj(until),  [cat:conj,sem:until:1])   --> [until].
conj(conj(while),  [cat:conj,sem:while:1])   --> [while].
