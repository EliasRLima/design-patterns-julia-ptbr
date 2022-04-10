
#classe responsavel exclusivamente pela conversao para euro
abstract type ConversorEuro end

mutable struct tp_ConversorEuro <: ConversorEuro end

getValor(conversor::tp_ConversorEuro) = 5.11 #valor atual do euro no momento do codigo