arreglo = ['a','b','c','d','e','f','g']

#acceder a los elementos del arreglo por el indice
puts arreglo[2] #c

#reemplazar un elemento
arreglo[2] = 'n'

#to_s: cambia temporalmente a string
puts arreglo.to_s

for elemento in arreglo
    puts elemento
end

#each accede a los elementos del arreglo
arreglo.each do |elemento|
    puts " El valor del elemento es #{elemento}"
end

#each_with_index: accedemos a los elemento y al indioce
arreglo.each_with_index do |elemento, indice|
    puts "posicion #{indice} - valor #{elemento}"
end

#agregar al final del arreglo de
arreglo.push('h')
puts arreglo.to_s
#agregar al inicio del arreglo, desplazandolo al final del arreglo
arreglo.insert(0,'i')
puts arreglo.to_s
arreglo.insert(5, 'j')
puts arreglo.to_s

#eliminar un elemento del arreglo
arreglo.delete('n')
puts arreglo.to_s
#eliminar un elemento del arreglo por posicion
arreglo.delete_at(0)
arreglo.insert(8,'i')
puts arreglo.to_s

#metodos utiles para elmanejo de arreglos
#first
puts arreglo.first
#last
puts arreglo.last
#size
puts arreglo.size
#length
puts arreglo.length
#fetch
puts arreglo.fetch(3)
#at
puts arreglo.to_s
puts arreglo.at(-6)
#reverse
puts arreglo.reverse.to_s

#bang (!), persistencia temporal
#shuffle desordena el arreglo
puts arreglo.shuffle!.to_s
puts arreglo.to_s

#short ordena el arreglo
puts arreglo.sort!.to_s
puts arreglo.to_s

a = %w{gato perro oso} 
puts a.values_at(0,2).join(' y ') 

