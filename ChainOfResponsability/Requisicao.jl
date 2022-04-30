include("Formato.jl")

abstract type Requisicao end

mutable struct tp_requisicao <: Requisicao
    formato::Formato
end

getFormato(requisicao::tp_requisicao) = requisicao.formato
