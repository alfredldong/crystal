function [chi,E,Gmax,Gmin,numax,numin,v,sv]=elastic2D(s4,c4,a,rho,meshnum)
a=a/norm(a);
chi=linspace(0,2*pi,meshnum);
E=zeros(1,meshnum);
Gmax=zeros(1,meshnum);
Gmin=zeros(1,meshnum);
numax=zeros(1,meshnum);
numin=zeros(1,meshnum);
v=zeros(3,meshnum);
sv=zeros(3,meshnum);
for ii=1:1:meshnum
    b=direct2directs(a,chi(ii));
    E(ii)=Young(s4,b);
    [Gmax(ii),Gmin(ii),chimax,chimin]=shearmaxmin(s4,b,meshnum);
    [numax(ii),numin(ii),chimax,chimin]=Poissonmaxmin(s4,b,meshnum);
    [v(:,ii),sv(:,ii)]=Christoffel(c4,b,rho);
end
end



