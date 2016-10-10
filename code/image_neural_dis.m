try
    %%%Automatic neural network classifier%%%%
	%[e_neurc_m,stdneurc_m]=prcrossval(nist1,md*neurc,10,10);

	%%%Random neural network classifier%%%
	%[e_rnnc_m,stdrnnc_m]=prcrossval(nist1,md*rnnc,10,10);

	%%%Train feed forward neural network by Levenberg-Marquardt rule%%%
	%[e_lmnc_m,stdlmnc_m]=prcrossval(nist1,md*lmnc,10,10);

	%%%Train feed forward neural network classifier by backpropagation%%%
	%[e_bpxnc_m,stdbpxnc_m]=prcrossval(nist1,md*bpxnc,10,10);

	%%%Automatic neural network classifier%%%%
	[e_neurc_2,stdneurc_2]=prcrossval(nist2,mc*neurc,10,10);

	%%%Random neural network classifier%%%
	[e_rnnc_2,stdrnnc_2]=prcrossval(nist2,mc*rnnc,10,10);

	%%%Train feed forward neural network by Levenberg-Marquardt rule%%%
	[e_lmnc_2,stdlmnc_2]=prcrossval(nist2,mc*lmnc,10,10);

	%%%Train feed forward neural network classifier by backpropagation%%%
	[e_bpxnc_2,stdbpxnc_2]=prcrossval(nist2,mc*bpxnc,10,10);
catch
    disp('An error occurred.');
    disp('Execution will continue.');
end