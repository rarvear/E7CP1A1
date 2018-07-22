meses = %w[Enero Febrero Marzo Abril Mayo]
ventas = [2000, 3000, 1000, 5000, 4000]

h = meses.zip(ventas).to_h
h = h.invert

print h.max[1]
