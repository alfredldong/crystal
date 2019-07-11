function [Gmax,Gmin,chimax,chimin]=shearmaxmin(s4,a,meshnum)
	a=a/norm(a);
	chi=linspace(0,2*pi,meshnum);
	G=zeros(1,meshnum);
	for ii=1:1:meshnum
		G(ii)=shear(s4,a,chi(ii));
	end
	Gmax=max(G);
	chimax=chi(find(G==Gmax));
	Gmin=min(G);
	chimin=chi(find(G==Gmin));
end