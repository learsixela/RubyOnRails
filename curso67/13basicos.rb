#1
for i in 1..255
    puts i
end

1.upto(255) {|i| print i, " "}

print (1..255).to_a

(1..255).each do |elemento|
    puts elemento
end

i = 1
num = 255
while i<=num do
    puts i
    i += 1
end

#2
puts (1..255).reject { |i| i % 2 == 0 }.to_s
puts (1..255).select { |i| i % 2 != 0 }.to_s

print (1..255).to_a.select {|i| i%2!=0}

impar = 1
for i in 1..128
    puts impar
    impar = impar + 2
end

for i in 1..255
    puts i if i % 2 !=0 
end

puts (1..255).find_all {|a| a.odd?}
puts (1..255).find_all {|a| a%2!=0}

i=1
num = 255
while i<=255
    puts i
    i = i + 2
end

(1..255).step(2) do |i|
    puts i
end

#3
sum = 0
for i in 0..255
    sum = sum + i
    puts "Numero : " + i.to_s + " y la suma : " + sum.to_s
end

for i in 0..255
    puts "Numero :  #{i}  y la suma :#{suma+=i} "
end

(0..255).each { |i, suma| puts "elemento: #{i}, suma: #{(0..i).sum}" }

i=0
suma=0
while i<=255
    puts "Nuevo numero: #{i} Suma: #{suma+=i}"
    i+=1
end

#4
x = [1,3,5,7,9,13]
for i in 0..x.length-1
    puts "Elemento : " + x[i].to_s
end

for i in x
    puts " elemento : #{i}"
end

x.each {|i| puts i.to_s}

#5
def maximoArreglo arreglo
    yield arreglo.max
end
maximoArreglo ([-1,5,-3,13,6]) { |i| puts "el maximo es: #{i} " }

def getMax arreglo
    puts arreglo.sort!.last
end

getMax ([-1,5,-3,13,6])

#6
x = [1,3,5,7,9,13]
sum = 0
for i in 0..x.length-1
    sum = sum + x[i]
end
puts "El promedio del arreglo x es #{sum}/#{i+1} : #{sum/(i+1)}"

nums = 10.times.map { rand(-100..100) } # genera 10 numeros aleatorios entre -100 y 100

puts "El promedio del array #{x.to_s} es: #{x.sum/x.length.to_f}"

puts "#{x.sum/x.length}"

suma=0
x.each do |num|
    suma = suma + num
end
puts "#{suma/x.length}"

#7

y = (1..125).to_a.select{|i| i%2!=0}
puts y.class
puts "Numeros impares del 1 al 125: #{y.to_s}"

impar = 1
impares = []
for i in 1..128
    impares.push(impar)
    impar = impar + 2
end

puts impares.class

y = (1..255).to_a
puts y.class
puts y.find_all {|a| a.odd?}.to_s

#8
x = [1, 3, 5, 7]
y = 3
puts "Cantidad de numeros mayores a #{y} dentro del array #{x}: #{x.select{|i| i>y}.length}"

def mayorQueY valor, arr
    for i in 0..arr.length-1
        puts "El numero #{arr[i]} es mayor que #{valor}" if valor < arr[i]
    end
end
mayorQueY 5, x

puts "Cantidad de numeros mayores a #{y} dentro del array #{x}: #{x.find_all{|i| i>y}.size}"

#9

y = [1, 5, 10, -2]
puts "El cuadrado de cada elemento del array #{y}: #{y.collect!{|i| i*i}}"

x = [1,3,5,7,9,13]
def alCuadrado arr
    cuadra = []
    for i in 0..arr.length-1
        cuadra.push(arr[i] * arr[i])
    end
    return cuadra
end
puts "Arreglo original : #{x.to_s}"
x = alCuadrado x
puts "Arreglo al cuadrado : #{x.to_s}"

#raiz cuadrada arreglo

#10
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].

x= [1, 5, 10, -2]
def reemplazar_negativos(x)
  x.each_with_index do |valor, indice|
    if valor < 0
      x[indice] = 0
    end
  end
end

reemplazar_negativos([1, 5, 10, -2])

x= [1, 5, 10, -2]
def noNegativo arr
    for i in 0..arr.length-1
        if arr[i] < 0
            arr[i] = 0
        end
    end
    return arr
end
puts "Arreglo original : #{x.to_s}"
x = noNegativo x
puts "Arreglo sin negativos : #{x.to_s}"

x = [1, 5, 10, -2]
def val_pos n
    if (n>0)
        n
    else
        0
    end
end
puts "El cuadrado de cada elemento del array #{x}: #{x.collect!{|i| val_pos i}}"

#11
x =  [1, 5, 10, -2]
puts "maximo #{x.max}, minimo #{x.min}, y promedio #{x.sum/x.length} "

def max_min_prom arr
    {:max=>arr.max, :min=>arr.min, :prom=>arr.sum/arr.length.to_f}
end

puts "Elimina negativo del array #{x}: #{max_min_prom x}"


def maxYmin arr
    sum = 0
    max = arr[0]
    min = arr[0]
    for i in 0..arr.length-1
        sum = sum + arr[i]
        if arr[i] > max
            max = arr[i]
        end
        if arr[i] < min
            min = arr[i]
        end
    end
    return {:max=>max, :min=>min, :prom=>(sum/(i+1))}
end
x = [3,5,7,2,3]
puts "Notas : #{x.to_s}"
datos = maxYmin x
puts datos

#12
x=  [1, 5, 10, 7, -2]
x.delete_at(0)
x.push(0)
puts x.to_s

x=  [1, 5, 10, 7, -2]
puts x.slice(1,x.length).push(0).to_s

x=  [1, 5, 10, 7, -2]
def cambioArr arr
    for i in 0..arr.length-2
        arr[i] = arr[i+1]
    end
    arr[i+1] = 0
    return arr  
end
puts "Arreglo original : #{x.to_s}"
puts "Con el cambio : #{(cambioArr x).to_s}"


#13
#Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].

def dojo(x)
    x.map! { |i| i < 0 ? "Dojo" : i }
    puts x.to_a.to_s
end

x = [-1, -3, 2]
dojo(x)

x = [-1, -3, 2]
def val_pos n
    if (n>0)
        n
    else
        "Dojo"
    end
end
puts "Elimina negativo del array #{x}: #{x.collect!{|i| val_pos i}}"


def negativoDojo arr
    for i in 0..arr.length-1
        if arr[i] < 0
            arr[i] = "Dojo"
        end
    end
    return arr
end
x = [1,-3,9,5,-2,-5,4,6]
puts "Arreglo original : #{x.to_s}"
puts "Con el cambio : #{(negativoDojo x).to_s}"