include("calculadorDeVenda.jl")

abstract type ImpressorRelatorio end

mutable struct tp_ImpressorRelatorio <: ImpressorRelatorio end

function imprimeFormulario(produtosVendas::Any)
    println("Produto", "\t", "Preco")
    for i in 1:length(produtosVendas)
        produto = produtosVendas[i]
        println(produto[1], "\t", produto[2])
    end
end