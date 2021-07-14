for i in 1..255
    puts i
end

puts (1..255).collect { |i| print i, " " }

print (1..255).to_a.to_s

1.upto(255) { |i| print i, " " }

(1..255).each { |i| print i, ""}

while i <=255
    print i, " "
    i += 1
end

#2

#puts (1..255).find_all { |i| i.odd? }
#puts (1..255).reject { |i| i.even? }.to_s
#puts (1..255).select { |i| i % 2!=0}.to_s

for i in (1..255)
    puts i if i.odd?
end

#3

suma=0
(1..255).each do |dato|
    puts "nuevo numero:#{dato}suma:#{suma=suma+dato}"
end
suma=0
for i in 1..255
    puts "nuevo2 numero:#{i}suma:#{suma=suma+i}"
end

#4
x= [1, 3, 5, 7, 9, 13]

for i in x
    puts "con for #{i}"
end

x.each { |i| puts "con each #{i}" }

#5
x = [1, 3, 5, 7, 9, 13]
puts x.max

def getMax arreglo
    yield arreglo.max
end

getMax(x) {|max| puts "el valor maximo es #{max}"}

#6
x = [1, 3, 5, 7, 9, 13]
puts "El promedio es: #{x.sum/x.length}"

#7
puts (1..255).find_all { |i| i.odd? }.to_a.to_s

#8
x= [1, 3, 5, 7] 
y = 3
mayores=0
=begin
for i in x
  if i > y
    mayores+=1
  end
end
puts mayores

def contar (*x)
    puts x.count {|i| i > x.last}
    end
contar '1','3','5','7','3'
=end

def mayorQueY(arreglo,y)
    puts arreglo.count {|i| i > y}
end
mayorQueY [1, 3, 5, 7] , 3

puts "cantidad elementos: #{x.find_all {|i| i > y}.size} ; elementos #{x.find_all {|i| i > y}}" 

#9
puts [1, 5, 10, -2].collect { |x| x*x }.to_s

arreglo=[1, 5, 10, -2]
array =[]
for i in arreglo
    array.push(i*i)
end
puts array.to_s

#10
arreglo= [1, 5, 10, -2]

=begin
#este for no sirve para trabajar con posiciones 
for elemento in arreglo
    if elemento < 0
    
    end
end
=end

#este for sirve para trabajar con posiciones
for indice in 0..arreglo.size-1
    if arreglo[indice] < 0
        puts "El elemento #{indice} es negativo"
        arreglo[indice] = 0
    end
end

arreglo.each_with_index do |elemento,indice|
    if elemento < 0
        arreglo[indice]=0
    end
end

#11

arreglo = [1, 5, 10, -2]
puts "maximo #{arreglo.max}; minimo #{arreglo.min}; promedio #{arreglo.sum/arreglo.length}"

#12
arreglo= [1, 5, 10, 7, -2] #[5, 10, 7, -2, 0]
arreglo.delete_at(0)
arreglo.push(0)
puts "arreglo #{arreglo}"

arreglo= [1, 5, 10, 7, -2]
puts arreglo.slice(1,arreglo.size-1).push(0).to_s

#13
#usar de base las respuestas del ejercicio 10
arreglo = [-1, -3, 2]
arreglo.each_with_index do |elemento,indice|
    if elemento < 0
        arreglo[indice]='Dojo'
    end
end
puts arreglo.to_s
