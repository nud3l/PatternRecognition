%%%%%Feature selection code %%%%%%%%%%%%%
%%%Stacked combining%%%
pc_parzen = pcam(nistdata,13);
pc_nmc = pcam(nistdata,13);
w_parzen = pc_parzen*parzenc([],0.5);
w_nmc = pc_nmc*nmc;
W = [w_parzen w_nmc];
Cmax = W*maxc;            % max combiner
Cmin = W*minc;            % min combiner
Cmean = W*meanc;          % mean combiner
Cprod = W*prodc;          % product combiner
[err,std]=prcrossval(nistdata,{Cmax,Cmin,Cmean,Cprod},10,2)