start

step1: mpost -tex=latex figure.mp

step2: latex ex1.tex

step3: dvipdfm ex1.dvi

end

or 

start 

step1: mpost -tex=latex figure.mp

step2: latex ex1.tex

step3: dvips ex1.dvi

step4: ps2pdf ex1.ps

end