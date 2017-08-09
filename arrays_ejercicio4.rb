# Se tienen dos arreglos
# El   primero   es   del   tipo   [1,2,3,0,1,2,2,1,2,1,2,0,3]   y   el
# segundo es del tipo [:azul, :verde, :amarillo]
# Se  pide  cambiar  todas  las  apariciones  del  numero  que
# aparece  en  el  arreglo  1  por  el  elemento  con  el  mismo
# índice  del  arreglo  2,  en  caso  de  no  existir  el  elemento
# deberá ser remplazado por nil.

num = [1, 2, 3, 0, 1, 2, 2, 1, 2, 1, 2, 0, 3]

sym = [:azul, :verde, :amarillo]

 def cambiar(num, sym)
   arr = Array.new
   num.each do |x|
     arr.push(sym[x])
   end
   return arr
 end
a = cambiar(num, sym)
print a
