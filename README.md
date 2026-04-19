<h1>Akinator de Influencer Tech - Prolog</h1>
<p>Sistema especialista desenvolvido em prolog que tenta adivinhar qual influencer de tecnologia o usuário está pensando, por meio de perguntas sobre caracteristicas do criador de conteúdo</p>

<h2>Descrição do problema</h2>
<p>
  O agente resolve um problema de **identificação por eliminação**: dado um conjunto de influenciadores conhecidos, 
  o sistema faz perguntas sobre características do influenciador pensado pelo usuário e, com base nas respostas, 
  tenta identificá-lo. É uma implementação do conceito clássico do jogo Akinator, aplicado ao nicho de criadores de conteúdo de tecnologia.
</p>

<h2>Fluxo de funcionamento</h2>

```
jogar
  │
  ├─ Limpa memória (retractall)
  │
  └─ adivinha(Influencer)
       │
       └─ eh(Caracteristica)
            │
            ├─ Já respondido? → usa memória (afirmacao/negacao)
            │
            └─ Não respondido? → pergunta ao usuário
                   │
                   ├─ s → assert(afirmacao(...)) → continua
                   └─ n → assert(negacao(...))  → falha (backtrack)
```

<h2>Memória da sessão</h2>
<p>
  O agente utiliza fatos dinâmicos 
  (assert/retract) para memorizar as respostas durante uma partida, 
  evitando repetir perguntas já respondidas. Ao iniciar uma nova partida, 
  toda a memória é apagada com retractall.
</p>

<h2>Base de conhecimento</h2>

    | Influenciador      | Características principais                                              |
    |--------------------|-------------------------------------------------------------------------|
    | Filipe Deschamps   | IA, dicas de programação, curiosidades, conteúdo técnico               |
    | Fábio Akita        | Vídeos longos, ancestralidade tech, IA, conteúdo técnico               |
    | Código Fonte TV    | Notícias, curiosidades, IA, são um casal                               |
    | Gustavo Guanabara  | Ensina muito bem, conteúdo técnico, gafanhotos, vídeos longos          |
    | Karol Attekita     | Dicas de carreira, mulher, IA, conteúdo técnico                        |
    | Mano Deyvin        | Curiosidades, notícias, usa uma touca                                  |
    | Lucas Montano      | IA, notícias, tem um topetinho                                         |

<h3>Predicados Principais</h3>

    | Predicado           | Função                                                                 |
    |---------------------|------------------------------------------------------------------------|
    | jogar/0             | Ponto de entrada do jogo; reinicia o estado e aciona a adivinhação    |
    | adivinha/1          | Tenta unificar o influenciador com base nas características afirmadas  |
    | eh/1                | Verifica ou pergunta ao usuário sobre uma característica               |
    | afirmacao/1         | Fato dinâmico que armazena respostas positivas do usuário             |
    | negacao/1           | Fato dinâmico que armazena respostas negativas do usuário             |

  
