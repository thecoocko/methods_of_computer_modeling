x11 = 1:0.5:3;
x21 = 3:0.5:4;
x31 = 4:0.5:5;
y11 = 1-abs((x11-3)/2);
y21 = 1-abs((3-x21)/1);
y31 = 0*x31;
x1 = [x11 x21 x31]
y1 = [y11 y21 y31]

x12 = 2:1:4;
x22 = 4:1:6;
x32 = 6:1:8;
y12 = 1-abs((x12-4)/2);
y22 = 1-abs((4-x22)/2);
y32 = 0*x31;
x2 = [x12 x22 x32]
y2 = [y12 y22 y32]
hold on
grid on
plot(x1,y1,'r')
plot(x2,y2,'b')

%summ
xsum1 = 3:0.5:7;
xsum2 = 7:0.5:10;
xsum3 = 10:0.5:13;

ysum1 = 1-abs((xsum1-3)/2);
ysum2 = 1-abs((3-xsum2)/1);
ysum3 = 0*xsum3;
xsum = [xsum1 xsum2 xsum3]
ysum = [ysum1 ysum2 ysum3]

hold on
grid on
plot(xsum,ysum,'k')

%difference

xd1 = -5:0.5:-1;
xd2 = -1:0.5:3;
xd3 = 3:0.5:4;

yd1 = 1-abs((xd1+1)/4);
yd2 = 1-abs((4-xd2)/4);
yd3 = 0*xd3;
xd = [xd1 xd2 xd3]
yd = [yd1 yd2 yd3]

hold on
grid on
plot(xd,yd,'g')

%product

xp1 = -2:0.5:12;
xp2 = 12:0.5:22;
xp3 = 22:0.5:30;

yp1 = 1-abs((xp1+12)/14);
yp2 = 1-abs((12-xp2)/10);
yp3 = 0*xp3;
xp = [xp1 xp2 xp3]
yp = [yp1 yp2 yp3]

hold on
grid on
plot(xp,yp,'c')

%division

xdiv1 = -1/8:0.01:3/4;
xdiv2 = 3/4:0.01:11/8;
xdiv3 = 11/8:0.01:3;

ydiv1 = 1-abs((xdiv1-(3/4))/(14/16));
ydiv2 = 1-abs(((14/16)-xdiv2)/(10/16));
ydiv3 = 0*xdiv3;
xdiv = [xdiv1 xdiv2 xdiv3]
ydiv = [ydiv1 ydiv2 ydiv3]

hold on
grid on
plot(xdiv,ydiv,'m')

%opp

xop1 = 2/9:0.1:1/3;
xop2 = 1/3:0.1:5/9;
xop3 = 5/9:0.1:2;

yop1 = 1-abs((xop1-(1/3))/(1/9))
yop2 = 1-abs(((1/9)-xop2)/(2/9))
yop3 = 0*xop3;
xop = [xop1 xop2 xop3]
yop = [yop1 yop2 yop3]

hold on
grid on
plot(xop,yop,'y')


