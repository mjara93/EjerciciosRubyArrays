# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1. Eliminar el último elemento.
# 2. Eliminar el primer elemento.
# 3. Eliminar el elemento que se encuentra en la posición
# media, si el arreglo tiene un número par de elementos entonces remover el que
# se encuentre en la mitad izquierda, ejemplo, en el arreglo [1,2,3,4] se
# removería el elemento 2.
# 4. Borrar el último elemento mientras ese número sea distinto a 1.
# 5. Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir
# el orden de los elementos en un arreglo.

arr = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

def mitad(a)
  i = 0
  if a.length.even?
    i = (a.length/2) - 1
    return a.delete_at(i)
  else
    i = (a.length.to_f/2) - 0.5
    return a.delete_at(i)
  end
end

arr.pop
print "#{arr}\n"
arr.shift
print "#{arr}\n"

mitad(arr)
print "#{arr}\n"

arr.pop if arr.last != 1
print "#{arr}\n"

a = arr.reverse
print "#{a}\n"
