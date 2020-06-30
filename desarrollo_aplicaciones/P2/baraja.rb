require_relative 'carta'

class Baraja
    attr_accessor :cartas
    def initialize
        pinta = ['C', 'D', 'E', 'T']
        @cartas = []
        pinta.each do |pinta|
            13.times do |i|
                @cartas.push( Carta.new(i+1, pinta) )
            end
        end
    end

    def barajar
        @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
        @cartas.pop(5)
    end
end

baraja = Baraja.new
baraja.cartas = baraja.barajar
pp baraja.repartir_mano