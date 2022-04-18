
# O contexto mantém uma referência para um dos objetos
# estratégia. O contexto não sabe a classe concreta de uma
# estratégia. Ele deve trabalhar com todas as estratégias
# através da interface estratégia.

abstract type Context end

mutable struct tp_contexto <: Context
    estrategia::Any
end

# Geralmente o contexto aceita uma estratégia através do
# construtor, e também fornece um setter para que a
# estratégia possa ser trocado durante o tempo de execução.

function setEstrategia(contexto::tp_contexto, estrategiaNova::Any)
     contexto.estrategia = estrategiaNova
end

# O contexto delega algum trabalho para o objeto estratégia
# ao invés de implementar múltiplas versões do algoritmo
# por conta própria.

function execute(contexto::tp_contexto, a::float16, b::float16) 
    return execute(contexto.estrategia, a, b)
end