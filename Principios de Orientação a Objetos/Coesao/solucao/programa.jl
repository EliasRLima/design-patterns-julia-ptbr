
abstract type Programa end

mutable struct tp_Programa <: Programa
    produtos::Vector{Vector{Any}}
end

tp_Programa() = tp_Programa([])


#A classe possui agora uma unica responsabilidade que é cuidar de produtos, ficou mais simples e facil de realizar manutencoes

