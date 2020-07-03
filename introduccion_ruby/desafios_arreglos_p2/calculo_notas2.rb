#devuelva un arreglo con la nota mas alta de cada alumno

def notas_mas_alta(arr)
   nota_mas_alta = arr[1..arr.count].map{|nota| nota.to_i}.max
   return nota_mas_alta
end

data = open('notas.data').readlines.map{ |fila| fila.split(',')}

resultado = []
data.each do |alumno|
    resultado.push(notas_mas_alta(alumno))
end
print resultado