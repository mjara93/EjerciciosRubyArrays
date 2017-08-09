# Se tiene un string del tipo "1,2,7,1,3,5,3.4,9,1"
# Se pide:
# Calcular el promedio
#Calcular la moda (o sea mostrar el número que más se repite)

str = "1,2,7,1,3,5,3.4,9,1"

def promedio(str)
  arr = str.split(",")
  contador = 0
  arr.each do |x|
    contador += x.to_f
  end
  return (contador / arr.length)
end

def moda(str)
  arr = str.split(",")
  a = arr.uniq
  moda = [0, 0]
  a.each do |x|
    b = arr.select { |item| item == x }
    if b.length > moda[1]
      moda[0] = x
      moda[1] = b.length
    end
  end
  return "la moda es #{moda[0]} que se repite #{moda[1]}"
end

b = promedio(str)
puts b

a = moda(str)
puts a
