function E=Young(s4,a)
	n=3;
	a=a/norm(a);
	E=1/tensor4sum(s4,a,a,a,a,n);
end
