figure(1)
p=polarplot(chi,E);
set(p,'LineWidth',2,'color',[55 126 184]/255);
set(gca,'FontSize',14,'Fontname','Calibri')
%title 'Youngs Modulus 2D';
lighting phong;
set(gca,'position',[0.12,0.05, 0.6,0.85]);  
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
hold off
print(1,'-dtiff','-r1000',strcat(nameout,'\Youngs Modulus 2D','[',num2str(a),']','.tiff'))
close all

figure(2)
p1=polarplot(chi,Gmax);
hold on
p2=polarplot(chi,Gmin);
set(p1,'LineWidth',2,'color',[55 126 184]/255);
set(p2,'LineWidth',2,'color',[228 26 28]/255);
set(gca,'FontSize',14,'Fontname','Calibri')
%title 'Shear Modulus 2D';
lighting phong;
set(gca,'position',[0.12,0.05, 0.6,0.85]);  
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
hold off
print(2,'-dtiff','-r1000',strcat(nameout,'\Shear Modulus 2D','[',num2str(a),']','.tiff')) 
close all


figure(3)
p1=polarplot(chi,numax);
hold on
p2=polarplot(chi,numin);
rlim([min(numin) max(numax)])
set(p1,'LineWidth',2,'color',[55 126 184]/255);
set(p2,'LineWidth',2,'color',[228 26 28]/255);
set(gca,'FontSize',14,'Fontname','Calibri')
%title 'Poissons Ratio 2D';
lighting phong;
set(gca,'position',[0.12,0.05, 0.6,0.85]);  
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
hold off
print(3,'-dtiff','-r1000',strcat(nameout,'\Poissons Ratio 2D','[',num2str(a),']','.tiff'))
close all

v1=v(1,:);
v2=v(2,:);
v3=v(3,:);
figure(4)
p1=polarplot(chi,v3);
hold on
p2=polarplot(chi,v2);
p3=polarplot(chi,v1);
set(p1,'LineWidth',2,'color',[55 126 184]/255);
set(p2,'LineWidth',2,'color',[228 26 28]/255);
set(p3,'LineWidth',2,'color',[77 175 74]/255);
set(gca,'FontSize',14,'Fontname','Calibri')
%title 'Velocity 2D';
lighting phong;
set(gca,'position',[0.12,0.05, 0.6,0.85]);  
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
hold off
print(4,'-dtiff','-r1000',strcat(nameout,'\Velocity 2D','[',num2str(a),']','.tiff'))
close all

sv1=sv(1,:);
sv2=sv(2,:);
sv3=sv(3,:);
figure(5)
p1=polarplot(chi,sv1);
hold on
p2=polarplot(chi,sv2);
p3=polarplot(chi,sv3);
set(p3,'LineWidth',2,'color',[55 126 184]/255);
set(p2,'LineWidth',2,'color',[228 26 28]/255);
set(p1,'LineWidth',2,'color',[77 175 74]/255);
set(gca,'FontSize',14,'Fontname','Calibri')
%title 'Slow 2D';
lighting phong;
set(gca,'position',[0.12,0.05, 0.6,0.85]);  
set(gcf,'position',[500,500, 380,350]);  
set(gcf, 'PaperPositionMode', 'auto');
hold off
print(5,'-dtiff','-r1000',strcat(nameout,'\Slow 2D','[',num2str(a),']','.tiff'))
close all


