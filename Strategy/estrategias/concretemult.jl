# Estratégias concretas implementam o algoritmo enquanto seguem
# a interface estratégia base. A interface faz delas
# intercomunicáveis no contexto.

abstract type ConcreteOperacaoMult end

mutable struct tp_operacaoMult <: ConcreteOperacaoMult end

function execute(estrategia::tp_operacaoMult,a::float16, b::float16) 
     return a * b
end