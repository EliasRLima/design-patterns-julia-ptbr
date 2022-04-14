include("funcionario.jl")

abstract type Gerente end

mutable struct tp_Gerente <: Gerente
    super::tp_Funcionario
    filial::String
end

getMatricula(gerente::tp_Gerente) = getMatricula(gerente.super)
getSalario(gerente::tp_Gerente) = getSalario(gerente.super)
getFilial(gerente::tp_Gerente) = gerente.filial

#O Princípio Open/Closed (OCP) afirma que "entidades de software (classes, módulos, funções, etc.) deve ser aberto para a extensão, mas fechado para modificação."

#Em essência, queremos projetar nossos sistemas de tal forma que podemos facilmente adicionar recursos sem ter que modificar, recompilar e reimplantar componentes principais.

#No exemplo aqui dado temos um uso de herança, onde a classe Funcionario foi reaproveitada para extender em Gerente, o interessante é que apesar de rescrever os metodos de getMAtricula e getSalario para consultar a partir de um gerente,
#os metodos nao precisaram ser rescritos em Gerente e nem mesmo os atributos foram declarados e como é chamado a funcao de Funcionario, as regras validas sao a da classe funcionario.
#Ou seja, o codigo evoluiu, mas sem precisar modificar o anterior