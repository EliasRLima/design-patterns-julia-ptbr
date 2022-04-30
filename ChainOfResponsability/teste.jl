include("Conta.jl")
include("Formato.jl")
include("Requisicao.jl")
include("chain/ChainFormatoController.jl")

controlador = tp_controllerchain()

conta = tp_Conta(1234, 2300)
requisicaoJson = tp_requisicao(json)
requisicaoXml = tp_requisicao(xml)
requisicaoCsv = tp_requisicao(csv)

print("Formato JSON: " * getFormatado(controlador, requisicaoJson, conta))
