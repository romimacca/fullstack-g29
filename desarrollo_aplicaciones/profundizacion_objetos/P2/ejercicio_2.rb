module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end 
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end 
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end 
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end 
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end 
    end
end

class Animal
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre 
    end
end

class Ave < Animal
    include Alimentacion::Carnivoro
end

class Mamifero < Animal
    include Habilidades::Caminante

end

class Insecto < Animal
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end
# =========== Aves
class Pinguino < Ave
    include Habilidades::Nadador
end
class Paloma < Ave
    include Habilidades::Volador
    
end
class Pato < Ave
    include Habilidades::Nadador
    include Habilidades::Volador
    
end
# =========== Mamifero
class Perro < Mamifero
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
end
# =========== Insecto
class Mosca < Insecto
    
end

class Mariposa < Insecto
    
end

class Abeja < Insecto
    
end

perro_1 = Perro.new('Ada')

puts perro_1.comer
puts perro_1.sumergir