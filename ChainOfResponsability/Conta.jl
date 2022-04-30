
abstract type Conta end

mutable struct tp_Conta <: Conta
    numero::Int
    saldo::Float16
end

getNumero(conta::tp_Conta) = conta.numero
getSaldo(conta::tp_Conta) = conta.saldo