
#classe responsavel exclusivamente pela conversao para dolar
abstract type ConversorDolar end

mutable struct tp_ConversorDolar <: ConversorDolar end

getValor(conversor::tp_ConversorDolar) = 4.7 #valor atual do dolar no momento do codigo