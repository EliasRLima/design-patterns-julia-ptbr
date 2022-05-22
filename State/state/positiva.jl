
abstract type Positiva end

mutable struct tp_positiva <: Positiva 
    conta::tp_Conta
end

function sacar(estadoConta::tp_positiva,valor)
    novosaldo = conta.getSaldo() - valor;
    setSaldo(conta, novosaldo);

    if novosaldo < 0
        mudaEstado(conta,tp_negativa(conta));
    end
end

function depositar(estadoConta::tp_positiva,valor)
    valordeposito = valor*0.98;
    novosaldo = getSaldo(estadoConta.conta) + valordeposito;
    setSaldo(conta, novosaldo);
end