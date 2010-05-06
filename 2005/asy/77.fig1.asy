import graph;

size(0,300);

xaxis("$x$",xmin=-5,xmax=1,ticks=Ticks);
yaxis("$y$",ymin=-3,ymax=5,ticks=Ticks);

dot(z=(0,1),L=Label("$A$"));
dot(z=(-3,-2),L=Label("$B$"));
dot(z=(-4,4),L=Label("$C$"));

draw((0,1)--(-3,-2));
draw((-3,-2)--(-4,4));
draw((-4,4)--(0,1));
