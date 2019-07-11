function G=shear(s4,a,chi)
	n=3;
	a=a/norm(a);
	b=direct2directs(a,chi);
	G=1/tensor4sum(s4,a,b,a,b,n)/4;
end