reset
set terminal epslatex size 16cm,9cm color colortext
set output 'histogram3.tex'

set xlabel 'Liczba zliczeń na sekundę'
set ylabel 'Częstość'
set grid
f(x) = 1000*(1/(18.3*(6.28)**(0.5)))*exp(-((x-543.4)**2)/(2*(18.3)**2))

set boxwidth 0.3 relative
set style fill transparent solid 0.9 noborder
plot "histogram3.dat" u ($2-0.6):3 w boxes lc rgb"green" title "Otrzymany rozkład", "histogram3.dat" u ($2+0.6):4 w boxes lc rgb '#314F77' title "Rozkład teoretyczny", f(x) w lines notitle