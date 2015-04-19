
reset

# epslatex

set terminal epslatex size 13cm,9cm color colortext
set output 'plateau.tex'

# Line styles
set grid
set border linewidth 3
set style line 1 linecolor rgb '#314F77' linetype 1 linewidth 5 pt 2 # blue
set style line 2 linecolor rgb '#000000' linetype 0 linewidth 5 pt 2 # blue
# set logscale y

# Axes label
set xlabel 'Napięcie [V]'
set ylabel 'Liczba zliczeń'


# set xrange [-1.1 : 1.6]
# set yrange [60 : 95]

# Tics in LaTeX format
set format '$%g$'
set arrow from 1200,808 to 1280,808 nohead ls 2 front 
set label	"$J_A$" at	1185,830
set arrow from 1280,0 to 1280,808 nohead ls 2 front 
set label	"$U_A$" at	1280,-35

set arrow from 1200,907 to 1460,907 nohead ls 2 front 
set label	"$J_B$" at	1185,930 font "Symbol,24"
set arrow from 1460,0 to 1460,907 nohead ls 2 front 
set label	"$U_B$" at	1460,-35 font "Symbol,24"
# Plot
plot "plateau.dat" using 1:2 notitle w linespoints ls 1







