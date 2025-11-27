programa
{

	cadeia x

	funcao cadeia ParImpar(inteiro a){
		
		se(a%2==0){
			x = "Par"
			retorne x
		} senao {
			x = "Impar"
			retorne x
		}
	}
	
	funcao inicio()
	{

	inteiro num 
	cadeia resul
	
		escreva("Informe um número: ")
		leia(num)

		resul = ParImpar(num) 

		escreva("O número é: ", resul)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */