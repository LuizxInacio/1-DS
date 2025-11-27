programa
{
	
	funcao inicio()
	{
	  	caracter resp
	    	inteiro classe
	    	real largura, comprimento
	    	
	    	faca {
	    		
	        limpa()
	        escreva("Lâmpadas para cada cômodo\n")
	        escreva("Ambiente \t\t Classe 	Potência/m2 \n")
	        escreva("Quarto \t\t\t 1 		15\n")
	        escreva("Sala de TV \t\t 1 		15\n")
	        escreva("Salas \t\t\t 2           	18\n")
	        escreva("Cozinha \t\t 2         	18\n") 
	        escreva("Varandas \t\t 2        	18\n")
	        escreva("Escritório \t\t 3           	20\n")
	        escreva("Banheiro \t\t 3        	20\n")
	
	        escreva("\nDigite a classe de iluminação do cômodo: ")
	        leia(classe)
	        escreva("Digite a largura do cômodo: ")
	        leia(largura)
	        escreva("Digite o comprimento do cômodo: ")
	        leia(comprimento)

	        numeroLampada(classe, largura, comprimento)
	
	        escreva("\n\nDeseja verificar outro cômodo? (S/N): ")
	        leia(resp)

	    } enquanto (resp == 'S' ou resp == 's')
	}
	
		
	funcao numeroLampada(inteiro cla, real larg, real comp){

			real result

		escolha(cla){

			caso 1:
				result = comp * larg * 15/100
				escreva("A quantidade de lampadas será: ", result)
				pare
				
			caso 2:
				result = comp * larg * 18/100
				escreva("A quantidade de lampadas será: ", result)
				pare

			caso 3:
				result = comp * larg * 20/100
				escreva("A quantidade de lampadas será: ", result)
				pare

			caso contrario:
				escreva("Classe não disponível")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 913; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */