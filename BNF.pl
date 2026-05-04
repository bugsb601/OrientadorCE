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
expresion(positivo) --> [adoro].
expresion(positivo) --> [me, gusta].
expresion(positivo) --> [me, gustan].           
expresion(positivo) --> [me, encanta].
expresion(positivo) --> [me, encantan].
expresion(positivo) --> [me, fascina].
expresion(positivo) --> [me, apasiona].
expresion(positivo) --> [me, interesa].
expresion(positivo) --> [me, interesan].
expresion(positivo) --> [me, atrae].
expresion(positivo) --> [me, agrada].
expresion(positivo) --> [me, agradan].
expresion(positivo) --> [disfruto].
expresion(positivo) --> [disfruto, de].
expresion(positivo) --> [disfruto, mucho, de].
expresion(positivo) --> [me, entusiasma].
expresion(positivo) --> [me, llama, la, atencion].
expresion(positivo) --> [soy, muy, habil, con].
expresion(positivo) --> [soy, bueno, en].
expresion(positivo) --> [me, intereso, por].
expresion(positivo) --> [tengo, interes, por].
expresion(positivo) --> [prefiero].            
expresion(positivo) --> [me, gusta, mucho].
expresion(positivo) --> [me, encanta, mucho].
expresion(positivo) --> [me, intereza].        
 
expresion(negativo) --> [odio].
expresion(negativo) --> [detesto].
expresion(negativo) --> [no, me, gusta].
expresion(negativo) --> [no, me, gustan].
expresion(negativo) --> [no, me, encanta].
expresion(negativo) --> [no, me, encantan].
expresion(negativo) --> [no, me, fascina].
expresion(negativo) --> [no, me, apasiona].
expresion(negativo) --> [no, me, interesa].
expresion(negativo) --> [no, me, interesan].
expresion(negativo) --> [no, me, atrae].
expresion(negativo) --> [no, me, agrada].
expresion(negativo) --> [me, aburre].
expresion(negativo) --> [me, aburren].
expresion(negativo) --> [me, desagrada].
expresion(negativo) --> [no, disfruto].
expresion(negativo) --> [no, podria].
expresion(negativo) --> [jamas, podria].
expresion(negativo) --> [no, me, gusta, mucho].
expresion(negativo) --> [no, me, gustan, mucho].
 

/*Los temas y con sus posibles variaciones*/
tema(matematicas) --> [matematicas].
tema(matematicas) --> [numeros].
tema(matematicas) --> [calculo].
tema(matematicas) --> [calculos].

tema(tecnologia) --> [tecnologia].
tema(tecnologia) --> [computadoras].
tema(tecnologia) --> [software].
tema(tecnologia) --> [hardware].
tema(tecnologia) --> [computacion].
tema(tecnologia) --> [programacion].

tema(problemas) --> [problemas].
tema(problemas) --> [retos].
tema(problemas) --> [obstaculos].
tema(problemas) --> [conflictos].
tema(problemas) --> [contratiempos].
tema(problemas) --> [desafios].

tema(personas) --> [personas].
tema(personas) --> [gente].
tema(personas) --> [individuos].
tema(personas) --> [sujetos].
tema(personas) --> [equipo].
tema(personas) --> [otros].

tema(escucha) --> [escucha].
tema(escucha) --> [escuchar].
tema(escucha) --> [oir].
tema(escucha) --> [hablar].

tema(idiomas) --> [idiomas].
tema(idiomas) --> [lenguas].
tema(idiomas) --> [lenguajes].
tema(idiomas) --> [ingles].

tema(comunicacion) --> [comunicacion].
tema(comunicacion) --> [conversacion].
tema(comunicacion) --> [expresion].

tema(organizacion) --> [organizacion].
tema(organizacion) --> [organizar].

tema(ensenanza) --> [ensenanza].
tema(ensenanza) --> [ensenar].
tema(ensenanza) --> [docencia].
tema(ensenanza) --> [clases].

tema(paciencia) --> [paciencia].
tema(paciencia) --> [calma].
tema(paciencia) --> [tolerancia].

tema(biologia) --> [biologia].
tema(biologia) --> [ciencias].
tema(biologia) --> [naturaleza].

tema(investigacion) --> [investigacion].
tema(investigacion) --> [investigar].
tema(investigacion) --> [explorar].
tema(investigacion) --> [indagar].

tema(laboratorio) --> [laboratorio].
tema(laboratorio) --> [laboratorios].
tema(laboratorio) --> [quimica].
tema(laboratorio) --> [experimentos].

tema(creatividad) --> [creatividad].
tema(creatividad) --> [imaginacion].
tema(creatividad) --> [ingenio].
tema(creatividad) --> [arte].

tema(debatir) --> [debatir].
tema(debatir) --> [discutir].
tema(debatir) --> [disputar].
tema(debatir) --> [argumentar].
tema(debatir) --> [debate].

tema(analisis) --> [analisis].
tema(analisis) --> [analizar].
tema(analisis) --> [examinar].
tema(analisis) --> [evaluar].

tema(justicia) --> [justicia].
tema(justicia) --> [leyes].
tema(justicia) --> [derecho].
tema(justicia) --> [legal].
tema(justicia) --> [ley].

tema(ayudar) --> [ayudar].
tema(ayudar) --> [asistir].
tema(ayudar) --> [colaborar].
tema(ayudar) --> [cooperar].
tema(ayudar) --> [apoyar].
tema(ayudar) --> [socorrer].
tema(ayudar) --> [auxiliar].
tema(ayudar) --> [servir].

tema(fluidos) --> [fluidos].
tema(fluidos) --> [sangre].
tema(fluidos) --> [vomito].
tema(fluidos) --> [heridas].

tema(estres) --> [estres].
tema(estres) --> [presion].
tema(estres) --> [ansiedad].

tema(aislamiento) --> [aislamiento].
tema(aislamiento) --> [soledad].
tema(aislamiento) --> [aislado].

tema(liderazgo) --> [liderazgo].
tema(liderazgo) --> [lider].
tema(liderazgo) --> [dirigir].
tema(liderazgo) --> [mandar].
tema(liderazgo) --> [liderar].

tema(oficina) --> [oficina].
tema(oficina) --> [sentado].
tema(oficina) --> [escritorio].

tema(desorden) --> [desorden].
tema(desorden) --> [caos].

tema(improvisacion) --> [improvisacion].
tema(improvisacion) --> [improvisar].
tema(improvisacion) --> [espontaneo].

tema(empatia) --> [empatia].
tema(empatia) --> [comprender].
tema(empatia) --> [sentir].

tema(manual) --> [manual].
tema(manual) --> [fisico].
tema(manual) --> [manos].
tema(manual) --> [artesanal].

tema(diseno) --> [diseno].
tema(diseno) --> [disenar].
tema(diseno) --> [grafico].
tema(diseno) --> [visual].


/*Palabras de inicio distintas de una oracion normal*/
inicializa --> [yo].
inicializa --> [pues].
inicializa --> [bueno].
inicializa --> [].

/**/