# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1. Mostrar en pantalla el primer elemento.
#2. Mostrar en pantalla el último elemento.
#3. Mostrar en pantalla todos los elementos.
#4. Mostrar en pantalla todos los elementos junto con un índice.
#5. Mostrar en pantalla todos los elementos que se encuentren en una posición par.
#6. Determinar con el método aprendido en clases si un elemento ingresando pertenece
# al array o no, mostrar el resultado en pantalla

arr = [1,2,3,9,1,4,5,2,3,6,6]

def recorrer(a)
  text = "["
  a.each_with_index do |value, index|
    if index == (a.length - 1)
      text += "[#{index} : #{value}]"
    else
      text += "[#{index} : #{value}],"
    end
  end
  text += "]"
  return text
end

def par(a)
  text = "["
  a.each_with_index do |value, index|
    if index.even?
      if index == (a.length - 1)
        text += " #{value}"
      else
        text += " #{value},"
      end
    end
  end
  text += "]"
  return text
end



puts arr.first
puts arr.last
print "#{arr}\n"
puts recorrer(arr)
puts par(arr)
puts "consultar un numero en el arreglo:"
num = gets.chomp.to_i
if arr.include?(num) == true
  puts "#{num} se encuentra en el arreglo"
else
  puts "#{num} no se encuentra en el arreglo"
end
