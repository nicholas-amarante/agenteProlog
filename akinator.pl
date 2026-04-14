jogar:-
    retractall(afirmacao(_)),
    adivinha(Influencer),
    write('O influencer que você está pensando é: '), write(Influencer), nl.

jogar:-
    write('Desculpa, não consegui adivinhar. É alguém muito nichado'), nl.

adivinha(filipe_deschamps):-
    eh(noticias_diarias),
    eh(fala_sobre_ia).

adivinha(fabio_akita):-
    eh(videos_longos),
    eh(fala_sobre_ancestralidade_tech),
    eh(fala_sobre_ia),
    eh(videos_tecnicos).

eh(Caracteristica):-
    (afirmacao(Caracteristica)->true;
    (write('O seu influencer '), write(Caracteristica), write('? (s/n): '), read(Resposta), (Resposta== s ->assert(afirmacao(Caracteristica));
    assert(negacao(Caracteristica)), fail))).