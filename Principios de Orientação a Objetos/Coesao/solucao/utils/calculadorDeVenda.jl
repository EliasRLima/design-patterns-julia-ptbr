
abstract type CalculadorDeVendas end

mutable struct tp_CalculadorDeVendas <: CalculadorDeVendas end

function calculaValorVendas(produtos::Vector{Vector{Any}})

    produtosVendas = []

    for i in 1:length(produtos)
        produto = produtos[i]
        produto[2] *= 1.2
        push!(produtosVendas, produto)
    end

    return produtosVendas
end