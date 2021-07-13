def gato 
    puts "Estas en el metodo 1" 
    yield 
    puts "Estas de vuelta en el metodo 3" 
    yield 
    puts "fin"
end 
gato { puts "Estas en el bloque 2,4" }


def perro 
    yield 5 
    puts "Estas en el metodo del test" 
    yield 100 
end 
perro { |i| puts "Estas en el bloque #{i}" }
