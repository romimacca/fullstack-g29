def menu()
    opcion = 0
    while opcion != 1 && opcion != 2 && opcion != 3 && opcion != 4
        # Mostrar menú
        puts '_*_*_*_*_*_*_*_*_*_*'
        puts "\n"
        puts "Seleccione una figura:"
        puts '1 - Cuadrado'
        puts '2 - Triángulo'
        puts '3 - Pirámide'
        puts "4 - Salir \n\n"
        opcion = gets.to_i

        # Opcion incorrecta
        if opcion != 1 && opcion != 2 && opcion != 3 && opcion != 4
            puts '======================================================'
            puts '|| Opción no es válida, ingresa una opción correcta ||'
            puts '======================================================'
        end
    end
    return opcion
end

def numero (opcion_figura)
    puts '_*_*_*_*_*_*_*_*_*_*'
    puts "\n"
    puts "Ingrese un número mayor a 1:"
    numero = gets.to_i
    while numero <= 1
        puts '======================================================'
        puts '|| Opción no es válida, ingresa un numero mayor a 1 ||'
        puts '======================================================'
        puts "Ingrese un número mayor a 1:"
        numero = gets.to_i
    end
    return numero
end
# Figura cuadrado
def cuadrado(n)
    n.times do
        n.times do 
            print '*'
        end
        print "\n"
    end
end
# Figura Triangulo
def triangulo(n)
    n.times do |i|
        n.times do |j|
            if j <= i
                print '*'
            end
        end
        print "\n"
    end
end
# Figura Piramide
def piramide(n)
    triangulo(n)

    (n-1).times do |i|
        (n-1).times do |j|
            if j >= i
                print '*'
            end
        end
        print "\n"
    end
end

opcion_figura = menu()
if opcion_figura != 4 
    n = numero (opcion_figura)
    if opcion_figura == 1
        puts "\n"
        cuadrado(n)
        puts "\n"
    elsif opcion_figura == 2
        puts "\n"
        triangulo(n)
        puts "\n"
    else
        puts "\n"
        piramide(n)
        puts "\n"
    end
end
