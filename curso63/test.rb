def gato 
    yield 
    puts "Estas en el metodo 1" 
    yield 
    yield 
    puts "Estas de vuelta en el metodo 3" 
    yield 
end 
gato { puts "Estas en el bloque 2, 4" }


def perro 
    yield 5 
    puts "Estas en el metodo del perro" 
    yield 100 
end 
perro { |i| puts "Estas en el bloque #{i}" }

suma = 0
(1..255).each do |elemento|
    suma+=elemento.to_i
    #puts "numero: #{elemento} suma parcial: #{suma+=elemento.to_i}"
end
(1..255).each do |dato|
    puts "nuevo numero:#{dato}suma:#{suma=suma+dato}"
end

puts suma