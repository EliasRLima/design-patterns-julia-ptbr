
#classe responsavel exclusivamente pela conversao para dolar
abstract type ConversorDolar end

mutable struct tp_ConversorDolar <: ConversorDolar end

converterMoeda(saldo::Float16,conversor::tp_ConversorDolar) = saldo * 4.7 #valor atual do dolar no momento do codigo