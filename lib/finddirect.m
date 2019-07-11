function [ax1,ay1,az1]=finddirect(E0,err,E,ax,ay,az)
[xm,xn]=find(abs(E-E0)<err);
ax1=ax(xm,xn);ax1=ax1(1,:);
ay1=ay(xm,xn);ay1=ay1(1,:);
az1=az(xm,xn);az1=az1(1,:);
end