# A interface estratégia declara operações comuns a todas as
# versões suportadas de algum algoritmo. O contexto usa essa
# interface para chamar o algoritmo definido pelas estratégias
# concretas.

abstract type StrategyOperacao end

mutable struct tp_operacao <: StrategyOperacao end

function execute(estrategia::tp_operacao,a::float16, b::float16) end
