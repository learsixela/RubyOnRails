if ""
    puts "Soy positivo."
end
if 0
    puts "Soy positivo."
end

unless nil
    puts "Soy negativo."
end
unless false
    puts "Soy negativo."
end

puts "Soy positivo." if "hello"
puts "Soy positivo." if 24
puts "Soy negativo" unless nil
puts "Soy negativo" unless false

#WHILE
i = 0
num = 5
while i < num do
   puts "Dentro del bucle i 1= #{i}"
   i +=1 #i=i+1
end

i = 0
num = 5
while i < num do
  puts "Dentro del bucle i = #{i}"
  i += 1  
  break if i == 2  
end


#FOR range
for dato in 0..5 
    next if dato == 2
    puts "El valor de la variable local es #{dato}" 
    break if dato == 3
end

arreglo =  ['asdfsdasb','b','c','d','e','f','g']
for elemento in arreglo 
    #puts "arreglo: El valor de la variable local es #{elemento}" 
end



