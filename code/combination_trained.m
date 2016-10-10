%%%Trained combining%%%
pc_parzen = pcam(nistdata,42);
pc_knn = pcam(nistdata,42);
w_parzen = pc_parzen*parzenc([],0.25);
w_knn3 = pc_knn*knnc([],3);

W = [w_parzen,w_knn3]*ldc;
W = setname(W,'TrainedCC');
[err,std]=prcrossval(nistdata,W,10,2)