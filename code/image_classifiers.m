%%%%im_features%%%
%%% knn classifiers %%%
[eknn2,stdknn2] = prcrossval(nistm,knnc([],2),10,10);
[eknn3,stdknn3] = prcrossval(nistm,knnc([],3),10,10);
[eknn4,stdknn4] = prcrossval(nistm,knnc([],4),10,10);
[eknn5,stdknn5] = prcrossval(nistm,knnc([],5),10,10);
%similar commands for different k%

%%% Parzen classifier, optimal window size (h=0.01)  %%%
[eparz,stdparz]=prcrossval(nistm,parzenc([],0.01),10,10);
% the h=0.01 is chosen as the best for this specific scenario %

%%% LDC classifier %%%
[e_ldc,stdldc]=prcrossval(nistm,ldc,10,10);

%%%LOGLC classifier%%%
[e_loglc, srd_loglc] =prcrossval(nistm,loglc,10,10);

%%%FISHERC classifier%%%
[e_fisher, std_fisher] =prcrossval(nistm,fisherc,10,10);

%%%NMC classifier%%%
[e_nmc, std_nmc] =prcrossval(nistm,nmc,10,10);

%%%QDC classifier%%%
[e_qdc, std_qdc] =prcrossval(nistm,qdc,10,10);


%%%%im_profiles%%%
%%% knn classifiers %%%
[eknn2,stdknn2] = prcrossval(nistpro,knnc([],2),10,10);
[eknn3,stdknn3] = prcrossval(nistpro,knnc([],3),10,10);
[eknn4,stdknn4] = prcrossval(nistpro,knnc([],4),10,10);
[eknn5,stdknn5] = prcrossval(nistpro,knnc([],5),10,10);
%similar commands for different k%

%%% Parzen classifier, optimal window size (h=0.01)  %%%
[eparz,stdparz]=prcrossval(nistpro,parzenc([],0.01),10,10);
% the h=0.01 is chosen as the best for this specific scenario %

%%% LDC classifier %%%
[e_ldc,stdldc]=prcrossval(nistpro,ldc,10,10);

%%%LOGLC classifier%%%
[e_loglc, srd_loglc] =prcrossval(nistpro,loglc,10,10);

%%%FISHERC classifier%%%
[e_fisher, std_fisher] =prcrossval(nistpro,fisherc,10,10);

%%%NMC classifier%%%
[e_nmc, std_nmc] =prcrossval(nistpro,nmc,10,10);

%%%QDC classifier%%%
[e_qdc, std_qdc] =prcrossval(nistpro,qdc,10,10);

%%%SVM classifier%%%
