%%%%%Feature selection code %%%%%%%%%%%%%
%%%Parallel combining%%%
pc_parzen = pcam(nistdata,40);
pc_knn5 = pcam(nistpro,15);
pc_loglc = pcam(nistm,22);
w_parzen = pc_parzen*parzenc([],0.25);
w_knn5 = pc_knn5*knnc([],5);
w_loglc = pc_loglc*loglc;
%w_fisherc = md*fisherc;
W = [w_parzen; w_knn5; w_loglc];
Cmax = W*maxc;            % max combiner
Cmin = W*minc;            % min combiner
Cmean = W*meanc;          % mean combiner
Cprod = W*prodc;          % product combiner
nist = [nistdata nistpro nistm]
[err,std]=prcrossval(nist,{Cmax,Cmin,Cmean,Cprod},10,2)