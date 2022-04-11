#considerando uma classe de funcionario da empresa X

abstract type Funcionario end

mutable struct tp_Funcionario <: Funcionario
    nome::String
    cpf::String
    salario::Float16
end

getNome(funcionario::tp_Funcionario) = funcionario.nome
getCpf(funcionario::tp_Funcionario) = funcionario.cpf
getSalario(funcionario::tp_Funcionario) = funcionario.salario

function setNome(funcionario::tp_Funcionario,novoNome::String)
    funcionario.nome = novoNome
end

function setCpf(funcionario::tp_Funcionario,novoCpf::String)
    funcionario.cpf = novoCpf
end

#no caso do atributo salario, a empresa tem validações e regras de negocio
#por exemplo 
#   - o aumento no salario de um funcionario deve ser no maximo 40% do valor atual
#   - em caso de reducao salarial, o unico limite é que o salario não seja menor ou igual a zero
#poderiamos fazer o codigo:

#function setSalario(funcionario::tp_Funcionario,novoSalario::Float16)
    #funcionario.salario = salario
#end

#nesse caso sempre passariamos o salario correto, precisando verificar as regras de negocio sempre que chamar setSalario
#mas e se uma regra mudar? "agora o aumento pode ser até 60%", teriamos de varrer todo o código buscando onde setSalario era chamado e reajustar varias vezes a mesma regra de negocio
#para não deixar o código com uma manutenção custosa, aplicarei o encapsulamento e as regras de negocio ficarao no proprio setSalario

#chamarei setSalario de reajustarSalario e colocarei as regras de negocio

function reajustarSalario(funcionario::tp_Funcionario, reajuste::Float16)
    
    
    if reajuste > 0 #no caso de aumento, precisamos verificar se o mesmo nao passa o limite de 40%
       percentualReajuste = (reajuste / getSalario(funcionario)) * 100
       if percentualReajuste > 40
           println("Reajuste nao aplicado pois é um aumento maior que 40%.")
           return false #indicar a quem chamou que nao foi reajustado.
       end 
    else #se for um corte no salario, ele ainda deve permanecer positivo
       novoSalario = getSalario(funcionario) + reajuste
       if novoSalario <= 0
            println("Reajuste nao aplicado pois o funcionario não receberia salario.")
            return false #indicar a quem chamou que nao foi reajustado.
       end
    end

    funcionario.salario += reajuste
    return true #indicar que o salario sofreu o reajuste
end

# deste modo sempre que uma regra mudar basta alterar neste metodo e não sera necessario varrer o código


