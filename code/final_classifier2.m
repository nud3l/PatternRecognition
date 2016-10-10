%%%Parallel combining%%%
pc_parzen = pcam(nistdata,13);
pc_svc = pcam(nistpro,7);
pc_ldc = pcam(nistm,14);
w_parzen = pc_parzen*parzenc([],0.5);
w_svc = pc_svc*svc(proxm('e'));
w_ldc = pc_ldc*ldc;
[nistdata_test, nistdata_train] = gendat(nistdata,0.5);
[nistpro_test, nistpro_train] = gendat(nistpro,0.5);
[nistm_test, nistm_train] = gendat(nistm,0.5);
w_parzen_t = nistdata_train*w_parzen*classc
w_svc_t = nistpro_train*w_svc*classc
w_ldc_t = nistm_train*w_ldc*classc
w_com = [w_parzen_t; w_svc_t; w_ldc_t];
w = w_com*prodc;          % product combiner
%w = w_ldc_t