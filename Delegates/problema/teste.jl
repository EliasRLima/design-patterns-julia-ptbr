include("conta.jl")

conta = tp_Conta(100.0)

println(getSaldo(conta))
println(converterDolar(conta))
println(converterEuro(conta))