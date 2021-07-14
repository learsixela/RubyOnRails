#LECTURA
f = File.open('archivo.txt', mode: 'r')
puts f.readlines
f.close


contenido = File.read("archivo.txt")
lineas = contenido.split("\n") # divide el contenido en líneas

# recorre las líneas y las imprime
lineas.each do |linea|
    puts linea
end
print("************************\n")
#recorrer lineas y retornar arreglo de lineas
lineas = File.readlines("archivo.txt")

lineas.each do |linea|
    puts linea
end

#leer archivos grandes
File.foreach("archivo.txt") do |linea|
    puts linea
end

#ESCRIBIR ARCHIVOS

#crear archivo
File.write("ruby.txt","aca va lo que quieras escribir")

#sobre escribir archivo
File.open("archivo.txt", "w") do |file|
    file.write("
primer texto
segundo texto
tercer texto
cuarto texto"
    )
end

#continuar escritura 
File.open("ruby.txt", "a") do |file|
    file.write("
quinto texto
sexto texto"
    )
end

#VERIFICAR EXISTENCIA DE ARCHIVOS

if File.exist?("ruta/del/archivo")
    # código si el archivo o la carpeta existe
else
    # código si el archivo o la carpeta no existe
end

#CSV
require 'CSV'

data = CSV.parse(File.read('archivo.csv'), headers: true)
data.each do |row|
  puts "id: #{row['id']} name: #{row['name']} active: #{row['active']}"
  puts '~~'
end