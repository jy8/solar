function [A,B] = f_par_beta(mu,si)
A=-mu.*(-mu+mu.^2+si.^2)./si.^2;
B=(-1+mu).*(-mu+mu.^2+si.^2)./si.^2;
end

