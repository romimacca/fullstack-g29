notas = [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]
nuevas_notas = []

notas.each do |ele|
    if ele.to_i == 0
        ele = 2.0
    end
    nuevas_notas.push ele.to_f
end
  
def promedio(notas)
    notas.sum / notas.count
end

puts promedio(nuevas_notas)
