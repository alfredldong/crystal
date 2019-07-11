function nu=Poisson(s4,a,chi)
	n=3;
	a=a/norm(a);
	b=direct2directs(a,chi);
	s12p=tensor4sum(s4,a,a,b,b,n);
	s11p=tensor4sum(s4,a,a,a,a,n);
	nu=-s12p/s11p;
end