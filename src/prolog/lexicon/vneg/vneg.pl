% ******************************** %
%                                  %

%                                  %
%      Class: MCPS 791             %
%      Prof : Dr.Charles Brown     %
%      File : vneg.pl              % 
%                                  %
% ******************************** %

/* verb negation */

vneg(vneg(not),  [cat:vp,sem:not:1]) --> [not].
vneg(vneg(never),[cat:vp,sem:and(not:1,ever:1)]) --> [never].
