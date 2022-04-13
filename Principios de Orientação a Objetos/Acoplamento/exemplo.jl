
#O acoplamento é definido como a dependencia dos componentes presentes em nosso software.
#Quando essa dependencia é muito forte, fica dificil fazer manutenção no código, visto que alteraçoes em uma classe irao refletir em diversas outras que estao fortemente acopladas.
#Nao existe forma de eliminar totalmente esse acoplamento, visto que os componentes vao sempre se comunicar e depender de outros componentes como frameworks, libs, etc

#A solucao é desenvolver o código com o menor acoplamento possivel

#para demonstrar na pratica, usarei algumas classes para demonstrar

abstract type Funcionario end

#Herda de funcionario:
abstract type Desenvolvedor end

#Herda de Desenvolvedor:
abstract type Junior end
abstract type Pleno end
abstract type Senior end

#Herda de Senior:
abstract type LiderTecnico end
abstract type Gestor end

#Aqui vemos uma estrutura de herança comumente usada em equipes tecnicas da area de desenvolvimento
#Mas onde esta o problema do acoplamento? Afinal todo LiderTecnico é Senior... Todo Senior é um Desenvolvedor e logicamente tambem é funcionario certo?
#Caso por algum motivo um atributo como CPF passe de String para Int na classe funcionario... teriamos de mudar desenvolvedor, depois Senior e depois mudar Lider LiderTecnico
#O acoplamento vai passando em diversas camadas, ou seja é bem forte.


#Corrigindo o acoplamento ( _2 para indicar novas classes)

abstract type Funcionario_2 end

#Herda de funcionario:
abstract type Junior_2 end
abstract type Pleno_2 end
abstract type Senior_2 end
abstract type LiderTecnico_2 end
abstract type Gestor_2 end

#A correcao feita aqui foi simplificar a relação de herança, dessa forma o acoplamento ficará reduzido
#Pegando o exemplo do LiderTecnico novamente, não tem porque trata-lo como Senior visto podemos especializar Funcionario diretamente como LiderTecnico eliminar
#Ja ficara subentendido sua capacidade. Desta forma, o acoplamento entre Senior e LiderTecnico fica quase inexistente, ou seja, agora alterações não irá sair desencadeando mudanças em diversas classe


#Não existe uma solução pronta para reduzir acoplamento, se faz necessário muita analise e abstração para identificar os pontos de acoplamento que podem representar problemas para a qualidade do software