%Como rodar o programa: 1-Instala swipl 2-Abre o swipl no terminal e executa o progrma com [akinator]. 3-Digita "jogar"

jogar:-
    retractall(afirmacao(_)),
    adivinha(Influencer),
    write('O influencer que você está pensando é: '), write(Influencer), nl.

jogar:-
    write('Desculpa, não consegui adivinhar. É alguém muito nichado'), nl.

adivinha(filipe_deschamps):-
    eh(fala_sobre_ia),
    eh(da_dicas_de_programacao),
    eh(fala_sobre_curiosidades),
    eh(produz_conteudo_tecnico).

adivinha(fabio_akita):-
    eh(produz_videos_longos),
    eh(fala_sobre_ancestralidade_tech),
    eh(fala_sobre_ia),
    eh(produz_conteudo_tecnico).

adivinha(codigo_fonte_tv):-
    eh(fala_sobre_noticias),
    eh(fala_sobre_curiosidades),
    eh(fala_sobre_ia),
    eh(sao_um_casal).

adivinha(gustavo_guanabara):-
    eh(ensina_muito_bem),
    eh(produz_conteudo_tecnico),
    eh(tem_relacao_com_gafanhotos),
    eh(produz_videos_longos).

adivinha(karol_attekita):-
    eh(da_dicas_de_carreira),
    eh(e_uma_mulher),
    eh(fala_sobre_ia),
    eh(produz_conteudo_tecnico).

adivinha(mano_deyvin):-
    eh(fala_sobre_curiosidades),
    eh(fala_sobre_noticias),
    eh(usa_uma_touca).

adivinha(lucas_montano):-
    eh(fala_sobre_ia),
    eh(fala_sobre_noticias),
    eh(tem_um_topetinho).

eh(Caracteristica):-
    (afirmacao(Caracteristica)->true;
    (write('O seu influencer '), write(Caracteristica), write('? (s/n): '), read(Resposta), (Resposta== s ->assert(afirmacao(Caracteristica));
    assert(negacao(Caracteristica)), fail))).