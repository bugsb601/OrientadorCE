/* Logic.pl */

/* Consultar las bases de datos necesarias */
:- consult('BD.pl').
:- consult('BNF.pl').

/* Dinamicamente almacenar preferencias de los usuarios */
:- dynamic gusta/1.
:- dynamic nogusta/1.


preferencia(positivo, Tema) :-
    (gusta(Tema) -> true ; assertz(gusta(Tema))).

preferencia(negativo, Tema) :-
    (nogusta(Tema) -> true ; assertz(nogusta(Tema))).

limpiap :-
    retractall(gusta(_)),
    retractall(nogusta(_)).

/*Sistema Experto*/
cumple(Carrera) :-
    profesion(Carrera, Fortalezas, Antagonias),
    forall(member(X, Fortalezas), gusta(X)),
    \+ (member(Y, Antagonias), gusta(Y)),
    \+ (member(Z, Fortalezas), nogusta(Z)).

recomendar(Carrera) :-
    cumple(Carrera), !.
recomendar(ninguna).


texto_a_tokens(Texto, Tokens) :-
    string_lower(Texto, Lower),
    split_string(Lower, " \t", ".,!?;:()", Partes),
    exclude(=(""), Partes, Partes2),
    maplist(atom_string, Tokens, Partes2).

parsear(Tokens, Sentimiento, Tema) :-
    phrase(oracion(Sentimiento, Tema), Tokens, _), !.


respuesta_no(Tokens) :-
    member(N, [nunca, jamas, negativo, tampoco,
               nada, imposible, dificilmente, ninguno, ninguna]),
    member(N, Tokens), !.

respuesta_si(Tokens) :-
    \+ respuesta_no(Tokens),
    member(P, [claro, correcto, exacto, afirmativo,
               definitivamente, efectivamente, mucho, bastante,
               obvio, seguro, ok]),
    member(P, Tokens), !.

/*Preguntas guiadas tipo Akinator*/
pregunta_guiada(matematicas, "Te gustan las matematicas o los numeros").
pregunta_guiada(tecnologia, "Te interesa la tecnologia o las computadoras").
pregunta_guiada(personas, "Disfrutas trabajar con personas o en equipo").
pregunta_guiada(problemas, "Te gusta resolver problemas o retos complejos").
pregunta_guiada(escucha, "Cuando conversas, prefieres escuchar o hablar").
pregunta_guiada(empatia, "Eres empatico, comprendes facilmente los sentimientos ajenos").
pregunta_guiada(biologia, "Te atrae la biologia o las ciencias naturales").
pregunta_guiada(investigacion, "Disfrutas investigar o explorar temas a fondo").
pregunta_guiada(laboratorio, "Te interesa trabajar en laboratorio o con experimentos").
pregunta_guiada(creatividad, "Eres creativo, te gusta el diseno o el arte").
pregunta_guiada(comunicacion, "Te gusta comunicarte o expresarte con facilidad").
pregunta_guiada(idiomas, "Te gustan los idiomas o las lenguas extranjeras").
pregunta_guiada(organizacion, "Te consideras organizado y planificador").
pregunta_guiada(liderazgo, "Te gusta liderar o tomar decisiones de mando").
pregunta_guiada(debatir, "Disfrutas debatir, argumentar o discutir ideas").
pregunta_guiada(analisis, "Te gusta analizar situaciones o datos con detalle").
pregunta_guiada(justicia, "Te interesa la justicia, las leyes o lo legal").
pregunta_guiada(ayudar, "Te motiva ayudar a los demas").
pregunta_guiada(ensenanza, "Te gusta ensenar o transmitir conocimiento a otros").
pregunta_guiada(paciencia, "Eres paciente y tolerante con los demas").

tema_cubierto(Tema) :- gusta(Tema).
tema_cubierto(Tema) :- nogusta(Tema).

siguiente_pregunta(Tema, Texto) :-
    pregunta_guiada(Tema, Texto),
    \+ tema_cubierto(Tema).


iniciar :-
    limpiap,
    writeln("OrientadorCE: Hola, se que la tarea de buscar una carrera es dificil."),
    writeln("              Estamos aqui para ayudarte! Dime que te gusta."),
    nl,
    bucle_libre.

bucle_libre :-
    write("Usuario: "),
    read_line_to_string(user_input, LineStr),
    string_to_atom(LineStr, Linea),
    procesar_libre(Linea).

procesar_libre(salir) :-
    writeln("OrientadorCE: Hasta luego! Espero haberte ayudado.").

procesar_libre(Linea) :-
    Linea \= salir,
    texto_a_tokens(Linea, Tokens),
    (   parsear(Tokens, Sentimiento, Tema)
    ->  preferencia(Sentimiento, Tema),
        responder_acuse(Sentimiento)
    ;   writeln("OrientadorCE: Interesante, cuentame mas sobre tus gustos.")
    ),
    continuar_o_recomendar.

responder_acuse(positivo) :-
    writeln("OrientadorCE: Excelente, tome nota de eso!").
responder_acuse(negativo) :-
    writeln("OrientadorCE: Entendido, lo tendre en cuenta.").

continuar_o_recomendar :-
    recomendar(Carrera),
    (   Carrera \= ninguna
    ->  format("OrientadorCE: Dadas tus preferencias, te recomendaria estudiar ~w.~n", [Carrera])
    ;   (   siguiente_pregunta(Tema, TextoPregunta)
        ->  format("OrientadorCE: ~w~n", [TextoPregunta]),
            bucle_guiado(Tema)
        ;   writeln("OrientadorCE: No encontre una carrera exacta, por favor intenta nuevamente."),
            writeln("              Escribe iniciar. en la consola para reiniciar.")
        )
    ).

bucle_guiado(TemaEsperado) :-
    write("Usuario: "),
    read_line_to_string(user_input, LineStr),
    string_to_atom(LineStr, Linea),
    (   Linea = salir
    ->  writeln("OrientadorCE: Hasta luego!")
    ;   texto_a_tokens(Linea, Tokens),
        (   parsear(Tokens, Sentimiento, _)
        ->  preferencia(Sentimiento, TemaEsperado),
            responder_acuse(Sentimiento),
            continuar_o_recomendar
        ;   respuesta_no(Tokens)
        ->  preferencia(negativo, TemaEsperado),
            responder_acuse(negativo),
            continuar_o_recomendar
        ;   respuesta_si(Tokens)
        ->  preferencia(positivo, TemaEsperado),
            responder_acuse(positivo),
            continuar_o_recomendar
        ;   writeln("OrientadorCE: No entendi esa respuesta, me puedes repetir?"),
            bucle_guiado(TemaEsperado)
        )
    ).
/*2*/