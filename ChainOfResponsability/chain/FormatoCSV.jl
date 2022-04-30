include("FormatoChain.jl")
include("../Formato.jl")
include("../Conta.jl")

abstract type FormatoCSV end

mutable struct tp_csv <: FormatoCSV
    super::Any
end

tp_csv() = tp_csv(nothing) #nao tem proximo
getSuper(formato::tp_csv) = formato.super

#override
function formatoCerto(formato::tp_csv,requisicao::tp_requisicao)
    if getFormato(requisicao) == csv
        return true
    end
    return false
end

#override
function getFormatado(formato::tp_csv,requisicao::tp_requisicao, conta::tp_Conta)
    if formatoCerto(formato,requisicao)
        formatoCSV = getNumero(conta) * "%" * getSaldo(conta);
        return  formatoCSV;
    else
        if getNext(getSuper(formato)) == Nothing()
            return "Formato nao localizado.";
        else
            return getFormatado(getNext(getSuper(formato)), requisicao, conta)
        end
    end
    
end

