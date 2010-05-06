size(0,300);

draw((0,10)--(10,4),L=Label("430",align=(1,1)));
draw((10,4)--(10,0),L=Label(s="25",align=E));
draw((10,0)--(0,10),L=Label(s="$\mathbf{x}$",align=4S));

draw(arc(c=(10,4),r=1,angle1=150,angle2=270),L=Label(s="159$^\circ$",align=(0.75,1)),bar=ArcArrow);
draw(arc(c=(0,10),r=3,angle1=315,angle2=329),L=Label(s="$\gamma$",align=W),bar=ArcArrow);
