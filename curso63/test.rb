class MathDojo
    @@suma = 18
    # tu codigo aqui 
    def add(*arreglo)
        puts "add #{arreglo}"
        #sumar
        for elemento in arreglo #[3, 5, 7, 8]

            if elemento.class == Array
                @@suma = @@suma + elemento.sum
                #for i in elemento
                #    @@suma += i
                #end
            else
                @@suma = @@suma + elemento
            end
        end
        return self
    end
    def subtract(*arreglo)
        puts "subtract #{arreglo}"

        for elemento in arreglo
            if elemento.class == Array
                @@suma = @@suma - elemento.sum
            else
                @@suma = @@suma - elemento
            end
        end
        return self
    end
end
desafio1 = MathDojo.new #.add(2).add(2, 5).subtract(3, 2)#.result # => 4
desafio1.add(2)
desafio1.add(2,5)
desafio1.add(9)
desafio1.add([3, 5, 7, 8], [2, 4.3, 1.25])
#desafio1.add(2).add(2, 5).add(9).add([3, 5, 7, 8], [2, 4.3, 1.25])


# desafio2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15

=begin
def my_method(*a, **kw)
    p arguments: a, keywords: kw
end

#my_method(1, 2, [3,4,5],'3' => 4, five: 6 )
my_method('3' => 4 )
=end

11 - (2+3)
11 -2 -3

11 - (2-3)