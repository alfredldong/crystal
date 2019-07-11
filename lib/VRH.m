%see Elasticity calculations in wiki.
%Zener ratio
Zener=2*c2(4,4)/(c2(1,1)-c2(1,2));
A=(c2(1,1)+c2(2,2)+c2(3,3))/3;
a=(s2(1,1)+s2(2,2)+s2(3,3))/3;
B=(c2(2,3)+c2(1,3)+c2(1,2))/3;
b=(s2(2,3)+s2(1,3)+s2(1,2))/3;
C=(c2(4,4)+c2(5,5)+c2(6,6))/3;
c=(s2(4,4)+s2(5,5)+s2(6,6))/3;
%Bulk modulus Voigt average
KV=(A+2*B)/3;
%Shear modulus Voigt average
GV=(A-B+3*C)/5;
%Bulk modulus Reuss average
KR=1/(3*a+6*b);
%Shear modulus Reuss average
GR=5/(4*a-4*b+3*c);
%Bulk modulus VRH average
KVRH=(KV+KR)/2;
%Shear modulus VRH average
GVRH=(GV+GR)/2;
%Universal elastic anisotropy
AU=5*GV/GR+KV/KR-6;
%Isotropic Poisson ratio
mu=(3*KVRH-2*GVRH)/(6*KVRH+2*GVRH);
