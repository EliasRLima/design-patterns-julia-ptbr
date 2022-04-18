# Estratégias concretas implementam o algoritmo enquanto seguem
# a interface estratégia base. A interface faz delas
# intercomunicáveis no contexto.

abstract type ConcreteOperacaoMult end

mutable struct tp_operacaoSoma <: ConcreteOperacaoMult end

function execute(estrategia::tp_operacaoSoma,a::float16, b::float16) 
     return a + b
end