include("../Requisicao.jl")

abstract type FormatoChain end

mutable struct tp_formatochain <: FormatoChain
    nextChain::Any
end

getNext(chain::tp_formatochain) = chain.nextChain
