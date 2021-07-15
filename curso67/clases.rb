class Personal
    #attr_reader :apellido
    #attr_writer :apellido
    attr_accessor :apellido, :nombre

    #metodos de la clase
    def calcular
        puts "#{2*4}"
    end

    #setters and getters
=begin    
    def setNombre=(nombre) #asignar,poner un valor
        @nombre = nombre #@nombre es un atributo de la clase o variable de instancia
    end
    def getNombre #obtener un valor
        #return @nombre
        @nombre
    end

    def setApellido=(apellido)
        @apellido = apellido
    end
    def getApellido
        @apellido
    end
=end
end

variable1 = Personal.new    #variable1 es un objeto de la clase Personal
variable1.calcular #llamado al metodo
otra = Personal.new #instancia de la clase
otra.calcular #llamado al metodo
#otra.setNombre = "Matz" #llamado al metodo, con paso de una variable
otra.nombre = "Matz"

puts otra.inspect #muestra el nombre de la variable de instancia
#puts otra.getNombre #muestra el nombre de la variable de instancia
puts otra.nombre #fallaba por que no existia el metodo nombre, con attr_accessor si funciona

#otra.setApellido = "Yamada"
#puts otra.getApellido
#puts variable1.getApellido #Nil

otra.apellido = "Yamada"
puts otra.inspect #muestra el nombre de la variable 
puts otra.apellido #muestra el nombre de la variable de instancia


=begin
class Usuario
    attr_accessor :nombre, :apellido
end
kobe = Usuario.new
kobe.nombre = "Kobe"
kobe.apellido = "Bryant"
=end

class User
    attr_accessor :nombre, :apellido

    #constructor de la clase
    def initialize(nombre="", apellido="")
        @nombre = nombre
        @apellido = apellido
    end
end

steph = User.new("Stephen", "Curry")
puts steph.nombre

shaq = User.new
shaq.nombre = "Shaquille"
puts shaq.nombre