import graph;

size(0,300);

xaxis(xmin=-20,xmax=200);
yaxis(ymin=-450,ymax=20);

draw((0,0)--(154.098,-401.440),L=Label("$\mathbf{v}$",align=(1,1)));
draw((154.098,-401.440)--(154.098,-426.440),L=Label("$\mathbf{w}$",align=E));
draw((0,0)--(154.098,-426.440),L=Label("$\mathbf{x}$"));
draw((154.098,20)--(154.098,-450),p=dotted);

draw(arc(c=(0,0),r=35,angle1=0,angle2=-69),L=Label(s="69$^\circ$",align=E),bar=ArcArrow);
draw(arc(c=(154.098,-401.440),r=80,angle1=90,angle2=111),L=Label(s="$\alpha=21^\circ$",align=(1,2)),bar=ArcArrow);
draw(arc(c=(154.098,-401.440),r=30,angle1=111,angle2=270),L=Label(s="$\beta=159^\circ$",align=W),bar=ArcArrow);
