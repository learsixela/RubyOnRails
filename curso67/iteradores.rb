#.any? { |obj| block } => true or false
puts ["ant", "bear", "cat"].any? { |word| word.length >= 4 } # => true

#.each => invoca el bloque una vez para cada elemento en ruby self, enviándo este elemento como parámetro al bloque.
["ant", "bear", "cat"].each { |word| print word, " " } 

#.collect { |obj| block } => devuelve un nuevo arreglo con los resultados después de haber ejecutado el bloque una vez para cada elemento en enum
puts (1..4).collect { |i| i*i }.to_s # => [1, 4, 9, 16]
puts (1..4).collect { "cat" }.to_s # => ["cat", "cat", "cat", "cat"]

#.detect/.find => devuelve el primer valor para el que el bloque sea verdadero.
puts |(1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..10).find { |i| i %5 == 0 and i % 7 == 0 } # => nil

puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
puts (1..100).find { |i| i %5 == 0 and i % 7 == 0 } # => 35

#.find_all { |obj| block } ó 
#.select { |obj| block } => devuelve un arreglo que contiene los elementos de enum para los que el bloque sea verdadero.
puts (1..10).find_all { |i| i % 3 == 0 }.to_s # => [3, 6, 9]
puts (1..10).select { |i| i % 3 == 0 }.to_s # => [3, 6, 9]

#.reject { |obj| block } => lo opuesto de find_all
(1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

#.upto(limit) => recorre el bloque hasta alcanzar el número límite
"a".upto("j") { |i| print i, " " } # => 5 6 7 8 9 10

print "\n"
#RANGE
puts (1..25).include?(12) #=> devuelve true or false
puts (1..25).last #=> devuelve el último objeto en el Range
puts (1..25).max #=> devuelve el valor máximo en el Range
puts (15..25).min #=> devuelve el valor mínimo en el Range