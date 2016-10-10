%%%%%Feature selection code %%%%%%%%%%%%%
%%%%for knn5 improfile scenario 1 with euclidean
clsf = svc(proxm('e')); %needs to be adjusted according classifier
featnum = [1:1:32]; %needs to be adjusted according to im_profile and im_measure
mf = max(featnum);
[trn, tst] = gendat(nistpro, 0.2); %needs to be adjusted according to im_profile and im_measure, also increase training size for scenario 2

e0 = clevalf(trn,clsf,featnum,[],1,tst);
rp = randperm(size(nistpro,2));
er = clevalf(trn(:,rp),clsf,featnum,[],1,tst(:,rp));
[w_i,r_i] = featseli(trn,'eucl-m',mf);
e_i = clevalf(trn*w_i,clsf,featnum,[],1,tst*w_i);
[w_f,r_f] = featself(trn,'eucl-m',mf);
e_f = clevalf(trn*w_f,clsf,featnum,[],1,tst*w_f);
[w_b,r_b] = featselb(trn,'eucl-m',mf);
e_b = clevalf(trn*w_b,clsf,featnum,[],1,tst*w_b);
%figure
%plote({e_i,e_f,e_b})
%legend({'individual_train','individual_test', 'forward_train' , 'forward_test','backward_train' , 'backward_test'})

%Print out minimum error and number of features for each selection strategy
[error_i,error_i_i] = min(e_i.error);
[error_f,error_f_i] = min(e_f.error);
[error_b,error_b_i] = min(e_b.error);

%Determine overall smallest error to decide which strategy to use
error_arr = [error_i error_f error_b];
[error_min,error_index]=min(error_arr);

switch error_index
    case 1
        w_final = w_i(:,r_i(1:error_i_i,3));
        disp('Using individual selection. Number of features:')
        error_i_i
    case 2
        w_final = w_f(:,r_f(1:error_f_i,3));
        disp('Using forward selection. Number of features:')
        error_f_i
    case 3
        w_final = w_b(:,r_b(1:error_b_i,3));
        disp('Using backward selection. Number of features:')
        error_b_i
    otherwise
        disp('no minimum found')
end
%Apply crossvalidation
[err,std]=prcrossval(nistpro,w_final*clsf,10,2)
