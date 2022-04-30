include("../Formato.jl")
include("../Conta.jl")
include("FormatoXML.jl")

abstract type FormatoJSON end

mutable struct tp_json <: FormatoJSON
    super::tp_xml
end

tp_json() = tp_json(tp_xml()) #prox é xml
getSuper(formato::tp_json) = formato.super

#override
function formatoCerto(formato::tp_json,requisicao::tp_requisicao)
    if getFormato(requisicao) == json
        return true
    end
    return false
end

#override
function getFormatado(formato::tp_json,requisicao::tp_requisicao, conta::tp_Conta)
    if formatoCerto(formato,requisicao)
        formatoJson = "{\n";
        formatoJson *= "\tnumero: " * getNumero(conta) * ",\n";
        formatoJson *= "\tsaldo: " * getSaldo(conta) * "\n}";
        return  formatoJson;
    else
        if getNext(getSuper(formato)) == Nothing()
            return "Formato nao localizado.";
        else
            return getFormatado(getSuper(formato), requisicao, conta)
        end
    end
    
end