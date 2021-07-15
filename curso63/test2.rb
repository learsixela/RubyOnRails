def add(a)
    puts "add #{a}"
    #sumar
    a.each do |n|
        @@suma = @@suma + n
    end
end

add([[2,3,4],[5,6,7]])