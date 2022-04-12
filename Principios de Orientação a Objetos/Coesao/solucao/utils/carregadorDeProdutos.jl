
abstract type CarregadorProdutos end

mutable struct tp_CarregadorProdutos <: CarregadorProdutos end

function carregaProdutos(produtos::Vector{Vector{Any}})
    #pode vir de banco de dados, arquivos, etc
    push!(produtos, ["bola",14.99])
    push!(produtos, ["pipa",3.99])
end