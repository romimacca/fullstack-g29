# Crear la clase con el nombre CuentaBancaria (1punto)
class CuentaBancaria
    # Los métodos getter y setter para el atributo nombre_de_usuario (1punto)
    attr_accessor :nombre_de_usuario, :numero_de_cuenta
    # Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos(1punto)
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        # Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número
        # de dígitos distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para
        # contarlos) (1punto)
        raise RangeError, "Hay un error en el Número de Cuenta, debe tener 8 digitos" if numero_de_cuenta.digits.count != 8
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        # Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP
        # (1pto), este valor puede ser 1 o 0. Por defecto será 0.
        @vip = vip
    end

    # Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un
    # prefijo '1-' si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el
    # método debería devolver '1-00112233' (1punto)
    def numero_de_cuenta
        "#{@vip}-#{@numero_de_cuenta}"
    end


end
cuenta = CuentaBancaria.new("Romina", 20112233, 1)
puts cuenta.numero_de_cuenta


