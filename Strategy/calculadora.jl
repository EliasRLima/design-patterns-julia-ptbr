# Utilize o padrão Strategy quando você quer usar diferentes variantes de um algoritmo dentro de um objeto e ser capaz de trocar de um algoritmo para outro durante a execução.

include("estrategias/concretedivisao.jl")
include("estrategias/concretemult.jl")
include("estrategias/concretesoma.jl")
include("estrategias/concretesub.jl")
include("estrategias/contexto.jl")

# O código cliente escolhe uma estratégia concreta e passa ela
# para o contexto. O cliente deve estar ciente das diferenças
# entre as estratégia para que faça a escolha certa.

abstract type Calculadora end

mutable struct tp_Calculadora <: Calculadora
    contexto::tp_contexto
end

function actionSoma(calculadora::tp_Calculadora)
     setEstrategia(calculadora.contexto, tp_operacaoSoma)
end

function actionSubtracao(calculadora::tp_Calculadora)
    setEstrategia(calculadora.contexto, tp_operacaoSub)
end

function actionMultiplicacao(calculadora::tp_Calculadora)
    setEstrategia(calculadora.contexto, tp_operacaoMult)
end

function actionDivisao(calculadora::tp_Calculadora)
    setEstrategia(calculadora.contexto, tp_operacaoDiv)
end

function executarAction(calculadora::tp_Calculadora, a::float16, b::float16)
    return executeEstrategia(calculadora.contexto, a, b)
end