# Estratégias concretas implementam o algoritmo enquanto seguem
# a interface estratégia base. A interface faz delas
# intercomunicáveis no contexto.

abstract type ConcreteOperacaoDiv end

mutable struct tp_operacaoDiv <: ConcreteOperacaoDiv end

function execute(estrategia::tp_operacaoDiv, a::float16, b::float16) 
     return a / b
end