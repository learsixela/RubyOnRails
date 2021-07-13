arreglo =  ['a','b','c','d','e','f','g']

#acceder a los elementos del arreglo por el indice
puts arreglo[2] #c

#reemplar el valor del elemento en la posicion 
arreglo[2] = "h"

#to_s: cambia temporalmente a string
puts arreglo.to_s

for elemento in arreglo 
    puts "arreglo: El valor de la variable local es #{elemento}" 
end
#each accede a los elementos del arreglo
arreglo.each do |elemento|
    puts "arreglo: El valor de la variable local es #{elemento}" 
end
#each_index accede a los indices del arreglo
arreglo.each_with_index do |elemento, indice|
    puts "posicion #{indice} - valor del elemento: #{elemento} "
end

#agregar un elemento al final del arreglo
arreglo.push("i")
puts arreglo.to_s
#agregar el elemento al inicio del arreglo,desplazandolo al final los elementos
arreglo.insert(0,"j")
puts arreglo.to_s
arreglo.insert(9,"h")
puts arreglo.to_s

#eliminar un elemento del arreglo
arreglo.delete("h")
puts arreglo.to_s
#eliminar un elemento del arreglo por posicion
arreglo.delete_at(0)
puts arreglo.to_s

#metodos utiles para el manejo de arreglos
#first
puts arreglo.first
#last
puts arreglo.last
#size
puts arreglo.size
#length
puts arreglo.length
#fetch
puts arreglo.fetch(6)
#reverse
puts arreglo.reverse.to_s

#bang (!), realiza persistencia de los cambios temporalmente
#shuffle desordena el arreglo
puts arreglo.shuffle!.to_s
puts arreglo.to_s

#sort ordena el arreglo
puts arreglo.sort!.to_s
puts arreglo.to_s

a = %w{gato perro oso} 
puts a.values_at(1,2).join(' y ') #=> "perro y oso"