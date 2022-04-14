
abstract type Funcionario end

mutable struct tp_Funcionario <: Funcionario
    matricula::String
    salario::Float16
end

getMatricula(funcionario::tp_Funcionario) = funcionario.matricula
getSalario(funcionario::tp_Funcionario) = funcionario.salario

#Classe com unica responsabilidade, responsavel apenas pela entidade de Funcionario
