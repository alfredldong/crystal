function [v,sv]=Christoffel(c4,a,rho)
	n=3;
	a=a/norm(a);
	Ch=tensor4sum2(c4,a,a,n);
	[state,value]=eig(Ch);
	v=sort(sqrt(diag(value)/rho));
	sv=1./v;
end
