include("FormatoJSON.jl")
include("../Requisicao.jl")
include("../Conta.jl")

abstract type ChainFormatoController end

mutable struct tp_controllerchain <: ChainFormatoController
    inicioChain::tp_json
end

tp_controllerchain() = tp_controllerchain(tp_json(Nothing()))
getInicio(controller::tp_controllerchain) = controller.inicioChain

function getFormatado(controller::tp_controllerchain, requisao::tp_requisicao, conta::tp_Conta)
    return getFormatado(getInicio(controller), requisao, conta)
end