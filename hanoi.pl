
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
	moverDiscos(discos, 'torre da esquerda', 'torre da direita', 'torre central').

moverDiscos(1, TorreX, TorreY, _) :-
    write('Mova o disco da torre, '),
    write(TorreX),
    write(' para a torre '),
    write(TorreY),
    nl.

moverDiscos(NumeroDeDiscos, TorreX, TorreY, TorreZ) :-
    NumeroDeDiscos > 1,
    Auxiliar is NumeroDeDiscos - 1,
    moverDiscos(Auxiliar, TorreX, TorreZ, TorreY),
    moverDiscos(1, TorreX, TorreY, _),
    moverDiscos(Auxiliar, TorreZ, TorreY, TorreX).

    
regrasDoJogo :- 
	write('Torre de Hanoi'),nl,nl,
	write('Regras do jogo:'),nl,
    write('O objetivo deste jogo, consiste em deslocar todos os discos da primeira haste para a ultima haste.'),nl,
    write('Respeitando as seguintes regras:'),nl,
    write('1 - Deslocar um disco de cada vez, o qual devera ser o do topo de uma das tres hastes.'),nl,
    write('2 - Cada disco nunca podera ser colocado sobre outro de tamanho menor.'),nl,nl .
