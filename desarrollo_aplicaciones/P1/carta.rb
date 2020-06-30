# Crear la clase carta con los atributos numero y pinta (o color) 
class Carta
    # Agregar los getters y setters a ambos atributos.
    attr_accessor :numero, :pinta
    # Crear el constructor de la clase carta que le permita recibir un numero del 1 al 13 y la pinta que
    # está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

cartas = []
pinta = ['C', 'D', 'E', 'T']

# Probar la clase creando un arreglo con 5 cartas.
5.times{
    cartas.push(
        Carta.new(rand(1..13), pinta.sample()
        )
    )
}

pp cartas

