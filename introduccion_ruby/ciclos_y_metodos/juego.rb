def menu(jugador)
    opcion = 0
    while opcion != 1 && opcion != 2 && opcion != 3 && opcion != 4
        # Mostrar menú
        puts '_*_*_*_*_*_*_*_*_*_*'
        puts "\n"
        puts "Turno #{jugador}:"
        puts '1 - Piedra'
        puts '2 - Papel'
        puts '3 - Tijeras'
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

def juego(opcion_1, opcion_2)
    if opcion_1 == opcion_2 
        puts "Empate"
    elsif (opcion_1 == 1 && opcion_2 == 3) || (opcion_1 == 2 && opcion_2 == 1) || (opcion_1 == 3 && opcion_2 == 2)
        puts "Gano Jugador 1"
    elsif (opcion_1 == 1 && opcion_2 == 2) || (opcion_1 == 2 && opcion_2 == 3) || (opcion_1 == 3 && opcion_2 == 1)
        puts "Gano Jugador 2"
    end
end

jugador_1 = "jugador 1"
jugador_2 = "jugador 2"

opcion_jugador_1 = menu(jugador_1)

if opcion_jugador_1 != 4 
    opcion_jugador_2 = menu(jugador_2) 

    if opcion_jugador_2 != 4
        juego(opcion_jugador_1, opcion_jugador_2)
    else
        puts 'El jugador 2 no quiso jugar'
    end
else
    puts 'El jugador 1 no quiso jugar'
end