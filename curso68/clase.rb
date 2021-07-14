class Usuario
    #getters y setters
    attr_accessor :nombre #getters and setters (obtener y setear)
    attr_reader :apellido #getter
    attr_writer :apellido, :password #setter


    #def apellido=(valor)
    #    @apellido = valor
    #end
    #def apellido
    #    @apellido
    #end
    
end

#instancia de una clase
usuario1 = Usuario.new
usuario2 = Usuario.new

usuarioN =  Usuario.new


#metodo de la clase
usuario1.nombre = "Matz"
usuario1.apellido = "Palma"
usuario1.password = "123"

puts usuario1.inspect
puts usuario1.nombre
puts usuario1.apellido
#puts usuario1.password, no se puede acceder a password porque es un atributo de la clase sin get

=begin
#EJEMPLO DE JAVA
public class Test {

    private String name;

    // getter method
    public String getName() {
        return name;
    }
    // setter method
    public void setName(String name) {
        this.name = name;
    }
}
=end


#setters, asignar el valor a un atributo 
def nombre=(valor)
    @nombre = valor
end
#getters, retorna el valor de un atributo 
def nombre
    return @nombre
end

