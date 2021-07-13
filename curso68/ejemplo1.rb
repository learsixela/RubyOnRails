puts "hola clase"
# "Yo soy una instancia de la clase ".class
numero = 24
puts "24 + 8 es #{numero + 8}"
puts "24 + 8 es numero + 8"
puts "24 + 8 es " + (24 + 8).to_s
#puts "24 + 8 es " + (24 + 8)
puts "casa".split("a") 
puts "israel,palma,41,Temuco".split(",")

variable = "casa"
variable[0] = "K"
puts "variable = #{variable}"

age = 22
if (age >= 21)
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."
end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if !(age < 21)
    puts "Bienvenido a la fiesta."
  else
    puts "Todavía no."
  end

i = 0
num = 5
while i < num do
   puts "Dentro del bucle i = #{i}"
   i +=1
end

# [0,1,2,3,4,5]
for i in 0..5 
    puts "El valor de la variable local es #{i}" 
end
  
for i in 0..5 
    next if i == 2
    puts "El valor de la variable local es #{i}"   
end
  

#function hola_mundo()
def hola_mundo
    puts "hola mundo desde el metodo"
end
hola_mundo #llamado a la funcion
  

def saludar (nombre1, nombre2)
    puts "Hola, #{nombre1} y #{nombre2}"
end
saludar "Oscar", "Eduardo" # => "Hola, Oscar y Eduardo"

