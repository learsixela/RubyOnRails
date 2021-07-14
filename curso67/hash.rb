#hash
# => hash rocket

auto = {"marca"=> "Nissan", "modelo"=> "Qashqai", "color"=> "Negro", "anio"=> 2014}

#consultar
puts auto["modelo"]
puts auto["anio"]
#modificar
auto["anio"] = 2016
#agregar
auto["transmision"] = "Automatico"
auto["color"]= "Blanco"
#eliminar
auto.delete("color")
puts auto.to_s

#recorrer hash
auto.each do |llave, valor|
    puts "#{llave} = #{valor}"
end
