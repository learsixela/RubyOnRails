#hash
#=> hash rocket

alumnos = {"nombre"=> "Klaus", "apellido"=> "Vennik", "edad"=> 20}

puts alumnos["apellido"]
#modificar elemento
alumnos["edad"] = 28
#agregar elementos
alumnos["fono"] ="12345678"
#eliminar elemento
alumnos.delete("edad")
puts alumnos.to_s

#recorrer hash
alumnos.each do |llave, valor|
    puts "#{llave} => #{valor}"
end

#hash simbolos (:)