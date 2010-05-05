import graph;
import plain;

size(0,300);
real yplus(real x) {return sqrt(3-(x^2)/2);}
real yminus(real x) {return -yplus(x);}
real tang1(real x) {return 3-x;}
real tang2(real x) {return x-3;}

draw(graph(yplus,-sqrt(6),sqrt(6)));
draw(graph(yminus,-sqrt(6),sqrt(6)));

draw(graph(tang1,1,3.5),L=Label(s="$x+y-3=0$",align=(0,12)));
draw(graph(tang2,1,3.5),L=Label(s="$x-y-3=0$",align=(0,-12)));

xaxis("$x$",xmin=-3.5,xmax=3.5,ticks=Ticks);
yaxis("$y$",ymin=-2,ymax=2,ticks=Ticks(ticklabel=null));

dot(z=(3,0),L=Label(s="$\left(3,0\right)$"),align=4N);
dot(z=(2,1),L=Label(s="$\left(2,1\right)$"));
dot(z=(2,-1),L=Label(s="$\left(2,-1\right)$"));
