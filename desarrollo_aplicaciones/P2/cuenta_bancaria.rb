class Usuario
    attr_accessor :cuentas
    def initialize(nombre_usuario, cuentas)
        @nombre_usuario = nombre_usuario
        @cuentas = cuentas
    end
    def saldo_total
        @cuentas.map{|cuenta| cuenta.saldo}.sum
    end
end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end
    def transferir(monto, otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
    end
end

c1 = CuentaBancaria.new('Santader', 20112233, 5000 )
c2 = CuentaBancaria.new('Banco de Credito e Inversiones', 82712233, 5000 )

u1 = Usuario.new('Viviana', [c1])
u2 = Usuario.new('Romina', [c2])

c1.transferir(5000, c2)

puts u2.saldo_total

