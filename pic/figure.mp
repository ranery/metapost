input graph;
input boxes;
input rboxes;
%system variable
ahangle := 40;
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

beginfig(5)
    boxit.a(btex User Processes etex);
    boxit.b(btex System load UI etex);
    boxit.c(btex VFS etex);
    boxit.d(btex Ext3 etex);
    boxit.e(btex Buffer Cache etex);
    boxit.f(btex Device driven etex);
    boxit.g(btex Disk controller etex);
    boxit.minix(btex Minix etex);
    boxit.nfs(btex NFS etex);
    boxit.sysv(btex Sysv etex);
    boxit.direc(btex Content etex);
    boxit.inode(btex Inode cache etex);
    boxit.hard(btex etex);

    % define box size
    numeric Len; Len:=75;
    numeric Hig; Hig:=14pt;

    a.e - a.w = (Len,0); a.n - a.s = (0,Hig);
    b.e - b.w = (Len,0); b.n - b.s = (0,Hig);
    c.e - c.w = (Len,0); c.n - c.s = (0,Hig);
    d.e - d.w = (35,0); d.n - d.s = (0,Hig);
    minix.e - minix.w = (35,0); minix.n - minix.s = (0,Hig);
    nfs.e - nfs.w = (35,0); nfs.n - nfs.s = (0,Hig);
    sysv.e - sysv.w = (35,0); sysv.n - sysv.s = (0,Hig);
    e.e - e.w = (Len,0); e.n - e.s = (0,Hig);
    f.e - f.w = (Len,0); f.n - f.s = (0,Hig);
    g.e - g.w = (Len,0); g.n - g.s = (0,Hig);
    direc.e - direc.w = (Len,0); direc.n - direc.s = (0,Hig);
    inode.e - inode.w = (Len,0); inode.n - inode.s = (0,Hig);

    % define distance among box
    numeric Dis; Dis:=20;
    a.s - b.n = (0, 30);
    b.s - c.n = (0, Dis);
    c.s - d.ne = (5, Dis);
    d.se - e.n = (-5, Dis);
    c.s - nfs.nw = (-5, Dis);
    d.w - minix.e = (10, 0);
    sysv.w - nfs.e = (10, 0);
    e.s - f.n = (0, Dis);
    f.s - g.n = (0, 30);
    c.w - direc.e = (Dis,0);
    c.e - inode.w = (-Dis,0);
    hard.c = g.c;
    hard.e - hard.w = (100, 0);
    hard.n - hard.s = (0, 34);

    drawboxed(a,b,c,d,e,f,g,minix,nfs,sysv,direc,inode,hard)

    % draw connections
    drawarrow a.s -- b.n;
    drawarrow b.s -- c.n;
    drawarrow c.s -- minix.n;
    drawarrow c.s -- d.n;
    drawarrow c.s -- nfs.n;
    drawarrow c.s -- sysv.n;
    pair A[];
    A[1] = 1/5[e.nw,e.ne];
    A[2] = 2/5[e.nw,e.ne];
    A[3] = 3/5[e.nw,e.ne];
    A[4] = 4/5[e.nw,e.ne];
    drawarrow minix.s -- A[1];
    drawarrow d.s -- A[2];
    drawarrow nfs.s -- A[3];
    drawarrow sysv.s -- A[4];
    drawarrow e.s -- f.n;
    drawarrow f.s -- g.n;
    drawarrow c.w -- direc.e;
    drawarrow c.e -- inode.w;

    % draw the outline
    pair B[];
    B[1] = direc.w - (5,-56);
    B[2] = inode.e - (-5,-56);
    B[3] = inode.e - (-5,119);
    B[4] = direc.w - (5,119);
    draw B[1] -- B[2] -- B[3] -- B[4] -- cycle dashed evenly;

    label.rt(btex Hardware etex, hard.e);
    label.rt(btex Linux core etex, b.e + (15, 0));
    label.rt(btex System call etex, a.se + (15, -5));
endfig;

verbatimtex
\end{document}
etex

end
