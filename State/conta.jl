include("state/negativa.jl")


abstract type Conta end

mutable struct tp_conta <: Conta
    estado::Any
    saldo::Float16
end

tp_conta(conta::tp_conta) = tp_conta(tp_positiva(conta), 0)

function mudaEstado(conta::tp_conta,novoestado)
    conta.estado = novoestado
end

getSaldo(conta::tp_conta) = conta.saldo

function setSaldo(conta::tp_conta, novoSaldo::Float16)
    conta.saldo = novoSaldo
end

function sacar(conta::tp_conta, valor)
    sacar(conta.estado, valor)
end

function depositar(conta::tp_conta, valor)
    depositar(conta.estado, valor)
end