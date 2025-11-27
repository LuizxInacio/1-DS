programa
{
	
	inteiro a, b


	funcao SOMA(inteiro a, inteiro b)
	{
		inteiro result

		result = a+b
		escreva("O resultado da soma é: ", result)
	}

	
	funcao inicio()
	{
		escreva("Soma e exibe número passados como parametros")
		escreva("\n\n")

		escreva("Primeiro número: ")
		leia(a)
		escreva("Segundo número: ")
		leia(b)

		SOMA(b, a)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */