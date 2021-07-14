#hash
# => hash rocket
clientes={"nombre"=>"Juan", "apellido"=>"Perez","calle"=>"Prat ","numero"=>1234  }

#consultar
puts clientes["nombre"]
puts clientes["numero"]
#modificar
clientes["calle"]="Arturo Prat"
clientes["numero"]=2341
#agregar
clientes["email"]="jp@gmail.com"
#eliminar
clientes.delete("apellido")

puts clientes.to_s

#recorrer hash
clientes.each do |llave,valor|
    puts "llave: #{llave} => valor: #{valor} "
end

{
    "clientes"=>[
        {"nombre"=>"Juan", "apellido"=>"Perez","calle"=>"Prat ","numero"=>1234  },
        {"nombre"=>"Ana", "apellido"=>"Perez","calle"=>"Prat ","numero"=>1234  },
        {"nombre"=>"Pedro", "apellido"=>"Perez","calle"=>"Prat ","numero"=>1234  },
        {"nombre"=>"Maria", "apellido"=>"Perez","calle"=>"Prat ","numero"=>1234  },
        
    ]

}