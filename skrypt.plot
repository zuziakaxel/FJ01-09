
reset

# epslatex

set terminal epslatex size 13cm,9cm color colortext
set output 'srebro.tex'

# Line styles
set grid
set border linewidth 4

# set logscale y

# Axes label
set xlabel 'Czas [s]'
set ylabel 'log(N)'


# set xrange [-1.1 : 1.6]
# set yrange [60 : 95]

# Tics in LaTeX format
set format '$%g$'

f(x)=a*x + b
fit [120:] f(x) 'srebro_log.dat' via a,b

g(x)=(x < 200 ) ? a1*x+b1 : 1/0 
fit [0:120] g(x) "srebro_log.dat" using 1:(log(exp($2)-exp(f($1)))) via a1,b1


# Plot
plot "srebro_log.dat" using 1:2 notitle , f(x) title "$^{108}$Ag",  g(x) title "$^{110}$Ag"







