personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

personas_hash = personas.zip(edades).to_h

def prom_edades(has)
  suma = 0
  has.each { |_or_x, y| suma += y }
  suma / has.count
end

print prom_edades(personas_hash)
