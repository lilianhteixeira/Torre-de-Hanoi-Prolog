hanoiIA(NumeroDeDiscos) :- moverDiscos(NumeroDeDiscos, 'torre da esquerda', 'torre da direita', 'torre central').

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
