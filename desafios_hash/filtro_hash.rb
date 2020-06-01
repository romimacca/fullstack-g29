ventas = {
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000
}

def filtro_venta(ventas)
    n_ventas ={}
    ventas.each do |k, v|
        if v > 70000
            n_ventas[k] = v
        end
    end
    n_ventas
end

puts filtro_venta(ventas)