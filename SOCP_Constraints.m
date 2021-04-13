%% This code is for visualizing Second Order Cone Constraints of the following form
%|| Ax + b|| < c'x + d   # c' = traspose(c)  # ||.|| is norm 2
% In my example I have taken A as 2x2 matrix defining two hyperplanes
% 1st hyperplane => x+y-1
% 2nd hyperplane => x-y-1
% c'x + d => x+1



n=2;
x = -2:0.1:2;
y=x;
[Xaxis,Yaxis] = meshgrid(x,y);
%z = sqrt(Xaxis.^2+Yaxis.^2);
%surf(Xaxis,Yaxis,z,'FaceAlpha',0.5);
% contourf(Xaxis,Yaxis,z1);
z1=Xaxis+Yaxis-1;
z2=Xaxis-Yaxis-1;
z = sqrt(z1.^2+z2.^2);  % ||Ax+b|| = z
z3 = Xaxis+1;         % c'x+d
zz = (z3>=z);           % Checking for all feasible points such as  ||Ax+b||<=c'x+d  
zz1 = zz.*z;            % filtering all feasible points
surf(Xaxis,Yaxis,zz1);  % for visualizing the contraints with cone

