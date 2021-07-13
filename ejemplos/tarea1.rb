def adivina_numero valor
    number = 25
    # tu código aquí
    if number == valor
        puts "¡Lo conseguiste!"
    elsif number > valor
        puts "El número es más pequeño"
    else
        puts "El número es más grande"
    end
end 

adivina_numero 26 