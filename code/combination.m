%%%%%Feature selection code %%%%%%%%%%%%%
%%%Stacked combining%%%
pc_parzen = pcam(nistdata,42);
pc_knn = pcam(nistdata,42);
w_parzen = pc_parzen*parzenc([],0.25);
w_knn3 = pc_knn*knnc([],3);
W = [w_parzen w_knn3];
Cmax = W*maxc;            % max combiner
Cmin = W*minc;            % min combiner
Cmean = W*meanc;          % mean combiner
Cprod = W*prodc;          % product combiner
[err,std]=prcrossval(nistdata,{Cmax,Cmin,Cmean,Cprod},10,2)