xs=5;
ys=5;
xt=70;
yt=50;
Ka = 1;% assume this value
Kr = [500 350 500 250 250 ];
obsx = [20 30 35 50 65] ;
obsy = [13 25 35 38 45];
n=length(obsx);
rho0=[7 4 5 3 4];
rhor=zeros(1,n);
Frxi=zeros(1,n);
Fryi=zeros(1,n);
Frx=0;
Fry=0;
Fax = (-Ka)*(xs-xt);
Fay = (-Ka)*(ys-yt);
for i=1:n
rhor(i)=sqrt((xs-obsx(i)).^2+ (ys-obsy(i)).^2);
if(rhor(i)>rho0(i)) 
    Frxi(i) = 0;
    Fryi(i) = 0;
else
    Frxi(i)= ((-Kr(i))*(xs-obsx(i))*(rhor(i)-rho0(i))/(rhor(i)));
    Fryi(i) = ((-Kr(i))*(ys-obsy(i))*(rhor(i)-rho0(i))/(rhor(i)));
    Frx = Frx + Frxi ;
    Fry = Fry + Fryi ;
end
end
Fx = Fax + Frx;
Fy = Fay + Fry;