
abstract type EstadoConta end

mutable struct tp_estadoconta <: EstadoConta end

function sacar()
    print("abstract")
end

function depositar()
    print("abstract")
end