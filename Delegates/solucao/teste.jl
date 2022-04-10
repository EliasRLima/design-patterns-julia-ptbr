include("conta.jl")
include("conversores/conversorDolar.jl")
include("conversores/conversorEuro.jl")

conta = tp_Conta(100.0)

println(getSaldo(conta))
println(converter(conta,tp_ConversorDolar()))
println(converter(conta,tp_ConversorEuro()))