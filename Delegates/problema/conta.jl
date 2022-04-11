#considerando uma classe Conta que retorne o saldo em diferentes moedas

abstract type Conta end

mutable struct tp_Conta <: Conta
    saldo::Float16
end

getSaldo(conta::tp_Conta) = conta.saldo

converterDolar(conta::tp_Conta) = getSaldo(conta) * 4.7
converterEuro(conta::tp_Conta) = getSaldo(conta) * 5.11
#para cada moeda que adicionar devemos entao criar um metodo novo, isso nao é uma boa pratica.
