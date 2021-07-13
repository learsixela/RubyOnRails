i = 0
num = 5
while i < num do
   puts "Dentro del bucle i = #{i}"
   i +=1 #incremento de i (i=i+1)
end

puts "Fuera del bucle i = #{i}"

i = 0
num = 5
until i < num do
   puts "Dentro del bucle i = #{i}"
   i +=1
end

puts "Fuera del bucle i = #{i}"

# ejemplo for de objeto
# i elemento dentro del rango o arreglo
for i in 0..5 
    next if i == 2
    puts "El valor de la variable local es #{i}" # 0,1,2,3,4,5
    break if i == 3
end
  
arreglo =  ['a','b','c','d','e','f','g','h','i']

for d in arreglo 
    puts "valor: #{d}"
end

#for i in range accede accede a los elementos del arreglo
for i in 0..5 
    # si cumple la condicion pasa al valor siguiente del arreglo
    next if i == 2
    puts "El valor de la variable local es #{i}" # 0,1,2,3,4,5
    # si cumple la condicion, sale del bloque for
    break if i == 3
end

arreglo =  ['a','b','c','d','e','f','g','h','i']

for d in arreglo 
    puts "valor: #{d}"
end
#acceder a los elementos del arreglo por el indice o posicion
puts arreglo[3] #d

# sobre escribe el elemento del arreglo en la posicion 3
arreglo[3]= "j"

# to_s: cambio temporal a string
puts arreglo.to_s

# each accede a los elementos del arreglo
arreglo.each do |elemento|
    puts "valor por each: #{elemento}"
end

# each_with_index accede a los elementos del arreglo y ademas a su indice
arreglo.each_with_index do |elemento,i|
    puts "posicion #{i} - valor each: #{elemento}"
end

arreglo =  ['a','b','c','d','e','f','g','h','i']
# agregar un elemento al final del arreglo
arreglo.push('j')
puts arreglo.to_s
# agregar un elemento al principio del arreglo, desplazandolo al final los elementos anteriores
arreglo.insert(0,'z')
puts arreglo.to_s
arreglo.insert(5,'x')
puts arreglo.to_s

#eliminar un elemento del arreglo
arreglo.delete('x')
puts arreglo.to_s
#eliminar un elemento del arreglo por el indice o posicion
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
puts arreglo.fetch(9)
#reverse
puts arreglo.reverse.to_s

#bang, realiza persistencia de los cambios temporalmente
#shuffle desordena el arreglo
puts arreglo.shuffle!.to_s
puts arreglo.to_s

#sort ordena el arreglo
puts arreglo.sort!.to_s
puts arreglo.to_s