%Como rodar o programa: 1-Instala swipl 2-Abre o swipl no terminal e executa o progrma com [akinator]. 

jogar:-
    retractall(afirmacao(_)),
    adivinha(Influencer),
    write('O influencer que você está pensando é: '), write(Influencer), nl.

jogar:-
    write('Desculpa, não consegui adivinhar. É alguém muito nichado'), nl.

adivinha(filipe_deschamps):-
    eh(fala sobre noticias diarias),
    eh(fala sobre ia).

adivinha(fabio_akita):-
    eh(produz videos longos),
    eh(fala sobre ancestralidade tech),
    eh(fala sobre ia),
    eh(produz videos tecnicos).

adivinha(codigo fonte tv):-
    eh(fala sobre noticias diarias),
    eh(fala sobre curiosidades),
    eh(fala sobre ia).

adivinha(gustavo guanabara):-
    eh(ensina muito bem),
    eh(produz videos tecnicos),
    eh(tem relacao com gafanhotos).

adivinha(karol attekita):-
    eh(ensina muito bem),
    eh(fala sobre curiosidades),
    eh(fala sobre ia),
    eh(produz videos tecnicos).



eh(Caracteristica):-
    (afirmacao(Caracteristica)->true;
    (write('O seu influencer '), write(Caracteristica), write('? (s/n): '), read(Resposta), (Resposta== s ->assert(afirmacao(Caracteristica));
    assert(negacao(Caracteristica)), fail))).