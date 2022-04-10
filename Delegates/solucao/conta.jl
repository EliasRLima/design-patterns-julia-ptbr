#a solucao é remover a responsabilidade de converter da classe conta e passar para a classe conversor

abstract type Conta end

mutable struct tp_Conta <: Conta
    saldo::Float16
end

getSaldo(conta::tp_Conta) = conta.saldo

converter(conta::tp_Conta, conversor::Any) = getSaldo(conta) * getValor(conversor)
