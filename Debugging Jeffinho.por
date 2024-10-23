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
	cadeia arma
	
	funcao inicio()
	{
		//menu()
		//contexto()
		//selecao_personagem()
		//contexto()
		//combate_portugol()
		//dialogo()
		//academia()
		jeffinho()
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

		iniciar = txt.caixa_alta(iniciar)

		enquanto(iniciar != "INICIAR" e iniciar != "OPCOES"){
			escreva("\nPreciso de uma resposta válida!\nDigite aqui: ")
			leia(iniciar)
		}
		se(iniciar == "INICIAR"){
		}
		se(iniciar == "OPCOES"){
			opcoes()
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
		limpa()
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
		escreva("\nVocê acorda em mundo à beira de um colapso")
		carregar()
		escreva(" Onde máquinas virtuais estão tentando dominá-lo juntamente a um Mega Super Vilão.")
		u.aguarde(3000)
		escreva("\nEntão, lentamente você abre seus olhos, vendo em sua frente uma Bela Donzela Japonesa em perigo!\n")
		u.aguarde(3000)
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
		inteiro atacar, sorteio_portugol = 0
		hp_vilao = 150.0
		real atk_portugol = 20.0
		cadeia fala_portugol[3] = {"O programa Portugol te acerta com um código em PTBR, dá para acreditar?", 
		"O programa Portugol adicionou a biblioteca: Funeral.", "O programa Portugol contra-ataca com seu poder mais temido. ERRO DE COMPILAÇÃO, LINHA 0"}
		enter()
		limpa()

		escreva("\n--Combate iniciado--")
		enquanto(hp_vilao != 0.0){ sorteio_portugol = u.sorteia(0, 2)
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
				escreva("\nPortugol: Agora é a minha vez... ")
				escreva(fala_portugol[sorteio_portugol])
				escreva("\nSua vida agora está em ", hp, "HP\n")
			}
			senao se(atacar == 2){
				danocritico()
				enter()
				escreva("\nPortugol: Agora é a minha vez... ")
				hp = hp - atk_portugol
				escreva(fala_portugol[sorteio_portugol])
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
				escreva(nome_dela, ": O motivo?.. Ele se chama Jefferson De Oliveira Chaves.. Mais conhecido como Jeffinho dos compiuter.\n") u.aguarde(3000)
				escreva("Ele era um dos melhores professores de programação, ensinava seus alunos bem.. até que o java script o corrompeu!\n") u.aguarde(3000)
				escreva("Ele está tentando dominar o mundo inteiro para fazer todos programarem em java, já pensou o horror?\n") u.aguarde(4000)
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
		escreva("\n",nome_dela,": Escute, ", personagem,". Eu sei que é muita informação, mas você precisa nos ajudar.") u.aguarde(3000)
		escreva("\nSe você está aqui deve ser o herói que as profecias apontavam!") u.aguarde(3000)
		escreva("\nNosso reino precisa de você. No momento você deve ir à academia de Renato Cariani e Serjão dos Foguetes.") u.aguarde(3000)
		escreva("\nTalvez você devesse tentar chegar até lá antes de Jeffinho e se fortalecer!") u.aguarde(3000)
		u.aguarde(3000)
		escreva("\n",personagem,": Tudo bem, farei o possível.\n")
		enter()
	}
	funcao academia()
	{
		inteiro resposta, resposta_serjao, resposta_cariani
		
		limpa()
		escreva("Você segue junto a Henrica numa longa viagem até a academia de Renato Cariani.\n") u.aguarde(3000)
		escreva("Henrica Murakami: Parece que chegamos") u.aguarde(1000)
		carregar()
		escreva("\n")
		enter()

          escreva("                                                     ___\n")
    		escreva("                                             ___..--'  .`.\n")
    		escreva("                                    ___...--'     -  .` `.`.\n")
    		escreva("                           ___...--' _      -  _   .` -   `.`.\n")
    		escreva("                  ___...--'  -       _   -       .`  `. - _ `.`.\n")
    		escreva("           __..--'_______________ -         _  .`  _   `.   - `.`.\n")
    		escreva("        .`    _ /\\    -        .`      _     .`__________`. _  -`.`.\n")
   		escreva("      .` -   _ /  \\_     -   .`  _         .` |Academia do|`.   - `.`.\n")
    		escreva("    .`-    _  /   /\\   -   .`        _   .`   |__Cariani__|  `. _   `.`.\n")
    		escreva("  .`________ /__ /_ \\____.`____________.`     ___       ___  - `._____`|\n")
    		escreva("    |   -  __  -|    | - |  ____  |   | | _  |   |  _  |   |  _ |\n")
    		escreva("    | _   |  |  | -  |   | |.--.| |___| |    |___|     |___|    |\n")
    		escreva("    |     |--|  |    | _ | |'--'| |---| |   _|---|     |---|_   |\n")
    		escreva("    |   - |__| _|  - |   | |.--.| |   | |    |   |_  _ |   |    |\n")
    		escreva(" ---``--._      |    |   |=|'--'|=|___|=|====|___|=====|___|====|\n")
    		escreva(" -- . ''  ``--._| _  |  -|_|.--.|_______|_______________________|\n")
    		escreva("`--._           '--- |_  |:|'--'|:::::::|:::::::::::::::::::::::|\n")
    		escreva("_____`--._ ''      . '---'``--._|:::::::|:::::::::::::::::::::::|\n")
    		escreva("----------`--._          ''      ``--.._|:::::::::::::::::::::::|\n")
    		escreva("`--._ _________`--._'        --     .   ''-----.................'\n")
    		escreva("     `--._----------`--._.  _           -- . :''           -    ''\n")
    		escreva("          `--._ _________`--._ :'              -- . :''      -- . ''\n")
    		escreva(" -- . ''       `--._ ---------`--._   -- . :''\n")
    		escreva("          :'        `--._ _________`--._:'  -- . ''      -- . ''   \n")

          u.aguarde(4000)
          limpa()
          
		escreva("Henrica Murakami: Tem muitas pessoas aqui, talvez seja difícil encontrar eles\n") u.aguarde(3000)
		escreva("O que você prefere, digite [1] para procurar por Renato ou [2] para procurar por Serjão\n")
		escreva("\n\\\\\\\\ Treino com Renato Cariani HP++ /////\n")
		escreva("\\\\\\\\     Treino com Serjão ATK++    ////\n\nDigite aqui: ")
		leia(resposta)

		enquanto(resposta != 1 e resposta != 2){
			escreva("Informe uma opção válida\nDigite aqui: ")
			leia(resposta)
		}
		
		se(resposta == 2){ limpa()
			escreva("Você anda pela academia, vendo muitos refugiados da ciência.\n") 
			u.aguarde(3000)
			escreva("Você encontra Serjão.\n") 
			u.aguarde(3000)
			escreva(personagem, ": MESTRE SERJÃO!\n") 
			u.aguarde(3000)
			escreva("Serjão: Olá jovem, como se chama?\n") 
			u.aguarde(3000)
			escreva(personagem, ": Sou eu, Serjão, o ", personagem,"!\n") 
			u.aguarde(3000)
			escreva("Serjão: Bom, você já deve me conhecer. Aqui ajudo as pessoas a melhorarem seu ataque com poderosos códigos.\n") 
			u.aguarde(3000)
			escreva(personagem,": Eu preciso do seu treinamento, sou o escolhido pela profecia para derrotar Jeffinho!\n") 
			u.aguarde(3000)
			escreva("Serjão: OHH, estávamos te esperando! Precisamos treinar sua capacidade de raciocínio para derrotar Jeffinho!\n")
			u.aguarde(3000)
			escreva("Você está pronto?   [1] Vamos lá!    [2] Gostaria de treinar com Cariani, ando me sentindo um frango.\nDigite aqui: ") 
			leia(resposta_serjao) u.aguarde(1000)

			enquanto(resposta_serjao < 1 ou resposta_serjao > 2){
				escreva("Informe uma opção válida\nDigite aqui: ")
				leia(resposta_serjao)
			}
			se(resposta_serjao == 1){
			serjao()
			}
			se(resposta_serjao == 2){
			escreva("\nSerjão: Eu iria te fazer desenvolver um foguete, escolheu bem jovem.\n")
			escreva("Você vai até Renato para o treinamento.") u.aguarde(2000)
			cariani()
			}
		}
		se(resposta == 1){ limpa()
			escreva("Você parte em busca de Renato Cariani.\n") 
			u.aguarde(3000)
			escreva("Henrica o avistou.\n") 
			u.aguarde(3000)
			escreva("Henrica Murakami: Renato, tenho um rapaz para você.\n") 
			u.aguarde(3000)
			escreva("Henrica Murakami: Ele é o herói que as profecias apontavam, mas precisa se fortalecer.\n") 
			u.aguarde(3000)
			escreva(personagem, ": Se me ajudar, posso derrotar Jeffinho.\n") 
			u.aguarde(3000)
			escreva("Renato: Eu não sei, você é muito frango.\n") 
			u.aguarde(3000)
			escreva("\n[1] Frango eu? para mim frango é você!      [2] Quer saber, prefiro treinar com Serjão\nDigite aqui: ")
			leia(resposta_cariani) u.aguarde(1000)
		
			enquanto(resposta_cariani < 1 e resposta_cariani > 2){
				escreva("Informe uma opção válida\nDigite aqui: ")
				leia(resposta_cariani)
			}
			se(resposta_cariani == 1){
			cariani()
			}
			se(resposta_cariani == 2){
			escreva("\nPor isso você não cresce!\n") u.aguarde(2000)
			escreva("Você vai até Serjão para o treinamento.") u.aguarde(2000)
			serjao()
			}
		}
	}
	funcao cariani()
	{	
		inteiro chances = 5
		inteiro acertos = 0
		inteiro resposta

		cadeia perguntas[5] = {"Quem é o melhor? [1] Julio Balestrin    [2] Renato Cariani", 
		"Aceita uma coquinha gelada?      [1] Sim, por favor    [2] Não estou afim",
		"Qual a melhor música para ouvir treinando?      [1] Princesa Sofia ou Moranguinho no fone       [2] Música da academia",
		"O que vale mais a pena?       [1] Ser natural       [2] Se render ao suco",
		"Qual o melhor dia para começar a cuidar da sua saúde?       [1] Quando for tarde demais     [2] Hoje mesmo"}

		inteiro respostas[5] = {2, 2, 1, 1, 2}
		
		limpa()
		
		escreva("Renato: Então você quer ficar mais forte, não é?") 
		u.aguarde(2000)
		escreva("\nRenato: Primeiro, temos que fortalecer sua musculatura.")
		u.aguarde(2000)
		escreva("\nRenato: Irei te fazer 5 perguntas, cada resposta correta o peso fica mais leve. Tente acertar 3 para completar a série.")
		u.aguarde(3000)

			escreva("\nAqui vai a primeira, quem é o melhor?\n [1] Julio Balestrin    [2] Renato Cariani\nDigite aqui: ")
			leia(resposta)
			
			se(resposta != 1 e resposta != 2){
				escreva("\nInforme uma opção válida\nDigite aqui: ")
				leia(resposta)
			}
			se(resposta == 1){
				escreva("\nRenato: Está de brincadeira comigo?")
				resposta = 0
			}
			se(resposta == 2){
				escreva("\nRenato: Ótimo ouvir isso, a máquina está mais leve.")
				acertos++
				resposta = 0
			}
		
			u.aguarde(2000)
		
			escreva("\n\nVamos à segunda pergunta, quer uma coquinha gelada?\n      [1] Sim, por favor    [2] Não estou afim\nDigite aqui: ")
			leia(resposta)
		
			se(resposta != 1 e resposta != 2){
				escreva("\nInforme uma opção válida\nDigite aqui: ")
				leia(resposta)
			} 
			se(resposta == 1){
				escreva("\nRenato: Hoje é quinta, dia do lixo só aos sábados. Mais peso na máquina.")
				resposta = 0
			}
			se(resposta == 2){
				escreva("\nRenato: Bom que recusou, eu queria tomar sozinho. Máquina está mais leve. ")
				acertos++
				resposta = 0
			}
		
			u.aguarde(2000)
		
			escreva("\n\nHora da terceira pergunta, qual a melhor música para ouvir treinando?\n")
			escreva("     [1] Princesa Sofia ou Moranguinho no fone       [2] Música da academia  \nDigite aqui: ")
			leia(resposta)

			se(resposta != 1 e resposta != 2){
				escreva("\nInforme uma opção válida\nDigite aqui: ")
				leia(resposta)
			} 
			se(resposta == 1){
				escreva("\nRenato: Não tem como não é, são as melhores. Máquina mais leve.")
				acertos++
				resposta = 0
			}
			se(resposta == 2){
				escreva("\nRenato: Não posso me incoformar que essa é a sua opinião. Máquina mais pesada.")
				resposta = 0
			}

			u.aguarde(2000)

			escreva("\n\nQuarta pergunta, estamos quase no fim. O que vale mais a pena?")
			escreva("     [1] Ser natural       [2] Se render ao suco  \nDigite aqui: ")
			leia(resposta)
		
			se(resposta != 1 e resposta != 2){
				escreva("\nInforme uma opção válida\nDigite aqui: ")
				leia(resposta)
			} 
			se(resposta == 1){
				escreva("\nRenato: Seja natural, cuide do seu corpo. Máquina mais leve.")
				acertos++
				resposta = 0
			}
			se(resposta == 2){
				escreva("\nRenato: Não é o que voce precisa, jovem. Acredite.")
				resposta = 0
			}

			u.aguarde(2000)

			escreva("\n\nÚltima pergunta, qual o melhor dia para começar a cuidar da sua saúde?")
			escreva("\n      [1] Quando for tarde demais     [2] Hoje mesmo   \nDigite aqui: ")
			leia(resposta)

			se(resposta != 1 e resposta != 2){
				escreva("\nInforme uma opção válida\nDigite aqui: ")
				leia(resposta)
			} 
			se(resposta == 1){
				escreva("\nRenato: Sabe que não é a resposta correta certo? Máquina mais pesada")
				resposta = 0
			}
			se(resposta == 2){
				escreva("\nRenato: Mais certo impossível.")
				resposta = 0
				acertos++
			}
		u.aguarde(3000)
		limpa()
		carregar()
		limpa()
		
		se(acertos == 5){
			hp = hp + 30
			escreva("Renato: Você zerou a máquina! Um verdadeiro monstro. Seu HP subiu +30 pontos.\n")
			enter()
		}
		se(acertos >= 3 e acertos < 5){
			hp = hp + 20
			escreva("Renato: Você venceu a máquina! Foi graduado de frango para avestruz. Seu HP subiu +20 pontos.\n")
			enter()
		}
		se(acertos < 3){
			hp = hp + 10
			escreva("\nVocê falhou na máquina.")
			u.aguarde(2000)
			escreva("Renato: Não extraímos total proveito do seu potencial, porém mesmo assim seu HP subiu +10 pontos.\n")
			enter()
		}
		
		u.aguarde(1000)
		limpa()
		carregar()
		limpa()

		escreva("Renato: Escute garoto, acredito que era isso era tudo que eu poderia te ensinar.")
		u.aguarde(2000)
		escreva("\n", personagem,": Sério? Acredita que estou mais forte agora?")
		u.aguarde(2000)
		escreva("\nRenato: Pode apostar que está.")
		u.aguarde(2000)
		escreva("\nRenato: Porém, antes de partir")
		carregar()
		escreva(" Tenho um presente para você.")

		u.aguarde(1000)
		escreva("\n\n ~~~ NOVO ITEM ADICIONADO - Scratch Shield ~~~\n\n")
		u.aguarde(1000)
		escreva("  |`-._/\\_.-`|\n")
		escreva("  |    ||    |\n")
		escreva("  |___o()o___|\n")
		escreva("  |__((<>))__|\n")
		escreva("  \\   o\\/o   /\n")
		escreva("   \\   ||   /\n")
		escreva("    \\  ||  /\n")
		escreva("     '.||.'\n")
		escreva("       ``\n")
		u.aguarde(3000)

		arma = "Scratch Shield"

		escreva("\n\n", personagem,": Nossa, o que é isso Renato?")
		u.aguarde(2000)
		escreva("\nRenato: Isso é uma relíquia, jovem. Dos bons tempos de Scrath nessa terra.")
		u.aguarde(4000)
		escreva("\nRenato: Você poderá usá-lo 3 vezes durante a batalha, o dano de ataque adversário será menor.")
		u.aguarde(4000)
		escreva("\nRenato: Isso é tudo. Agora resta apenas desejar boa sorte em sua missão. Desça a mão nele!\n")
		enter()
		
	}
	funcao serjao()
	{
		cadeia planetas[8] = {"MERCURIO", "VENUS", "TERRA", "MARTE", "JUPITER", "SATURNO", "URANO", "NETUNO"}
		cadeia resposta
		inteiro chances = 10
		inteiro acertos = 0, resposta2= 0
		logico planetaEncontrado

		limpa()
		escreva("Hora de começar o seu treinamento, jovem.\n") u.aguarde(2000)
		escreva("Primeiro, vamos aos conhecimentos gerais. Você tem 10 chances, cite 5 planeta do sistema solar.")

		enquanto(chances != 0)
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
			se(planetaEncontrado){ acertos++
				se(acertos == 5){
				chances = 0
				}
				senao{
					escreva("Serjão: Essa você acertou! Você ainda tem ",chances," chances.")
				}
			}
			se(nao planetaEncontrado){
					escreva("Serjão: Essa você errou! Você ainda tem ",chances," chances.")
			}
		}
		se(acertos == 5){ 
			u.aguarde(1000)
			limpa()
			carregar()
			limpa()
			u.aguarde(1000)
			escreva("Serjão: Está quase no meu nível, jovem.\n")
		}
		senao{
			u.aguarde(1000)
			limpa()
			carregar()
			limpa()
			u.aguarde(1000)
			escreva("Serjão: Você faltou algumas aulas de ciência, não é?\n") u.aguarde(3000)
		}
		enter()
		escreva("\nSerjão: Agora vamos à próxima, essa é para não zerar hein.") 
		u.aguarde(3000)
		escreva("\nSerjão: Vamos testar seu raciocínio. Tenho um paradoxo para você.\n")
		u.aguarde(3000)
		escreva("Serjão: Imagine três portas, atrás de uma existe um prêmio e, atrás das outras duas não existe nada.\n")
		u.aguarde(5000)
		escreva("Serjão: Primeiro você escolhe uma porta, mas sem abri-la. Após isso uma outra porta é aberta e é revelado que não contém nada.\n")
		u.aguarde(5000)
		escreva("Serjão: Agora tem uma opção, abrir a última porta restante, ou abrir a que você escolheu inicialmente?") 
		escreva("\n            [1] Abrir a primeira porta        [2] Trocar de porta       \nDigite aqui: ")
		leia(resposta2)

		
		enquanto(resposta2 != 1 e resposta2 != 2){
			escreva("\nInforme uma opção válida.\nDigite aqui: ")
			leia(resposta2)
		} 
		se(resposta2 == 1){
			limpa()
			carregar()
			limpa()
			escreva("Serjão: Você não encontrou o prêmio. Essa é difícil mesmo, jovem.")
			
		}
		se(resposta2 == 2){
			limpa()
			carregar()
			limpa()
			escreva("Serjão: Fale a verdade, você já conhecia essa não é, jovem?")
			acertos = acertos + 1
		}
		u.aguarde(2000)
		limpa()
		carregar()
		limpa()

		se(acertos < 3){
			atk = atk + 10
			escreva("\nSerjão: Você teve um desempenho um pouco abaixo, porém mesmo assim seu ataque subiu +10 pontos")
			enter()
		}
		se(acertos >= 3 e acertos < 6){
			atk = atk + 20
			escreva("\nSerjão: Você teve um bom desempenho no treinamento, seu ataque subiu +20 pontos")
			enter()
		}
		se(acertos == 6){
			atk = atk + 30
			escreva("\nSerjão: Uau, jovem. Você maximizou seu treinamento, seu atauque subiu +30 pontos")
			enter()
		}
		u.aguarde(1000)
		limpa()
		carregar()
		limpa()

		
		escreva("Serjão: Bom, acho que este é o fim do seu treinamento, ", personagem,".")
		u.aguarde(3000)
		escreva("\n",personagem,": Sério? Acredita que estou mais forte agora?")
		u.aguarde(3000)
		escreva("\nSerjão: É claro, jovem.")
		u.aguarde(2000)
		escreva("\nSerjão: Mas escute")
		carregar()
		escreva(" Tenho um presente para você.")

		u.aguarde(1000)
		escreva("\n\n ~~~ NOVO ITEM ADICIONADO - Scratch Sword ~~~")
		u.aguarde(1000)
		escreva("\n\no()xxxx[{::::::::::::::::::::::::::::::::::>")
		escreva(3000)

		arma = "Scratch Sword"

		escreva("\n\n", personagem,": Nossa, o que é isso Serjão?")
		u.aguarde(3000)
		escreva("\nSerjão: Isso é uma relíquia, jovem. Dos bons tempos de Scrath nessa terra.")
		u.aguarde(4000)
		escreva("\nSerjão: Você poderá usá-la 3 vezes durante a batalha, seu dano será maior.")
		u.aguarde(4000)
		escreva("\nSerjão: Isso é tudo. Agora resta apenas desejar boa sorte em sua missão. Vá e derrote Jeffinho, jovem.\n")
		enter()
	}
	funcao carregar()
	{
		para(inteiro i=0; i < 3; i++){
			escreva(".")
			u.aguarde(500)
		} 
		u.aguarde(1000)
	}
	funcao jeffinho()
	{
		inteiro resposta

		limpa()
		carregar()
		limpa()

		escreva("Você e Henrica partem em direção ao castelo de Jeffinho.")
		u.aguarde(3000)
		limpa()
		carregar()
		limpa()

		escreva("Vocês finalmente chegaram.\n\n")
		u.aguarde(1000)
		escreva("       /\\         /\\                    .           /\\ \n")
		escreva("      /  \\       /  \\                   |@>        /  \\ \n")
		escreva("     /    \\     / .  \\                  |         /    \\ \n")
		escreva("    /      \\   /  |@> \\       /\\       / \\       /      \\ \n")
		escreva("   /     /\\ \\ /   |    \\     /  \\     /   \\     /        \\ \n")
		escreva("  /     /  \\ /  _ | _   \\   /    \\    | O |    /          _   _   _\n")
		escreva(" /     /    \\  |_|_|_|   \\ /      \\   |___|   /          | |_| |_| |\n")
		escreva("/     /      \\  | O |     /        \\  | |_|  /      /\\   |         |\n")
		escreva("    _   _   _ \\ |___|    /          \\ |__|| /      /  \\  |  O   O  |\n")
		escreva("   | |_| |_| |  | |_|   /             | |_|       /    \\ |   __ _  |\n")
		escreva("   |         |  |__||  /              |_| |      /       |     |   |\n")
		escreva("   | O  O  O |  | |_| /               |__ |     /        | O  O  O |\n")
		escreva("   |  _      |  _   _   _        ______   |   _   _   _  |  _      |\n")
		escreva("   | |__|_ | |_| |_| |_| |______|      |_____| |_| |_| |_| |__|_ |_|\n")
		escreva("   |  |   _| |        _  |  | _|  ____     _||        _  |  |    | |\n")
		escreva("   |   _| _  ||_|   _|_  | _|_   |||||| |_| _||_|   _|_  |   _| _| |\n")
		escreva("   |  __|  |_|  |_       | | |__ |++++|   |_||  |_      ||  __|  |_|\n")
		escreva("   |_________|___________|-------------------|___________|_________|\n")
		escreva("                                 /_/_/ \n")
		escreva("                                /_/_/ \n\n")

		u.aguarde(4000)
		escreva(personagem, ": É gigante")
		carregar()
		u.aguarde(2000)
		escreva("\nHenrica Murakami: Não se preocupe, apesar do tamanho, ele vive sozinho lá dentro.")
		u.aguarde(3000)
		escreva("\nHenrica Murakami: Antes de entrar, queria te dar isto.\n")
		u.aguarde(3000)
		
		escreva("\n ~~~ NOVO ITEM ADICIONADO - Pendrive de Restauração ~~~ \n\n")
		enter()
		
		u.aguarde(1000)
		escreva(personagem,": Um pendrive? Isso recupera HP?")
		u.aguarde(3000)
		escreva("\nHenrica Murakami: Exatamente, mas é apenas 1. Use com sabedoria.")
		u.aguarde(3000)
		escreva("\nHenrica Murakami: Agora você precisa entrar, ",personagem,".\n")
		u.aguarde(1000)
		escreva("    [1] Ué você não vem junto???     [2] Claro, Bela Donzela, espere aqui em segurança.  \nDigite aqui: ")
		leia(resposta)

		enquanto(resposta != 1 e resposta != 2){
			escreva("\nInforme uma opção válida: ")
			leia(resposta)
		}
		se(resposta == 1){
			escreva("\nHenrica Murakami: Não, eu sou uma dama, esse é o seu papel.")
			u.aguarde(3000)
		}
		se(resposta == 2){
			escreva("\nHenrica Murakami gostou disso.")
			u.aguarde(3000)
		}

		limpa()
		carregar()
		limpa()
		
		escreva("Você entrou no castelo")
		carregar()
		u.aguarde(2000)
		escreva("\nVocê avistou Jeffinho.")
		u.aguarde(3000)
		
		limpa()
		carregar()
		limpa()
		
		escreva(personagem,": Você deve ser o Jeffinho, certo?")
		u.aguarde(3000)
		escreva("\nJeffinho: O próprio, prazer.")
		u.aguarde(3000)
		escreva("\n", personagem,": Bom, já sabe que não estou aqui para conversa, não é?")
		u.aguarde(5000)
		escreva("\nJeffinho: Claro, e nem deveria. Você não conseguiria entender minha ambição.")
		u.aguarde(5000)
		escreva("\n", personagem,": Ambição? Impor um império de Javascript ao mundo é sua ambição?")
		u.aguarde(5000)
		escreva("\nJeffinho: Você conhece apenas o lado ruim de minha criação. Deveria dar uma chance.")
		u.aguarde(5000)
		escreva("\n", personagem,": Agora é tarde demais para voltar atrás.")

		combateJeffinho()
		
	}
	funcao combateJeffinho()
	{
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @DOBRAMENTO-CODIGO = [695];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */