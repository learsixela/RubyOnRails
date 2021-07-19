Escriba un programa que muestre todos los números impares del 1 al 255.
for i in 1..255
  puts i if i.odd?
end

(1..255).each do |i|
    p i if i.odd?
end

while i < 255
  puts i if i.odd?
  i += 1
end