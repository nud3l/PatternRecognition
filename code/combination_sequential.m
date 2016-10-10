%%%%%Feature selection code %%%%%%%%%%%%%
%%%Sequential combining%%%
%pc_parzen = pcam(nistdata,42);
%pc_knn3 = pcam(nistdata,42);
w_parzen = parzenc([],0.25);
w_knn3 = knnc([],3);
w_seq1 = w_parzen * classc * w_knn3;
w_seq2 = w_knn3 * classc * w_parzen;
w_seq3 = w_fisherc * classc * w_parzen;
[err,std]=prcrossval(nistdata,{w_parzen, w_knn3, w_seq1, w_seq2, w_seq3},10,2)