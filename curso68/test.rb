class Mamifero
    def inicializar
        puts "Estoy vivo"
        puts "dentro del metodo inicializar #{self}"
        return self
    end
    def respirar
        puts "Inhalar - Exhalar"
        puts "dentro del metodo respirar #{self}"
        return self
    end
    
    def quien_soy
        puts "dentro del metodo quien_soy #{self}"
        return self
    end 
end
variable = Mamifero.new
variable.quien_soy
variable.respirar
variable.inicializar