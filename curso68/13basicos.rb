for i in(1..255)
    puts i
end
(1..255).each do |i|
    puts i
end
i=1
num = 255
while i <= num do
    puts i
    i+=1
end
1.upto(255) { |i| print i, " " }

#2
i=1
num = 255
while i <= num do
    puts i
    i+=2
end

(1..255).step(2) do |i|
    puts i
end

puts (1..255).find_all { |i| i % 2 != 0 }

for i in 1..255
    if !(i%2 ==0)
        puts i
    end
end
#3
suma =0;
for num in(0..255)
    puts "Nuevo número: #{num} suma #{suma+=num}"
end

i=1
suma=0
while i<=255 do
    puts "Nuevo número: #{i} suma #{suma+=i}"
    i+=1
end

#4
a=[1, 3, 5, 7, 9, 13]

for i in a
    puts i
end

a.each do |elemento|
    puts elemento
end

#5
def encontrarMax arreglo
    yield arreglo.max
end

encontrarMax ([-1, 3, 0, 7, 9, 13]) {|i| puts "el máximo es: #{i}" }

def encontrarMax arreglo
    yield arreglo.sort!.last
end

encontrarMax ([-1, 3, 0, 7, 9, 13]) {|i| puts "el máximo es: #{i}" }

#6
def getPromedio (arreglo)
    yield arreglo.sum/arreglo.size
end

getPromedio ([2,4,6,8]) {|i| puts "el promedio es: #{i}" }

def prom(x)
    suma = 0
    x.each do |i|
        suma+=i
    end
    puts "el promedio es: #{suma/x.length}"
end
prom([2,4,6,8])

#7
a=[]
for i in 1..255
    if !(i%2 ==0)
        a.push(i)
    end
end

puts a.to_a.join(",")

puts (0..255).select { |elem| elem.odd? }

puts (1..255).find_all { |i| i % 2 != 0 }.to_s 

#8
#[1, 3, 5, 7] y = 3
puts [1,3,5,7].find_all { |i| i > y }.size

#9
puts [1, 5, 10, -2].collect { |x| x * x }
#raiz cua x*x
puts [1, 5, 10, -2].collect { |x| (x*x) ** 0.5 }

#10
def reemplazo(x)
    x.each_with_index do |elemento, indice|
        if elemento < 0
            x.delete(x[indice])
        end
    end
    puts x.to_s
end

reemplazo([1, 5, 10, -2])

#11
arreglo= [1, 5, 10, -2]

numeros = {}

numeros["minimo"]= arreglo.min
numeros["maximo"]= arreglo.max
numeros["promedio"]= arreglo.sum/arreglo.length

puts numeros.to_s

#12
arreglo = [1, 5, 10, 7, -2]
arreglo.delete_at(0)
arreglo.push(0)
puts arreglo.to_s


x=[1, 5, 10, 7, -2]

a=[]
x.each_with_index do |data,i=1|  
    puts "valor de i #{i}"
    if i>0 
        a.push(data)
    end 
end

a.push(0)
puts a