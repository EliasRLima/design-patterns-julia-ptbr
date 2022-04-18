# Estratégias concretas implementam o algoritmo enquanto seguem
# a interface estratégia base. A interface faz delas
# intercomunicáveis no contexto.

abstract type ConcreteOperacaoSub end

mutable struct tp_operacaoSub <: ConcreteOperacaoSub end

function execute(estrategia::tp_operacaoSub, a::float16, b::float16) 
     return a - b
end