jugador_uno = ''
jugador_dos = ''

until jugador_uno == '4' || jugador_dos == '4'

        
    unless jugador_uno.empty? or jugador_dos.empty?
        break
    end

    puts "\n\tTurno jugador uno:"
    puts "\t1. Piedra"
    puts "\t2. Papel"
    puts "\t3. Tijeras"
    puts "\t4. Salir"
    print "Escoge una opcion(1-4): "
    jugador_uno = gets.chomp

    if jugador_uno == '1' || jugador_uno == '2' || jugador_uno == '3'

        until jugador_dos == '4'
            puts "\n\tTurno jugador dos:"
            puts "\t1. Piedra"
            puts "\t2. Papel"
            puts "\t3. Tijeras"
            puts "\t4. Salir"
            print "Escoge una opcion(1-4): "
            jugador_dos = gets.chomp
            if jugador_dos == '1' || jugador_dos == '2' || jugador_dos == '3'
                if (jugador_uno == '1' && jugador_dos == '1') || (jugador_uno == '2' && jugador_dos == '2') || (jugador_uno == '3' && jugador_dos == '3')
                    puts "Es un empate!"
                    break
                elsif (jugador_uno == '1' && jugador_dos == '3') || (jugador_uno == '3' && jugador_dos == '2') || (jugador_uno == '2' && jugador_dos == '1')
                    puts "Gana el jugador uno!"
                    break
                elsif (jugador_uno == '3' && jugador_dos == '1') || (jugador_uno == '2' && jugador_dos == '3') || (jugador_uno == '1' && jugador_dos == '2')
                    puts "Gana el jugador dos!"
                    break
                end
            elsif jugador_dos != '4'
                    puts "Opcion no valida. Volviendo al menu."
            end
        end
    elsif jugador_uno != '4'
        puts "Opcion no valida. Volviendo al menu."
    end
end
puts "Cerrando el programa... "
