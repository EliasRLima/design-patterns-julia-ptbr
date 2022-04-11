#ATENCAO
#observe primeiro a classe programa.jl (caso não tenha olhado)

#Para demonstrar que seu codigo funciona ele criou o seguinte teste
include("programa.jl")

programa = tp_Programa()
carregaProdutos(programa)
calculaValorVendas(programa)
imprimeFormulario(programa)

#ok, o codigo funciona. Mas não é coeso.
#O que isso significa? Isso quer dizer que quanto mais ele aumentar o código, mais a classe Programa se tornara custosa de fazer manutencao. Chegara um ponto em que nao sera viavel fazer manutencao na mesma.

