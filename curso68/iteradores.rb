#.any? { |obj| block } => true or false
["ant", "bear", "cat"].any? { |word| word.length >= 4 } # => true

#each => invoca el bloque una vez para cada elemento en ruby self, enviándo este elemento como parámetro al bloque.
["ant", "bear", "cat"].each { |word| print word, "\n" } # => ant--bear--cat--

#collect { |obj| block } => devuelve un nuevo arreglo con los resultados después de haber ejecutado el bloque una vez para cada elemento en enum
puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

#.detect/.find => devuelve el primer valor para el que el bloque sea verdadero.
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..10).find { |i| i %5 == 0 and i % 7 == 0 } # => nil

puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
puts (1..100).find { |i| i %5 == 0 and i % 7 == 0 } # => 35

#find_all { |obj| block } ó .select { |obj| block } => devuelve un arreglo que contiene los elementos de enum para los que el bloque sea verdadero.
puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

#reject { |obj| block } => lo opuesto de find_all
(1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

#.upto(limit) => recorre el bloque hasta alcanzar el número límite
5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10   

=begin
.include?(value) => devuelve true or false
.last => devuelve el último objeto en el Range
.max => devuelve el valor máximo en el Range
.min => devuelve el valor mínimo en el Range
=end
print "\n"
puts (2..8).include?(9)
puts (2..8).last
puts (2..8).max
puts (2..8).min
