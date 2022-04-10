
#classe responsavel exclusivamente pela conversao para euro
abstract type ConversorEuro end

mutable struct tp_ConversorEuro <: ConversorEuro end

converterMoeda(saldo::Float16,conversor::tp_ConversorEuro) = saldo * 5.11 #valor atual do euro no momento do codigo