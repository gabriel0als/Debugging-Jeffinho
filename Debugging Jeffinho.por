programa
{
	inclua biblioteca Util --> u 
	inclua biblioteca Texto --> txt
	
	real hp = 200.0
	real atk = 0.0
	cadeia personagem = "ninguem"
	cadeia dificuldade_jogo = "nenhuma"
	real hp_vilao = 100.0
	cadeia ataque = "nada"
	cadeia ataque_perdido = "nada"
	funcao inicio()
	{
		//menu()
		//contexto()
		//selecao_personagem()
		//contexto()
		//combate_portugol()
		//dialogo()
		//dialogo_gym()
		serjao()
	}
	funcao menu()
	{
		cadeia iniciar

		escreva("██████╗ ███████╗██████╗ ██╗   ██╗ ██████╗  ██████╗ ██╗███╗   ██╗ ██████╗          ██╗███████╗███████╗███████╗██╗███╗   ██╗██╗  ██╗ ██████╗ \n")
		escreva("██╔══██╗██╔════╝██╔══██╗██║   ██║██╔════╝ ██╔════╝ ██║████╗  ██║██╔════╝          ██║██╔════╝██╔════╝██╔════╝██║████╗  ██║██║  ██║██╔═══██╗\n")
		escreva("██║  ██║█████╗  ██████╔╝██║   ██║██║  ███╗██║  ███╗██║██╔██╗ ██║██║  ███╗         ██║█████╗  █████╗  █████╗  ██║██╔██╗ ██║███████║██║   ██║\n")
		escreva("██║  ██║██╔══╝  ██╔══██╗██║   ██║██║   ██║██║   ██║██║██║╚██╗██║██║   ██║    ██   ██║██╔══╝  ██╔══╝  ██╔══╝  ██║██║╚██╗██║██╔══██║██║   ██║\n")
		escreva("██████╔╝███████╗██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝██║██║ ╚████║╚██████╔╝    ╚█████╔╝███████╗██║     ██║     ██║██║ ╚████║██║  ██║╚██████╔╝\n")
		escreva("╚═════╝ ╚══════╝╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚════╝ ╚══════╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ \n")
		escreva("\nBem vindo ao nosso jogo!")
		escreva("\nEscreva [INICIAR] para começar o jogo, ou [OPCOES] para acessar as opções\nDigite aqui: ")
		leia(iniciar)

		enquanto(iniciar != "iniciar" ou iniciar != "INICIAR"){
			se(iniciar == "iniciar" ou iniciar == "INICIAR"){
				pare
			}
			senao se(iniciar == "opcoes" ou iniciar == "OPCOES"){
			opcoes()
			pare
			}
			senao{
			escreva("\nPreciso de uma resposta válida!\nDigite aqui: ")
			leia(iniciar)
			}
		}
	}
	funcao dificuldade()
	{
		escreva("\nAgora escolha a dificuldade para seu jogo, escreva [JUNIOR] para um modo mais fácil ou [SENIOR] para um modo mais desafiador")
		escreva("\nDigite aqui: ")
		leia(dificuldade_jogo)
		
		enquanto(dificuldade_jogo != "junior" ou dificuldade_jogo != "JUNIOR" ou dificuldade_jogo != "senior" ou dificuldade_jogo != "SENIOR"){
		se(dificuldade_jogo == "junior" ou dificuldade_jogo == "JUNIOR"){
			escreva("\nPerfeito! Sua aventura começa agora!\n")
			pare
		}
		senao se(dificuldade_jogo == "senior" ou dificuldade_jogo == "SENIOR"){
			escreva("\nBoa sorte! Sua aventura começa agora!")
			pare
		}
		senao{
		escreva("\nPreciso de uma resposta válida!\nDigite aqui: ")
		leia(dificuldade_jogo)
		}
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
		escreva("\nHP: 200             HP: 120                 HP: 150")
		escreva("\nATK: 15             ATK: 25                 ATK: 20\n")

		escreva("\nEscolha com qual personagem deseja jogar, lembre-se essa escolha é permanente\nDigite aqui: ")
		leia(personagem)

		personagem = txt.caixa_alta(personagem)
		
		enquanto(personagem != "LUIS FAMINTO" e personagem != "GUILHERME DO TRUCO" e personagem != "GABRIEL GREMISTA"){
			escreva("Escolha um personagem válido\nDigite novamente seu personagem aqui: ")
			leia(personagem)
			personagem = txt.caixa_alta(personagem)
		}
		se(personagem == "LUIS FAMINTO"){
			escreva("A partir de agora seu nome é... Luis Faminto!\n")
			hp = 200.0
			atk = 15.0
			ataque = "\nVocê arremessa uma coxinha de captury no oponente e acerta deixando ele na saudade!"
			ataque_perdido = "\nVocê arremessa uma coxinha de captury no monstro e erra, desperdiçando todo o recheio!"
		}
		senao se(personagem == "GUILHERME DO TRUCO"){
			escreva("A partir de agora seu nome é... Guilherme do Truco!\n")
			hp = 120.0
			atk = 25.0
			ataque = "\nVocê truca seu adversário.. Mata o GAAATOO!"
			ataque_perdido = "\nVocê tenta passar um facão mas perde!"
		}
		senao se(personagem == "GABRIEL GREMISTA"){
			escreva("A partir de agora seu nome é... Gabriel Gremista!\n")
			hp = 150.0
			atk = 20.0
			ataque = "\nO peso da camiseta tricolor derrubou seu oponente!"
			ataque_perdido = "\nA segunda divisão voltou para te assombrar, você perdeu seu ataque!"
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
		u.aguarde(3000)
		escreva("\nEntão, lentamente você abre seus olhos, vendo em sua frente uma Bela Donzela Japonesa em perigo!\n")
		enter()
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
		real atk_portugol = 20.0
		enter()
		limpa()

		escreva("\n--Combate iniciado--")
		enquanto(hp_vilao != 0.0){
			se(hp <= atk_portugol){
				escreva("\nSua situação está crítica, ", personagem,". Então a Bela Donzela Japonesa profere um super golpe derrotando o programa.")
				pare
			}
			escreva("\nProfira seu golpe jogador, escreva [1] para um ataque normal ou [2] para arriscar um golpe crítico\nDigite aqui: ")
			leia(atacar)
			se(atacar == 1)
			{
				hp_vilao = hp_vilao - atk
				escreva(ataque)
				escreva("\nA vida do oponente está em ", hp_vilao,"HP\n")
				enter()
				hp = hp - atk_portugol
				escreva("\nO programa Portugol te acerta com um código em PTBR, dá para acreditar?")
				escreva("\nSua vida agora está em ", hp, "HP\n")
			}
			senao se(atacar == 2){
				danocritico()
				enter()
				escreva("\nPortugol: Agora é a minha vez...")
				hp = hp - atk_portugol
				escreva("\nO programa Portugol te acerta com um código em PTBR, dá para acreditar?")
				escreva("\nSua vida agora está em ", hp, "HP\n")
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
				hp_vilao = hp_vilao - atk*2
				escreva("\nVocê acertou o golpe crítico, ",personagem,". A vida dele está em ", hp_vilao,"HP\n")
			}
			senao{
				escreva("\nVish, você errou o golpe crítico.\n")
			}
		}
		senao{
			se(chance <= 3){
				hp_vilao = hp_vilao - atk*2
				escreva("\nVocê acertou o golpe crítico, ",personagem,". A vida dele está em ", hp_vilao,"HP\n")
			}
			senao{
				escreva("\nVish, você errou o golpe crítico.\n")
			}
		}
	}
	funcao dialogo()
	{
		inteiro pergunta = 0
		cadeia nome_dela = "Bela Donzela Japonesa"
		escreva("\nPortugol: Não acredito que suas técnicas baratas me derrotaram, NÃOOO!!!\n")
		enter()
		limpa()
		escreva("Bela Donzela Japonesa: Ufa, Ainda bem que você apareceu, se não fosse por você eu poderia ter virado uma programadora de Portugol\n")
		u.aguarde(3000)
		escreva(personagem,": Não há de que, he he.\n")
		u.aguarde(3000)
		escreva("Bela Donzela Japonesa: Olha, talvez você esteja um pouco confuso e queira perguntar algo, bom, essa é a hora.\n")
		enter()
		enquanto(pergunta != 3){
			escreva("\n[1] Então, qual é o seu nome?\n")
			escreva("[2] Onde estamos?\n")
			escreva("[3] Sair\n")
			escreva("Digite aqui: ")
			leia(pergunta)

			se(pergunta == 2){
				escreva("\n",nome_dela,": Nós estamos no reino do Java Script...\n")
				u.aguarde(3000)
				escreva(personagem, ": Mas qual o motivo de toda essa destruição?\n")
				u.aguarde(3000)
				escreva(nome_dela, ": O motivo?.. Ele se chama Jefferson De Oliveira Chaves.. Mais conhecido como Jeffinho dos compiuter.\n")
				escreva("Ele era um dos melhores professores de programação, ensinava seus alunos bem.. até que o java script o corrompeu!\n")
				escreva("Ele está tentando dominar o mundo inteiro para fazer todos programarem em java, já pensou o horror?\n")
				u.aguarde(5000)
			}
			senao se(pergunta == 1){
				escreva("\n",nome_dela, ": Eu me chamo Henrica Murakami, eu era apenas uma feliz programadora de Scratch, até o reinado de Jeffinho começar...\n")
				nome_dela = "Henrica Murakami"
				u.aguarde(3000)
			}
			se(pergunta <= 0 ou pergunta > 3) { escreva("\nEscolha uma opção válida.")
			}
		}
		limpa()
		u.aguarde(1000)
		escreva("\n",nome_dela,": Escute, ", personagem,". Eu sei que é muita informação, mas você precisa nos ajudar.") u.aguarde(2000)
		escreva("\nSe você está aqui deve ser o herói que as profecias apontavam!") 
		escreva("\nNosso reino precisa de você. No momento você deve ir à academia de Renato Cariani e Serjão dos Foguetes.") 
		escreva("\nTalvez você devesse tentar chegar até lá antes de Jeffinho e se fortalecer!") 
		u.aguarde(3000)
		escreva("\n",personagem,": Tudo bem, farei o possível.\n")
		enter()
	}
	funcao dialogo_gym()
	{
		inteiro resposta
		inteiro serjao_resposta
		
		limpa()
		escreva("Você segue junto a Henrica numa longa viagem até a academia de Renato Cariani.\n") u.aguarde(3000)
		escreva("Henrica Murakami: Parece que chegamos") u.aguarde(1000)
		escreva(".")u.aguarde(500)
		escreva(".")u.aguarde(500)
		escreva(".\n")u.aguarde(500)
		enter()

		//foto da academia
		escreva("Henrica Murakami: Tem muitas pessoas aqui, talvez seja difícil encontrar eles\n")
		escreva("O que você prefere, digite [1] para procurar por Renato ou [2] para procurar por Serjão\nDigite aqui: ")
		leia(resposta)

		se(resposta == 2){
			escreva("Você anda pela academia, vendo muitos refugiados da ciência.\n") u.aguarde(3000)
			escreva("Você encontra Serjão.\n") u.aguarde(3000)
			escreva(personagem, ": MESTRE SERJÃO!\n") u.aguarde(3000)
			escreva("Serjão: Olá jovem, como se chama?\n") u.aguarde(3000)
			escreva("Sou eu, Serjão, o ", personagem,"!\n") u.aguarde(3000)
			escreva("Serjão: Bom, você já deve me conhecer. Ajudo as pessoas aqui a melhorarem seu ataque com poderosos códigos.\n") u.aguarde(3000)
			escreva("Eu preciso do seu treinamento, sou o escolhido pela profecia para derrotar Jeffinho!\n") u.aguarde(3000)
			escreva("OHH, estávemos te esperando! Precisamos treinar sua capacidade de raciocínio para derrotar Jeffinho!\n") u.aguarde(3000)
			escreva("Você está pronto? [1] Vamos lá!  [2] Gostaria de treinar com Cariani, ando me sentindo um frango.\n") u.aguarde(3000)
			leia(serjao_resposta)
		}
		se(resposta == 1){
		escreva("Você parte em busca de Renato Cariani.") u.aguarde(3000)
		escreva("Henrica Murakami: Renato, tenho um rapaz para você.\n") u.aguarde(3000)
		escreva("Henrica Murakami: Ele é o herói que as profecias apontavam, mas precisa se fortalecer.\n") u.aguarde(3000)
		escreva(personagem, ": Se me ajudar, posso derrotar Jeffinho.\n") u.aguarde(3000)
		escreva("Renato: Eu não sei, você é muito frango.") u.aguarde(3000)
		}
	}
	funcao serjao()
	{
		cadeia planetas[8] = {"MERCURIO", "VENUS", "TERRA", "MARTE", "JUPITER", "SATURNO", "URANO", "NETUNO"}
		logico condicao = falso
		cadeia resposta
		inteiro chances = 10
		inteiro acertos = 0
		logico planetaEncontrado
		
 
		escreva("\nHora de começar o seu treinamento, jovem.\n")
		escreva("Primeiro, vamos aos conhecimentos gerais, cite 3 planeta do sistema solar.")

		enquanto(chances >= 0 ou acertos < 3)
		{
			planetaEncontrado = falso
			escreva("\nDigite aqui: ")
			leia(resposta)
	
			resposta = txt.caixa_alta(resposta)


			para(inteiro j=0; j < 8; j++){
				se(planetas[j] == resposta){
					planetaEncontrado = verdadeiro
				}
			}
			
			chances--
			
			se(planetaEncontrado){
					escreva("Essa você acertou! Você ainda tem ",chances," chances.")
					acertos++
			}senao {
					escreva("Essa você errou! Você ainda tem ",chances," chances.")
			}
			
		}

		escreva("acertos: ", acertos)
		
	}
	funcao cariani()
	{
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11786; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */