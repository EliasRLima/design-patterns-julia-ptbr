include("positiva.jl")

abstract type Negativa end

mutable struct tp_negativa <: Negativa 
    conta::tp_Conta
end

function sacar(estadoConta::tp_negativa,valor)
    print("Contas negativas nao podem sacar.")
end

function depositar(estadoConta::tp_negativa,valor)
    valordeposito = valor*0.95;
    novosaldo = getSaldo(estadoConta.conta) + valordeposito;
    conta.setSaldo(novosaldo);

    if novosaldo > 0
        estadoConta.conta.mudaEstado(conta, tp_positiva(conta));
    end
end