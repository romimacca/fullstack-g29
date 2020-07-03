data = File.open('ventas_base.db').read.split(',')

def aumento(arr, procentaje, desde, hasta)
    rango = arr[desde..hasta]
    result = rango.map{|x| x.to_f * procentaje}.sum
    "%0.2f" % [result]
end

semestre_1 = aumento(data, 1.1, 0, 5) 
semestre_2 = aumento(data, 1.2, 6, 11) 
resultado = "#{semestre_1}\n#{semestre_2}"
File.write('resultados.data', resultado, mode: "w")