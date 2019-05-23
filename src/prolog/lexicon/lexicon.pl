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
%      File : lexicon.pl           % 
%                                  %
% ******************************** %


:-[lexicon/adjectives/adjectives].
:-[lexicon/adverbs/adverbs].
:-[lexicon/articles/articles].
:-[lexicon/comp/comp].
:-[lexicon/conj/conj].
:-[lexicon/nouns/nouns].
:-[lexicon/prepositions/prep].
:-[lexicon/rel_markers/rel_markers].
:-[lexicon/verbs/verbs].
:-[lexicon/vneg/vneg].

marker(SemMarker) :- nounbar(_PT,[sem:SemMarker|_LexFeatures],_SemFeatures,_,_).
     



