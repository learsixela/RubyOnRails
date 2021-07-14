def perro 
    puts "Estas en el metodo 1" 
    yield 
    puts "Estas de vuelta en el metodo 3" 
    yield 
end 
perro { puts "Estas en el bloque 2,4" }

def gato 
    yield 5 
    puts "Estas en el metodo del test" 
    yield 100 
end 
gato { |i| puts "Estas en el bloque #{i}" }
