restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

menu = restaurant_menu.clone

def promedio_plato(has)
  suma = 0
  has.each { |_or_x, y| suma += y }
  suma / has.count
end

def nombres_platos(has)
  nombres = []
  has.each { |x, _or_y| nombres.push(x) }
  nombres
end

def valores_platos(has)
  valores = []
  has.each { |_or_x, y| valores.push(y) }
  valores
end

def menu_mas_iva(has)
  hsh = has.clone
  hsh.each { |x, y| hsh[x] = y * 1.19 }
  hsh
end

def descuento20(has)
  hsh = has.clone
  hsh.each { |x, y| hsh[x] = y * 0.8 if x.include?(' ') }
  hsh
end

mas_caro = menu.invert.max[1]

mas_barato = menu.invert.min[1]

promedio = promedio_plato(menu)

nombres = nombres_platos(menu)

valores = valores_platos(menu)

puts mas_caro
puts mas_barato
puts promedio
puts print nombres
puts print valores
puts print menu_mas_iva(menu)
puts print descuento20(menu)
