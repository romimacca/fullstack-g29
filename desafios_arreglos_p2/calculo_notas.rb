def nota_mas_alta(arr)
    nombre_alumno = arr[0]
    notas = arr[1..arr.count]
    nota_mas_alta = notas.map{|nota| nota.to_i}.max
    return nota_mas_alta
end

data = open('notas.data').readlines.map{ |fila| fila.split(',')}

# puts nota_mas_alta(data[0])