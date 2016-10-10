%%% knn classifiers %%%
[eknn2,stdknn2] = prcrossval(nist1,md*knnc([],2),10,10);
[eknn3,stdknn3] = prcrossval(nist1,md*knnc([],3),10,10);
[eknn4,stdknn4] = prcrossval(nist1,md*knnc([],4),10,10);
[eknn5,stdknn5] = prcrossval(nist1,md*knnc([],5),10,10);
%similar commands for different k%

%%% Parzen classifier, optimal window size (h=0.01)  %%%
[eparz,stdparz]=prcrossval(nist1,md*parzenc([],0.01),10,10);
% the h=0.01 is chosen as the best for this specific scenario %

%%% LDC classifier %%%
[e_ldc,stdldc]=prcrossval(nist1,md*ldc,10,10);

%%%LOGLC classifier%%%
[e_loglc, srd_loglc] =prcrossval(nist1,md*loglc,10,10);

%%%FISHERC classifier%%%
[e_fisher, std_fisher] =prcrossval(nist1,md*fisherc,10,10);

%%%Nmd classifier%%%
[e_nmd, std_nmd] =prcrossval(nist1,md*nmd,10,10);

%%%QDC classifier%%%
[e_qdc, std_qdc] =prcrossval(nist1,md*qdc,10,10);

%%%Automatic neural network classifier%%%%
[e_neurc_m,stdneurc_m]=prcrossval(nist1,md*neurc,10,10);

%%%Random neural network classifier%%%
[e_rnnc_m,stdrnnc_m]=prcrossval(nist1,md*rnnc,10,10);

%%%Train feed forward neural network by Levenberg-Marquardt rule%%%
[e_lmnc_m,stdlmnc_m]=prcrossval(nist1,md*lmnc,10,10);

%%%Train feed forward neural network classifier by backpropagation%%%
[e_bpxnc_m,stdbpxnc_m]=prcrossval(nist1,md*bpxnc,10,10);