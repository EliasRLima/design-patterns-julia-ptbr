#joaozinho precisou fazer um algoritmo onde 
# - receberia alguns produtos 
# - calcular o valor de vendas ( valor de vendas = aumento de 20% no custo de compra do produto)
# - ele deveria mostrar o valor de vendas em um formulario 

#para esse algoritmo ele fez o seguinte codigo

abstract type Programa end

mutable struct tp_Programa <: Programa
    produtos::Vector{Vector{Any}}
    produtosVendas::Vector{Vector{Any}}
end

tp_Programa(p::Nothing, pVendas::Nothing) = tp_Programa([],[])

function carregaProdutos(programa::tp_Programa)
    #pode vir de banco de dados, arquivos, etc
    push!(programa.produtos, ["bola",14.99])
    push!(programa.produtos, ["pipa",3.99])
end

function calculaValorVendas(programa::tp_Programa)
    for i in 1:length(programa.produtos)
        produto = programa.produtos[i]
        produto[2] *= 1.2
        push!(programa.produtosVendas, produto)
    end
end

function imprimeFormulario(programa::tp_Programa)
    println("Produto", "\t", "Preco")
    for i in 1:length(programa.produtosVendas)
        produto = programa.produtosVendas[i]
        println(produto[1], "\t", produto[2])
    end
end

# fica claro que a classe Programa esta com muitas responsabilidades certo? Ela deve carregar produtos, calcular valor vendas e ainda montar o formulario
