function [ax,ay,az,E,Gmax,Gmin,numax,numin,v,sv]=elastic3D(s4,c4,rho,meshnum)
n=3;
theta=linspace(0,pi,meshnum);
phi=linspace(0,2*pi,meshnum);
chi=linspace(0,2*pi,meshnum);
a=zeros(3,meshnum,meshnum);
b=zeros(3,meshnum);
E=zeros(meshnum,meshnum);
G=zeros(1,meshnum);
Gmax=zeros(meshnum,meshnum);
Gmin=zeros(meshnum,meshnum);
nu=zeros(1,meshnum);
numax=zeros(meshnum,meshnum);
numin=zeros(meshnum,meshnum);
v=zeros(3,meshnum,meshnum);
sv=zeros(3,meshnum,meshnum);
for ii=1:1:meshnum
    for jj=1:1:meshnum
        %		a(:,ii,jj)=sphere2direct(theta(ii),phi(jj));
        a(1,ii,jj)=cos(phi(jj)).*sin(theta(ii));
        a(2,ii,jj)=sin(phi(jj)).*sin(theta(ii));
        a(3,ii,jj)=cos(theta(ii));
        %		E(ii,jj)=YoungsModulus(s4,a(:,ii,jj));
        E(ii,jj)=1/tensor4sum(s4,a(:,ii,jj),a(:,ii,jj),a(:,ii,jj),a(:,ii,jj),n);
        %		[Gmax(ii,jj),Gmin(ii,jj)]=shearmaxmin(s4,a(:,ii,jj));
        %		[numax(ii,jj),numin(ii,jj)]=Poissonmaxmin(s4,a(:,ii,jj));
        for kk=1:1:meshnum
            b(1,kk)=cos(theta(ii)).*cos(phi(jj)).*cos(chi(kk))-sin(phi(jj)).*sin(chi(kk));
            b(2,kk)=cos(theta(ii)).*sin(phi(jj)).*cos(chi(kk))+cos(phi(jj)).*sin(chi(kk));
            b(3,kk)=-sin(theta(ii)).*cos(chi(kk));
            G(kk)=1/tensor4sum(s4,a(:,ii,jj),b(:,kk),a(:,ii,jj),b(:,kk),n)/4;
            s12p=tensor4sum(s4,a(:,ii,jj),a(:,ii,jj),b(:,kk),b(:,kk),n);
            s11p=tensor4sum(s4,a(:,ii,jj),a(:,ii,jj),a(:,ii,jj),a(:,ii,jj),n);
            nu(kk)=-s12p/s11p;
        end
        Gmax(ii,jj)=max(G);
        Gmin(ii,jj)=min(G);
        numax(ii,jj)=max(nu);
        numin(ii,jj)=min(nu);
        Ch=tensor4sum2(c4,a(:,ii,jj),a(:,ii,jj),n);
        [state,value]=eig(Ch);
        v(:,ii,jj)=sort(sqrt(diag(value)/rho));
        sv(:,ii,jj)=1./v(:,ii,jj);
    end
end
ax=squeeze(a(1,:,:));ay=squeeze(a(2,:,:));az=squeeze(a(3,:,:));
end

