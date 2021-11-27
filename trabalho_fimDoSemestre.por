programa
{
	inclua biblioteca Tipos --> t/*Utilize funções para criar cada opção do menu.
O usuário deve escolher a operação, digitar os números e então é efetuada a operação correspondente, nas opções de +, -, * e /. 
A memória deve armazenar em um vetor o resultado de até 10 operações.
Na opção “m”, deve ser impressa uma lista com os resultados das operações realizadas até o momento. 
Se a memória não tiver nenhuma operação, deve ser mostrada a informação “MEMORIA VAZIA”
O menu deve ser apresentado novamente ao final de cada operação, até que o usuário digite “s” ou a memória fique cheia. 
*/
	real numero1 = 0, numero2 = 0, resultado = 0, vetor[10]
	inteiro i = 0
	
	funcao inicio()
	{	lerNumeros()
		menu()
	}

	funcao lerNumeros(){

		escreva("Escolha uma opção")
		escreva("\nDigite o primeiro número: ")
		leia(numero1)
		
		escreva("Digite o segundo número: ")
		leia(numero2)
		escreva("Resultado: ",resultado, "\n")
		}

	funcao real soma(real numero1, real numero2){
		retorne numero1 + numero2}
		
	funcao real subtracao(real numero1, real numero2){
		retorne numero1 - numero2}
		
	funcao real multiplicacao(real numero1, real numero2){
		retorne numero1 * numero2}

	funcao real divisao(real numero1, real numero2){
		retorne numero1 / numero2}

	funcao menu(){

		cadeia escolhido = "s"

		escreva("\n+ - Soma: ")
		escreva("\n- -subtração: ")
		escreva("\n* -multiplicação: ")
		escreva("\n/ -Divisão: ")
		escreva("\nm -imprimir memória: ")
		escreva("\ns -sair: ")
		leia(escolhido)
		
		se(escolhido == "+"){
			
		resultado = soma(numero1, numero2)
		escreva("\nResultado: ",numero1," + ", numero2," = ",resultado, "\n")
				armazenaValores(resultado)
				lerNumeros()
				menu()
		}
			senao se(escolhido == "-"){
				resultado = subtracao(numero1, numero2)
				escreva("\nResultado: ",numero1," - ", numero2," = ",resultado, "\n")
				armazenaValores(resultado)
				lerNumeros()
				menu()
				}
			senao se(escolhido == "*"){
				resultado = multiplicacao(numero1, numero2)
				escreva("\nResultado: ",numero1," * ", numero2," = ",resultado, "\n")
				armazenaValores(resultado)
				lerNumeros()
				menu()
				}
			senao se(escolhido == "/"){
				resultado = divisao(numero1, numero2)
				escreva("\nResultado: ",numero1," / ", numero2," = ",resultado, "\n")
				armazenaValores(resultado)
				lerNumeros()
				menu()
				}
			senao se(escolhido == "m"){
				imprimeMemoria()
				}
			senao se(escolhido == "s"){
				escreva("Programa encerrado")}
			senao{escreva("Opção inválida!!\n")
			lerNumeros()
			menu()}
	}
	
	funcao armazenaValores(real resultado){
		
		para(i=0; i < 10; i++){
			se(vetor[i] == 0){
				vetor[i] = resultado
					se (vetor[i]!=0){pare}
				se (i>=10){
				escreva("Espaço cheio")}
			}	
		}
	}

	funcao imprimeMemoria(){
		limpa()
		escreva("Memória\n")
		se(vetor[0] == 0){
			limpa()
			escreva("Memória vazia")}
			senao{
			para(i=0; i < 10; i++){
			escreva(vetor[i],"\t")
			}	
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2844; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */