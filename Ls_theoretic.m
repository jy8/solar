clear
clc

%poly=[-0.8293,0.6486,0.0268];
mu=linspace(0.3286,0.6714,30);
P=linspace(0.1,0.9,20);
[MU,PP]=meshgrid(mu,P);
SENS=nan(size(MU));
for ii=1:length(mu)
    for jj=1:length(P)
        SENS(jj,ii)=f_lolp_sensbeta( MU(jj,ii),PP(jj,ii) );
    end
end

contour(MU,PP,SENS,'ShowText','on')
xlabel('$\mu$','interpreter','latex')
ylabel('$\mathrm{LOLP}_D$','interpreter','latex')
title('analytical $L_s$','interpreter','latex')
text(0.07,1.07,'b','units','normalized','FontWeight','bold');
