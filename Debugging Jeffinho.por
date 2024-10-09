programa
{
	inclua biblioteca Util --> u 
	
	real hp = 200.0
	real atk = 0.0
	cadeia personagem = "ninguem"
	cadeia dificuldade_jogo = "nenhuma"
	real hp_vilao = 100.0
	cadeia ataque = "nada"
	cadeia ataque_perdido = "nada"
	funcao inicio()
	{
		menu()
		contexto()
		enter()
		selecao_personagem()
		contexto()
		combate_portugol()
	}
	funcao menu()
	{
		cadeia iniciar

		escreva("--Debugging Jeffinho--\nBem Vindo ao nosso jogo!\n")
		escreva("Escreva [INICIAR] para começar o jogo, ou [OPCOES] para acessar as opções\nDigite aqui: ")
		leia(iniciar)

		se(iniciar == "iniciar" ou iniciar == "Iniciar"){
			
		}
		se(iniciar == "opcoes" ou iniciar == "opções"){
			opcoes()
		}
	}
	funcao dificuldade()
	{
		escreva("\nAgora escolha a dificuldade para seu jogo, escreva [JUNIOR] para um modo mais fácil ou [SENIOR] para um modo mais desafiador")
		escreva("\nDigite aqui: ")
		leia(dificuldade_jogo)
		se(dificuldade_jogo == "junior" ou dificuldade_jogo == "JUNIOR"){
			escreva("\nPerfeito! Sua aventura começa agora!\n")
		}
		senao se(dificuldade_jogo == "senior" ou dificuldade_jogo == "SENIOR"){
			escreva("\nBoa sorte! Sua aventura começa agora!\n")
		}
	}
	funcao opcoes()
	{
		escreva("Não temos opções, ou melhor, VOCÊ não tem opções. Apenas jogue!\n")
		enter()
	}
	funcao selecao_personagem()
	{
		escreva("\n---[ESCOLHA DE PERSONAGEM]---\n")
		escreva("\nLuis Faminto        Guilherme do Truco      Gabriel Gremista")
		escreva("\nHP: 200             Hp: 120                 HP: 150")
		escreva("\nATK: 15             ATK: 25                 ATK: 20\n")

		escreva("\nEscolha com qual personagem deseja jogar, lembre-se essa escolha é permanente\nDigite aqui: ")
		leia(personagem)

		enquanto(dificuldade_jogo == "nenhuma"){
		se(personagem == "luis faminto" ou personagem == "Luis Faminto"){
			escreva("A partir de agora seu nome é... Luis Faminto!\n")
			hp = 200.0
			atk = 15.0
			ataque = "\nVocê arremessa uma coxinha de captury no monstro e acerta deixando ele na saudade!"
			ataque_perdido = "\nVocê arremessa uma coxinha de captury no monstro e erra, desperdiçando todo o recheio!"
			pare
		}
		se(personagem == "guilherme do truco" ou personagem == "Guilherme do Truco"){
			escreva("A partir de agora seu nome é... Guilherme do Truco!\n")
			hp = 120.0
			atk = 25.0
			ataque = "\nVocê truca seu adversário.. Mata o GAAATOO!"
			ataque_perdido = "\nVocê tenta passar um facão mas perde!"
			pare
		}
		se(personagem == "gabriel gremista" ou personagem == "Gabriel Gremista"){
			escreva("A partir de agora seu nome é... Gabriel Gremista!\n")
			hp = 150.0
			atk = 20.0
			ataque = "\nO peso da camiseta tricolor derrubou seu oponente!"
			ataque_perdido = "\nA segunda divisão voltou para te assombrar, você perdeu seu ataque!"
			pare
		}
		senao{
			escreva("Escolha um personagem válido\nDigite aqui: ")
			leia(personagem)
		}
		}
		enter()
	}
	funcao enter()
	{
		cadeia proximo
		escreva("Pressione ENTER para continuar...\n")
 			leia(proximo)
  		enquanto (proximo != ""){
    	 		escreva("Apenas pressione ENTER!\n")
     		leia(proximo)
  		}
	}
	funcao contexto()
	{
		se(personagem == "ninguem"){
		escreva("\nVocê acorda em mundo à beira de um colapso... ")
		escreva("Onde máquinas virtuais estão tentando dominá-lo juntamente a um Mega Super Vilão.")
		escreva("\nEntão, lentamente você abre seus olhos, vendo em sua frente uma Bela Donzela Japonesa em perigo!\n")
		}

		senao{
			escreva("\nA Bela Donzela Japonesa está gritando por socorro!\n")
			escreva("Um programa do tipo Portugol está cercando ela, está na hora de agir. Tome cuidado, ", personagem,".\n")
			hp_vilao = 150.0
			dificuldade()
		}
	}
	funcao combate_portugol()
	{
		inteiro atacar = 0
		hp_vilao = 150.0
		enter()

		escreva("\nCombate iniciado")
		enquanto(hp_vilao != 0.0){
			escreva("\nProfira seu golpe jogador, escreva [1] para um ataque normal ou [2] para arriscar um golpe crítico\nDigite aqui: ")
			leia(atacar)
			se(atacar == 1)
			{
				hp_vilao = hp_vilao - atk
				escreva(ataque)
				escreva("\nA vida do oponente está em ", hp_vilao,"HP")
			}
			senao se(atacar == 2){
				danocritico()
			}
			senao{
				escreva("Essa opção não é válida")
			}
		}
	}
	funcao danocritico()
	{
		inteiro chance
		chance = u.sorteia(0, 10)
		
		se(dificuldade_jogo == "junior"){
			se(chance <= 6){
				hp_vilao = hp_vilao - atk*1.5
				escreva("\nVocê acertou o golpe crítico, a vida dele está em", hp_vilao,"HP")
			}
			senao{
				escreva("\nVish, você errou o golpe crítico.")
			}
		}
		senao{
			se(chance <= 4){
				hp_vilao = hp_vilao - atk*1.5
				escreva("\nVocê acertou o golpe crítico, a vida dele está em", hp_vilao,"HP")
			}
			senao{
				escreva("\nVish, você errou o golpe crítico.")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4266; 
 * @DOBRAMENTO-CODIGO = [11, 20, 35, 47, 87, 94, 106, 112, 104, 126];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */