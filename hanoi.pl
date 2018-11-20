
menuDoJogo:-
    write('1 - Jogar torre de hanoi.'),nl,
    write('2 - Jogar torre de hanoi IA.'),nl,
    write('3 - Regras do jogo.'),nl,
    write('4 - Para sair.'),nl,
    write('Escolha uma opcao: '),nl,
    read(Opcao),
    executar(Opcao).
    
executar(Opcao):- Opcao == 1, menuDoJogo;
				  Opcao == 2, hanoiIA, menuDoJogo;
				  Opcao == 3, regrasDoJogo, menuDoJogo;
				  Opcao == 4, true.
				  %Opcao == _, write("Opçao invalida."), menuDoJogo.

hanoiIA :- 

	write('Qual o número de discos:'),nl,
	read(NumeroDeDiscos),
	write(NumeroDeDiscos),
	discos = NumeroDeDiscos,
	moverDisco(discos, esquerda, direita, central).

moverDisco(1, torreX, torreY, _) :-
    write('Mova o disco da torre '),
    write(torreX),
    write(' , para a torre '),
    write(torreY),
    nl.

moverDisco(NumeroDeDiscos, torreX, torreY, torreZ) :-
    NumeroDeDiscos > 1,
    Auxiliar is NumeroDeDiscos - 1,
    move(Auxiliar, torreX, torreZ, torreY),
    move(1, torreX, torreY, _),
    move(Auxiliar, torreZ, torreY, torreX).
    
regrasDoJogo :- 
	write('Torre de Hanoi'),nl,nl,
	write('Regras do jogo:'),nl,
    write('O objetivo deste jogo, consiste em deslocar todos os discos da primeira haste para a ultima haste.'),nl,
    write('Respeitando as seguintes regras:'),nl,
    write('1 - Deslocar um disco de cada vez, o qual devera ser o do topo de uma das tres hastes.'),nl,
    write('2 - Cada disco nunca podera ser colocado sobre outro de tamanho menor.'),nl,nl .
