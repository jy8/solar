function [ sens ] = f_lolp_sensbeta( mu,P )
poly=[-0.8293,0.6486,0.0268];
si=polyval(poly,mu);
[A,B]=f_par_beta(mu,si);
thres=icdf('beta',P,A,B);
F1=P;
mu=mu+0.005;
si=polyval(poly,mu);
[A,B]=f_par_beta(mu,si);
F2=cdf('beta',thres,A,B);
mu=mu-0.005;
sens=(F2-F1)./(0.005./mu);

end

