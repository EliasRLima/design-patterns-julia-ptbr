include("../Requisicao.jl")

abstract type FormatoChain end

mutable struct tp_formatochain <: FormatoChain
    nextChain::Union{Any,Nothing}
end

tp_formatochain() = tp_formatochain(nothing)

getNext(chain::tp_formatochain) = chain.nextChain
