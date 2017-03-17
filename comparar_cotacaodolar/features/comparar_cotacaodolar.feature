#language: pt
#uft-8

Funcionalidade: Comparar cotacao do dolar
	Eu como cliente quero comparar a cotacao do dolar 
		pesquisado no site do UOL no menu economia


	Cenario: Comparar a cotacao do dolar pesquisado no site do UOL
		Dado que esteja no site do Google
		Quando pesquisar um site especifico
		E selecionar o link UOL - O melhor conteúdo
		E valdar que estou no site UOL
		E selecionar o link Economia
		Então comparar o valor do dolar se menor 3,20 teste encerra com sucesso senão falha