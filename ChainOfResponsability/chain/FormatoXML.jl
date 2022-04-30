include("FormatoChain.jl")
include("../Formato.jl")
include("../Conta.jl")
include("FormatoCSV.jl")

abstract type FormatoXML end

mutable struct tp_xml <: FormatoXML
    super::tp_formatochain
end

tp_xml(Nothing()) = tp_xml()
tp_xml() = tp_xml(tp_formatochain(tp_xml(Nothing())))
getSuper(formato::tp_xml) = formato.super

#override
function formatoCerto(formato::tp_xml,requisicao::tp_requisicao)
    if getFormato(requisicao) == xml
        return true
    end
    return false
end

#override
function getFormatado(formato::tp_xml,requisicao::tp_requisicao, conta::tp_Conta)
    if formatoCerto(formato,requisicao)
        formatoXML = "<conta>\n";
        formatoXML *= "\t<numero>" * getNumero(conta) * "</numero>\n";
        formatoXML *= "\t<saldo>" * getSaldo(conta) * "</saldo>\n</conta>";
        return  formatoXML;
    else
        if getNext(getSuper(formato)) == Nothing()
            return "Formato nao localizado.";
        else
            return getFormatado(getNext(getSuper(formato)), requisicao, conta)
        end
    end
    
end