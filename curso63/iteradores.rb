#any
puts ["ant", "bear", "cat"].any? { |word| word.length >= 4 }
puts ["ant", "bear", 7.5].any? (Integer)

#each 
 ["ant", "bear", "cat"].each { |word| print word,"\n" }

#collect
puts (1..4).collect { |i| print i,"\n" }
#collect, retorna un nuevo arreglo
puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]

puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

#detect
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
#find
puts (1..10).find { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..100).find { |i| i %5 == 0 and i % 7 == 0 } # => 35

#find_all, retorna los que cumplen la condicion
puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
#reject lo contrario al find_all que no cumplen la condicion
(1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

#upto
5.upto(10) { |i| print i, "\n" } # => 5 6 7 8 9 10

#range
x = (1..25)
puts x.include?(20) #=> devuelve true or false
puts x.last #=> devuelve el último objeto en el Range
puts x.max #=> devuelve el valor máximo en el Range
puts x.min #=> devuelve el valor mínimo en el Range
puts x. . avg #=> devuelve el valor promedio en el Range