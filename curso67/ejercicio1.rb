puts "hola clase"
3.times { puts "WxW " }
24.class
puts "tipo dato: #{24.class}"

x = "hello CODINGDOJO"
puts x 

puts "24 + 8 es #{24 + 8}"
puts '24 + 8 es #{24 + 8}'
puts "24 + 8 es " + (24 + 8).to_s # to_s es convertir a string
#puts "24 + 8 es " + (24 + 8)

puts "".empty?      # => true
puts "hola".empty? # => false

puts "hola clase".length

#split
puts "hola clase".split(" ")
puts "holaclase".split("a")
puts "israel-palma-quezada-41-temuco-profesor".split("-")


#bang
nombre= "israel"
nombre[0]="A"
puts nombre

#condicionales
age = 20
if age >= 21
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."
end

if !(age < 21)
    puts "Bienvenido a la fiesta. 2"
  else
    puts "Todavía no. 2"
  end
  
number = 10
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0 #else if()
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

=begin
todo esto es un bloque de bloques
comentarios
=end
  


