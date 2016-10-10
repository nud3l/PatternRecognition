try
    %%%%im_measure%%%%
    %%%Automatic neural network classifier%%%%
    [e_neurc_m,stdneurc_m]=prcrossval(nistm,neurc,10,10);

	%%%Random neural network classifier%%%
	[e_rnnc_m,stdrnnc_m]=prcrossval(nistm,rnnc,10,10);

	%%%Train feed forward neural network by Levenberg-Marquardt rule%%%
	[e_lmnc_m,stdlmnc_m]=prcrossval(nistm,lmnc,10,10);

	%%%Train feed forward neural network classifier by backpropagation%%%
	[e_bpxnc_m,stdbpxnc_m]=prcrossval(nistm,bpxnc,10,10);

    %%%%im_profiles%%%%
	%%%Automatic neural network classifier%%%%
    [e_neurc_pro,stdneurc_pro]=prcrossval(nistpro,neurc,10,10);

	%%%Random neural network classifier%%%
	[e_rnnc_pro,stdrnnc_pro]=prcrossval(nistpro,rnnc,10,10);

	%%%Train feed forward neural network by Levenberg-Marquardt rule%%%
	[e_lmnc_pro,stdlmnc_pro]=prcrossval(nistpro,lmnc,10,10);

	%%%Train feed forward neural network classifier by backpropagation%%%
	[e_bpxnc_pro,stdbpxnc_pro]=prcrossval(nistpro,bpxnc,10,10);
catch
    disp('An error occurred.');
    disp('Execution will continue.');
end