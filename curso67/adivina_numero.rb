#El usuario envía el valor correcto, devuelve "¡Lo conseguiste!".
#El usuario envía un número más alto, devuelve "¡La suposición fue demasiado alta!".
#El usuario envía un número más bajo, devuelve "¡La suposición fue demasiado baja!".
#function adivina_numero(valor)
def adivina_numero valor
    number = 25
    # tu código aquí
    if valor == number
        puts "¡Lo conseguiste!"
    elsif valor > number #else if()
        puts "¡La suposición fue demasiado alta!"
        number -= 1
    else
        puts "¡La suposición fue demasiado baja!"
    end

    puts "¡lo conseguiste!" if valor == number
    puts "¡La suposicion fue demasiado alta!" if valor > number
    puts "¡La suposicion fue demasiado baja!" if valor < number
    puts "¡wena!" if valor == number

end 
adivina_numero 25