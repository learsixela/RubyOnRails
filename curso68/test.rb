=begin
Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo
por el número que hay en la siguiente posición. 
Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], 
cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].
=end

arreglo = [1, 5, 10, 7, -2]
arreglo.delete_at(0)
arreglo.push(0)
puts arreglo.to_s


x=[1, 5, 10, 7, -2]

a=[]
x.each_with_index do |data,i=1|  
    puts "valor de i #{i}"
    if i>0 
        a.push(data)
    end 
end

a.push(0)
puts a

