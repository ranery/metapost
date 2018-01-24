input graph;
verbatimtex
%&latex
\documentclass[UTF-8]{article}
\begin{document}
etex

beginfig(1);
numeric ux, uy;
120ux = 1.2in; 4uy = 2.4in;
drawarrow origin--(0,4uy);
drawarrow origin--(120ux,0);
drawdot origin withpen pencircle scaled 2pt;
draw (0, uy){right}
    for ix=1 upto 8:
        ..(15ix*ux, uy*2/(1+cosd 15ix))
    endfor;

label.bot(btex $O$ etex, origin);
label.lft(btex $y$ etex, (0,4uy));
label.lrt(btex $x$ etex, (120ux,0));
label.lft(btex $\displaystyle y={2\over1+\cos x}$ etex, (120ux, 4uy));
endfig;

beginfig(2);
draw begingraph(3in,2in);
gdata("data.dat", s, glabel(s3,s1,s2););
endgraph;
endfig;

beginfig(3)
  u:=1cm;
  pair A,B,C,D;
  A:=(0,0);
  B:=u*dir 60;
  C:=u*dir -60;
  D:=(2u,0);
  draw A withpen pencircle scaled 4bp;
  draw B withpen pencircle scaled 4bp;
  draw C withpen pencircle scaled 4bp;
  draw D withpen pencircle scaled 4bp;
  draw A--D--B--D--C;
  draw A{up}..B;
  draw A{down}..C;
  draw A{dir 30}..B;
  draw A{dir -30}..C;
endfig;

beginfig(4)
    pair A, B, C;
    A:=(0,0); B:=(1cm,0);C:=(0,1cm);
    fill A--B--C--cycle withcolor .8 white;
endfig;

verbatimtex
\end{document}
etex

end
