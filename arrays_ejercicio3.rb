# Dado un array como el siguiente[1,2,3,9,1,4,5,2,3,6,6]:
# 1. Crear un método para eliminar todos los números pares del arreglo.
# 2. Crear un método para obtener la suma de todos loselementos del arreglo Utilizando .each
# 3. Crear un método para obtener el promedio de una rreglo.
# 4. Crear un método que incrementa todos los elementosen una unidad y devuelva un arreglo nuevo.

arr = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

def pares(arr)
  b = Array.new
  arr.each do |x|
    b.push(x) if x.odd?
  end
  return b
end

a = pares(arr)
print "#{a}\n"

# suma de los elementos
def suma(arr)
  contador = 0
  arr.each do |x|
    contador += x.to_i
  end
  return contador
end

 b = suma(arr)
 puts b

 def promedio(arr)
   contador = 0
   arr.each do |x|
     contador += x.to_i
   end
   return (contador / arr.length)
 end

 c = promedio(arr)
 puts c

 def incremento(arr)
   b = arr.map { |e| e + 1  }
   return b
 end

 d = incremento(arr)
print d
