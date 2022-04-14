
abstract type Funcionario end

mutable struct tp_Funcionario <: Funcionario
    matricula::String
    salario::Float16
end

getMatricula(funcionario::tp_Funcionario) = funcionario.matricula
getSalario(funcionario::tp_Funcionario) = funcionario.salario

function setSalario(funcionario::tp_Funcionario,valor::Float16)
    funcionario.salario = valor
end

function calculaSalario(valor::Float16)
    valorcalculado = valor * 0.8 #descontos referente aos impostos pagos ao INSS
    return valorcalculado
end

function verificaMatricula(funcionario::tp_Funcionario)
    matricula = funcionario.matricula
    if isdigit(matricula[1]) #matricula deve iniciar pela inicial do cargo
        return false #invalidar matricula
    end
end

#Classe com varias responsabilidades, responsavel pela entidade de Funcionario, por calculo de salario e por verificacao de matricula.