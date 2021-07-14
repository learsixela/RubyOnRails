=begin
class Usuario
    attr_accessor :nombre, :apellido
end
kobe = Usuario.new #instancia de la clase
puts kobe.inspect
#kobe.nombre = "Kobe"
#kobe.apellido = "Bryant"
=end

class User
    attr_accessor :nombre, :apellido

    #metodo constructor initialize
    def initialize(nombre, apellido) 
        @nombre = nombre
        @apellido = apellido
    end

    def algun_metodo
        puts "Este es un metodo de instancia"
    end

    def nombre_completo
        puts "Yo soy #{@nombre} #{@apellido}"
    end
    
    def saludar
        puts "¡Hola! Yo soy #{@nombre}"
        User.foo #acceder a los metodos de la clase, los privados
    end
    def self.foo
        puts "Este es un metodo privado de la clase"
    end

end
steph = User.new("Stephen", "Curry")#instancia de la clase
puts steph.inspect

jordan = User.new("","Jordan")
jordan.nombre = "Michael"
puts jordan.nombre
puts jordan.apellido

#shaq = User.new()

#llamado a metodo de instancia
steph.saludar  
#steph.foo, no se puede porque no es un metodo publico
jordan.nombre_completo