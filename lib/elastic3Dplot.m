x=E.*ax; y=E.*ay; z=E.*az;
figure(1)
surf(x,y,z,E, 'FaceColor','interp', 'EdgeColor','none');
axis tight;
%title 'Youngs Modulus';
xlabel('x');ylabel('y');zlabel('z');
view(30,30); daspect([1 1 1]);
camlight; lighting phong;
cbar=colorbar; title(cbar, 'GPa');
box on;
set(gca,'FontName','Calibri','FontSize',18);
set(gca,'position',[0.2,0.12, 0.57,0.77]);
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
print(1,'-dtiff','-r1000',strcat(nameout,'\Youngs Modulus.tiff'))
close all

x1=Gmax.*ax; y1=Gmax.*ay; z1=Gmax.*az;
x2=Gmin.*ax; y2=Gmin.*ay; z2=Gmin.*az;
figure(2)
hold on
p1=surf(x1,y1,z1,Gmax, 'FaceColor','interp', 'EdgeColor','none');
p2=surf(x2,y2,z2,Gmin, 'FaceColor','interp', 'EdgeColor','none');
axis tight; 
%title 'Shear Modulus';
xlabel('x');ylabel('y');zlabel('z');
view(30,30); daspect([1 1 1]);
camlight; lighting phong;
cbar=colorbar; title(cbar, 'GPa');
box on;
set(p1,'facealpha',0.25);
set(p2,'facealpha',1);
set(gca,'FontName','Calibri','FontSize',16);
set(gca,'position',[0.2,0.12, 0.57,0.77]); 
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
print(2,'-dtiff','-r1000',strcat(nameout,'\Shear Modulus.tiff'))
hold off 
close all

x1=numax.*ax; y1=numax.*ay; z1=numax.*az;
x3=numin.*ax; y3=numin.*ay; z3=numin.*az;
figure(3)
hold on
q1=surf(x1,y1,z1,numax, 'FaceColor','interp', 'EdgeColor','none');
q2=surf(x3,y3,z3,numin, 'FaceColor','interp', 'EdgeColor','none');
axis tight; 
%title 'Poissons Ratio';
xlabel('x');ylabel('y');zlabel('z');
view(30,30); daspect([1 1 1]);
camlight; lighting phong;
%cbar=colorbar; title(cbar, '1');
box on;
set(q1,'facealpha',0.25);
set(q2,'facealpha',1);
set(gca,'FontName','Calibri','FontSize',16);
set(gca,'position',[0.2,0.12, 0.57,0.77]);
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
print(3,'-dtiff','-r1000',strcat(nameout,'\Poissons Ratio.tiff'))
hold off
close all

v1=squeeze(v(1, :, :));
v2=squeeze(v(2, :, :));
v3=squeeze(v(3, :, :));
figure(4)
x1=v1.*ax; y1=v1.*ay; z1=v1.*az;
hold on
x2=v2.*ax; y2=v2.*ay; z2=v2.*az;
x3=v3.*ax; y3=v3.*ay; z3=v3.*az;
p1=surf(x1,y1,z1,v1, 'FaceColor','interp', 'EdgeColor','none');
p2=surf(x2,y2,z2,v2, 'FaceColor','interp', 'EdgeColor','none');
p3=surf(x3,y3,z3,v3, 'FaceColor','interp', 'EdgeColor','none');
axis tight; 
%title 'Velocity';
xlabel('x');ylabel('y');zlabel('z');
view(30,30); daspect([1 1 1]);
camlight; lighting phong;
cbar=colorbar; title(cbar, 'kms^{-1}');
box on;
set(p1,'facealpha',1);
set(p2,'facealpha',0.6);
set(p3,'facealpha',0.2);
set(gca,'FontName','Calibri','FontSize',16);
set(gca,'position',[0.2,0.12, 0.57,0.77]); 
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
print(4,'-dtiff','-r1000',strcat(nameout,'\Velocity.tiff'))
close all

sv1=squeeze(sv(1, :, :));
sv2=squeeze(sv(2, :, :));
sv3=squeeze(sv(3, :, :));
figure(5)
x1=sv1.*ax; y1=sv1.*ay; z1=sv1.*az;
hold on
x2=sv2.*ax; y2=sv2.*ay; z2=sv2.*az;
x3=sv3.*ax; y3=sv3.*ay; z3=sv3.*az;
p1=surf(x1,y1,z1,sv1, 'FaceColor','interp', 'EdgeColor','none');
p2=surf(x2,y2,z2,sv2, 'FaceColor','interp', 'EdgeColor','none');
p3=surf(x3,y3,z3,sv3, 'FaceColor','interp', 'EdgeColor','none');
axis tight; 
%title 'Slow';
xlabel('x');ylabel('y');zlabel('z');
view(30,30); daspect([1 1 1]);
camlight; lighting phong;
cbar=colorbar; title(cbar, 'skm^{-1}');
box on;
set(p1,'facealpha',0.2);
set(p2,'facealpha',0.6);
set(p3,'facealpha',1);
set(gca,'FontName','Calibri','FontSize',16);
set(gca,'position',[0.2,0.12, 0.57,0.77]);
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
print(5,'-dtiff','-r1000',strcat(nameout,'\Slow.tiff'))
close all
