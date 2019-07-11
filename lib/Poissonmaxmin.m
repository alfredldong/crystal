function [numax,numin,chimax,chimin]=Poissonmaxmin(s4,a,meshnum)
	a=a/norm(a);
	chi=linspace(0,2*pi,meshnum);
	nu=zeros(1,meshnum);
	for ii=1:1:meshnum
		nu(ii)=Poisson(s4,a,chi(ii));
	end
	numax=max(nu);
	chimax=chi(find(nu==numax));
	numin=min(nu);
	chimin=chi(find(nu==numin));
end