include("utils/carregadorDeProdutos.jl") #responsavel por obter os produtos(banco de dados, arquivos, etc)
include("utils/impressorRelatorio.jl") #responsavel por montar o relatorio
include("utils/calculadorDeVenda.jl") #responsavel pelo calculo dos valores de vendas
include("programa.jl") #responsavel por salvar os produtos

programa = tp_Programa()
carregaProdutos(programa.produtos) #agora o metodo nao recebe mais programa, ele necessita apenas do vetor produtos que é quem ele deve conhecer
produtosVendas = calculaValorVendas(programa.produtos) #note que agora os valores de venda nao sao mais salvos, eles estao sendo carregados no momento que solicitados, caso precisem ser salvos deveriamos criar outra classe para essa responsabilidade.
imprimeFormulario(produtosVendas)

#note que agora cada responsabilidade esta em sua classe, ou seja quando precisarmos ajustar algo em alguma funcionalidade será bem mais simples e rapido de entender onde será aplicado o ajuste.
