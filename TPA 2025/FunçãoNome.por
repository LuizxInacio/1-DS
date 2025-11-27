programa
{
	
	funcao inicio()
	{
		cadeia primeiro, segundo
		
		escreva("Entre com dois nomes (sem separação)\n")
		escreva("Primeiro nome: ")
		leia(primeiro)
		escreva("Segundo nome: ")
		leia(segundo)

		cumprimenta(primeiro, segundo)
	}
	
	funcao cumprimenta(cadeia primeiro, cadeia segundo)
	{
		escreva("\n")
		escreva("Olá, ", primeiro, " e ", segundo)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 62; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */