$1
awk 'BEGIN{sum=0.0}{delta = $1 - avg; avg += delta / NR; mean2 += delta * ($1 - avg); } END { printf( "%.10f\n", sqrt(mean2 / (NR-1))); }' $1
