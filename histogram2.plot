reset
set terminal epslatex size 13cm,9cm color colortext
set output 'histogram2.tex'

set xlabel 'Liczba zliczeń na sekundę'
set ylabel 'Częstość'
set grid
set boxwidth 0.3 relative
set style fill transparent solid 0.7 noborder
plot "histogram2.dat" u ($1-0.15):2 w boxes lc rgb"green" title "Otrzymany rozkład", "histogram2.dat" u ($1+0.15):3 w boxes lc rgb '#314F77' title "Rozkład teoretyczny"#, '' u ($1+0.15):($3 + 0.5):3 with labels notitle