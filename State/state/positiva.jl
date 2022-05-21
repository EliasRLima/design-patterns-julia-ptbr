
abstract type Positiva end

mutable struct tp_positiva <: Positiva 
    conta::tp_Conta
end

function sacar(estadoConta::tp_positiva,valor)
    novosaldo = conta.getSaldo() - valor;
    conta.setSaldo(novosaldo);

    if novosaldo < 0
        conta.mudaEstado(tp_negativa(conta));
    end
end

function depositar(estadoConta::tp_positiva,valor)
    valordeposito = valor*0.98;
    novosaldo = getSaldo(estadoConta.conta) + valordeposito;
    conta.setSaldo(novosaldo);
end