%%%%%Feature selection code %%%%%%%%%%%%%
%%%Parallel combining%%%
pc_parzen = pcam(nistdata,13);
pc_svc = pcam(nistpro,7);
pc_ldc = pcam(nistm,14);
w_parzen = pc_parzen*parzenc([],0.5);
w_svc = pc_svc*svc(proxm('e'));
w_ldc = pc_ldc*ldc;
W = [w_parzen; w_svc; w_ldc];
Cmax = W*maxc;            % max combiner
Cmin = W*minc;            % min combiner
Cmean = W*meanc;          % mean combiner
Cprod = W*prodc;          % product combiner
nist = [nistdata nistpro nistm]
[err,std]=prcrossval(nist,{Cmax,Cmin,Cmean,Cprod},10,10)