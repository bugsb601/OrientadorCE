/*Ocupo tener una funcion oracion*/
oracion(Frase, Tema) -->
    inicializa,
    estructura(Frase, Tema).


estructura(Frase, Tema) --> 
    pronombre, 
    expresion(Frase),
    articuloopcional,
    tema(Tema).

estructura(Frase, Tema) -->  
    expresion(Frase),
    articuloopcional,
    tema(Tema).
/*Simbolos no terminales --> [simbolos termianles]*/

/*Pronombres*/
pronombre --> [yo].
pronombre --> [me].
pronombre --> [mi].


/*Articulos*/
articuloopcional --> articulo.
articuloopcional --> [].

articulo --> [la].
articulo --> [el].
articulo --> [los].
articulo --> [las].

articulo --> [un].
articulo --> [una].
articulo --> [unos].
articulo --> [unas].


/*Expresiones que se usan para indicar que algo gusta o no*/
/*positivo*/
expresion(positivo) --> [amo].
expresion(positivo) --> [me, gusta].
expresion(positivo) --> [me, encanta]. 
expresion(positivo) --> [me, fascina]. 
expresion(positivo) --> [me, apasiona]. 
expresion(positivo) --> [me, interesa]. 
expresion(positivo) --> [me, atrae]. 
expresion(positivo) --> [me, agrada]. 
expresion(positivo) --> [disfruto]. 

/*negativo*/
expresion(negativo) --> [odio].
expresion(negativo) --> [no, me, gusta].
expresion(negativo) --> [no, me, encanta]. 
expresion(negativo) --> [no, me, fascina]. 
expresion(negativo) --> [no, me, apasiona]. 
expresion(negativo) --> [no, me, interesa]. 
expresion(negativo) --> [no, me, atrae]. 
expresion(negativo) --> [no, me, agrada]. 
expresion(negativo) --> [me, aburre]. 


/*Los temas y con sus posibles variaciones*/
tema(matematicas) --> [matematicas].
tema(matematicas) --> [numeros].

tema(tecnologia) --> [tecnologia].
tema(tecnologia) --> [computadoras].
tema(tecnologia) --> [software].
tema(tecnologia) --> [hardware].
tema(tecnologia) --> [computacion].

tema(problemas) --> [problemas].
tema(problemas) --> [retos].
tema(problemas) --> [obstaculos].
tema(problemas) --> [conflictos].
tema(problemas) --> [contratiempos].

tema(personas) --> [personas].
tema(personas) --> [gente].
tema(personas) --> [individuos].
tema(personas) --> [sujetos].

tema(escucha) --> [escucha].
tema(escucha) --> [escuchar].
tema(escucha) --> [oir].

tema(idiomas) --> [idiomas].
tema(idiomas) --> [lenguas].
tema(idiomas) --> [lenguajes].
tema(idiomas) --> [ingles].

tema(comunicacion) --> [comunicacion].
tema(comunicacion) --> [conversacion].

tema(organizacion) --> [organizacion].

tema(ensenanza) --> [ensenanza].
tema(ensenanza) --> [ensenar].

tema(paciencia) --> [paciencia].

tema(biologia) --> [biologia].

tema(investigacion) --> [investigacion].
tema(investigacion) --> [investigar].

tema(laboratorio) --> [laboratorio].

tema(creatividad) --> [creatividad].
tema(creatividad) --> [imaginacion].
tema(creatividad) --> [ingenio].

tema(debatir) --> [debatir].
tema(debatir) --> [discutir].
tema(debatir) --> [disputar].

tema(analisis) --> [analisis].
tema(analisis) --> [analizar].
tema(analisis) --> [examinar].

tema(justicia) --> [justicia].
tema(justicia) --> [leyes].

tema(ayudar) --> [ayudar].
tema(ayudar) --> [asistir].
tema(ayudar) --> [colaborar].
tema(ayudar) --> [cooperar].
tema(ayudar) --> [apoyar].
tema(ayudar) --> [socorrer].
tema(ayudar) --> [auxiliar].

tema(fluidos) --> [fluidos].
tema(fluidos) --> [sangre].
tema(fluidos) --> [vomito].

tema(estres) --> [estres].

tema(aislamiento) --> [aislamiento].

tema(liderazgo) --> [liderazgo].
tema(liderazgo) --> [lider].

tema(oficina) --> [oficina].
tema(oficina) --> [sentado].

tema(desorden) --> [desorden].

tema(improvisacion) --> [improvisacion].

tema(empatia) --> [empatia].

tema(manual) --> [manual].

tema(diseno) --> [diseno].


/*Palabras de inicio distintas de una oracion normal*/
inicializa --> [yo].
inicializa --> [pues].
inicializa --> [bueno].
inicializa --> [].

