input graph;
verbatimtex
%&latex
\documentclass[UTF-8]{article}
\begin{document}
etex

beginfig(1);
drawarrow origin--(0,100);
drawarrow origin--(100,0);
drawdot origin withpen pencircle scaled 2pt;
label.bot(btex $O$ etex, origin);
label.lft(btex $y$ etex, (0,100));
label.lrt(btex $x$ etex, (100,0));
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

verbatimtex
\end{document}
etex

end
