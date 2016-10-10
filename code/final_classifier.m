%%%Parallel combining%%%
pc_parzen = pcam(nistdata,40);
pc_knn5 = pcam(nistpro,15);
pc_loglc = pcam(nistm,22);
w_parzen = pc_parzen*parzenc([],0.25);
w_knn5 = pc_knn5*knnc([],5);
w_loglc = pc_loglc*loglc;
w_parzen_t = nistdata*w_parzen
w_knn5_t = nistpro*w_knn5
w_loglc_t = nistm*w_loglc
w_com = [w_parzen_t; w_knn5_t; w_loglc_t];
w = w_com*prodc;          % product combiner