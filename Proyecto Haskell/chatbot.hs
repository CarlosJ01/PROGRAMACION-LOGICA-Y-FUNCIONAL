-- ChatBot ---
import Data.Char
-- Lista de Fraces --
frases = ["Hola Buenos dias Que onda",
          "Que piensas de Avengers o Vengadores",
          "Cual es tu pelicula favorita de STAR WARS",
          "Que te parece The Mandalorian",
          "Que prefies Netflix o Disney plus",
          "Que piensas de Harry potter",
          "Tu pelicula favorita de Marvel",
          "Te gustan las pelicualas mexicanas",
          "Cual fue la ultima pelicuala que te gusto",
          "Ciencia Ficcion o Fantasia",
          "Que pelicula me recomiendas o recomendarias ver",
          "Que serie me recomiendas ver",
          "Que serie de animacion me recomiendas ver",
          "Cual fue la ultima serie que viste",
          "Que pelicula de animacion me recomiendas",
          "Que opinas de las pelicualas del señor de los anillos",
          "Que opinas de las peliculas de terror",
          "En que pelicua te dormiste",
          "Que pelicula te sorprendio",
          "Que pelicua siempre has querido ver pero no puedes",
          "Que genero te gusta mas",
          "Que pelicula esperas a que salga",
          "Pelicula en la que has llorado o te hiso llorar",
          "Serie que esperas ver proximamente",
          "Cual es la mejor pelicula"]
-- Lista de Respuestas --
respuestas = ["Hola, Como estas ? ..",
              "Avengers es de mis peliculas favoritas de super heroes sobre todo la tercera parte",
              "Mi pelicula favorita es STAR WARS La venganza de los Sith",
              "The mandalorian es una buena serie, Baby Yoda es adorable",
              "Yo prefiero ser pirata y descargar las pelicuas de cualquiera",
              "Harry Potter son buenas peliculas que todos deberian ver",
              "La mejor pelicula de marvel el Avengers Infinity War con su final estoy como :D",
              "No me gustan las pelicualas de mexicanas de comedia pero algunas son muy buenas",
              "La ultima pelicula que vi y que me gusto fue la de Nuevo Orden",
              "Me gusta mas la ciencia ficccion pero no le ago feo a la fantacia",
              "Te recomiendo ver la pelicula de los Hijos del Hombre es una buena pelicula",
              "Te recomiendo ver la serie de Game of Thrones y sus libros",
              "Te recomiendo la serie de Bojack Horseman en Netflix una buena sere de comediay te hace reflexionar",
              "La ultima serie que vi fue Aggretsuko me mori de la risa Ja ja ja",
              "Te recomiendover la pelicual de Your Name, buen final",
              "Son buenas pelicualas que nunca e podido ver seguidas",
              "Las pelicuas de terror no dan miedo solo son de suspenso",
              "Me dormi en la pelicual de Gretel y Hansel no recuerdo la mitad",
              "Godzilla King of Moster me sorprendio con las peleas de mounstros",
              "Siempre e querido ver la primera pelicula de Godzilla pero no se encuentra en buena calidad",
              "Me gusta el genero de ciencia ficcion",
              "Espero que salga la pelicula de Kong vs Godzilla",
              "EL ultimo tren a subusa, llore con el final :'(",
              "La serie que espero es The mandalorian temporada 2",
              "La mejor pelicula no existe cada quien tiene sus gustos, pero si me preguntas seria la saga de STAR WARS"]
-- Lista de StopWords --
stopWords = ["de", "la", "que", "el", "en", "y", "a", "los", "del", "se", "las", "por", "un", "para", "con", "no", "una", "su", "al", "lo", "como", 
            "mas", "pero", "sus", "le", "ya", "o", "este", "si", "porque", "esta", "entre", "cuando", "muy", "sin", "sobre", "tambien", "me", "hasta", 
            "hay", "donde", "quien", "desde", "todo", "nos", "durante", "todos", "uno", "les", "ni", "contra", "otros", "ese", "eso", "ante", "ellos", 
            "e", "esto", "mi", "antes", "algunos", "que", "unos", "yo", "otro", "otras", "otra", "el", "tanto", "esa", "estos", "mucho", "quienes", 
            "nada", "muchos", "cual", "poco", "ella", "estar", "estas", "algunas", "algo", "nosotros", "mi", "mis", "tu", "te", "ti", "tu", "tus", 
            "ellas", "nosotras", "vosotros", "vosotras", "os", "mio", "mia", "mios", "mias", "tuyo", "tuya", "tuyos", "tuyas", "suyo", "suya", "suyos", 
            "suyas", "nuestro", "nuestra", "nuestros", "nuestras", "vuestro", "vuestra", "vuestros", "vuestras", "esos", "esas", "estoy", "estas", 
            "esta", "estamos", "estais", "estan", "este", "estes", "estemos", "esteis", "esten", "estare", "estaras", "estara", "estaremos", "estareis", 
            "estaran", "estaria", "estarias", "estariamos", "estariais", "estarian", "estaba", "estabas", "estabamos", "estabais", "estaban", "estuve", 
            "estuviste", "estuvo", "estuvimos", "estuvisteis", "estuvieron", "estuviera", "estuvieras", "estuvieramos", "estuvierais", "estuvieran", 
            "estuviese", "estuvieses", "estuviesemos", "estuvieseis", "estuviesen", "estando", "estado", "estada", "estados", "estadas", "estad", "he", 
            "has", "ha", "hemos", "habeis", "han", "haya", "hayas", "hayamos", "hayais", "hayan", "habre", "habras", "habra", "habremos", "habreis", 
            "habran", "habria", "habrias", "habriamos", "habriais", "habrian", "habia", "habias", "habiamos", "habiais", "habian", "hube", "hubiste", 
            "hubo", "hubimos", "hubisteis", "hubieron", "hubiera", "hubieras", "hubieramos", "hubierais", "hubieran", "hubiese", "hubieses", "hubiesemos", 
            "hubieseis", "hubiesen", "habiendo", "habido", "habida", "habidos", "habidas", "soy", "eres", "es", "somos", "sois", "son", "sea", "seas", 
            "seamos", "seais", "sean", "sere", "seras", "sera", "seremos", "sereis", "seran", "seria", "serias", "seriamos", "seriais", "serian", "era", 
            "eras", "eramos", "erais", "eran", "fui", "fuiste", "fue", "fuimos", "fuisteis", "fueron", "fuera", "fueras", "fueramos", "fuerais", "fueran", 
            "fuese", "fueses", "fuesemos", "fueseis", "fuesen", "sintiendo", "sentido", "sentida", "sentidos", "sentidas", "siente", "sentid", "tengo", 
            "tienes", "tiene", "tenemos", "teneis", "tienen", "tenga", "tengas", "tengamos", "tengais", "tengan", "tendre", "tendras", "tendra", 
            "tendremos", "tendreis", "tendran", "tendria", "tendrias", "tendriamos", "tendriais", "tendrian", "tenia", "tenias", "teniamos", "teniais", 
            "tenian", "tuve", "tuviste", "tuvo", "tuvimos", "tuvisteis", "tuvieron", "tuviera", "tuvieras", "tuvieramos", "tuvierais", "tuvieran", 
            "tuviese", "tuvieses", "tuviesemos", "tuvieseis", "tuviesen", "teniendo", "tenido", "tenida", "tenidos", "tenidas", "tened"]

-- Metodo principal del Chatbot --
chatbot query = let
                    -- Depuracion de las cadenas --
                    fresesDepuradas = depuracion frases
                    queryDepurada = depurarQuery query

                    -- Partir las cadenas en palabras --
                    palabrasFrases = [ words frase | frase <- fresesDepuradas ]
                    palabrasQuery = words queryDepurada

                    -- Quitar las StopWords --
                    sinSWFrases = [quitarSWFrases frase | frase <- palabrasFrases]
                    sinSWQuery = [palabra | palabra <- palabrasQuery, not (palabra `elem` stopWords)]

                    -- Creacion del diccionario --
                    diccionario = crearDiccionario sinSWQuery sinSWFrases

                    -- Crear Vectores --
                    vectorQuery = crearVector diccionario sinSWQuery
                    vectoresFrases = [ crearVector diccionario frase | frase <- sinSWFrases]

                    -- Calcular similitud de cosenos --
                    similitudes = [ simuitudCosenos vectorQuery vectorFrase  | vectorFrase <- vectoresFrases ]

                    -- Obtner el mayor de la similitudes de coseno --
                    mayorSimilitud = maximum similitudes
                    indiceMayorSimilitud = indiceElemento similitudes mayorSimilitud 0
                in
                    if(mayorSimilitud == 0) then 
                        "No tengo palabras"
                    else
                        if (indiceMayorSimilitud == -1) then 
                            "Ingresa una query" 
                        else 
                            respuestas !! indiceMayorSimilitud
                    
-- Depuracion de la Query y Fraces --
depuracion frases = let
                        -- Convertir a minusculas y quitar caracteres del español --
                        frasesMinusculas = [ depurarCadena frase | frase <- frases ]
                        -- Quitar signos de puntuacion --
                        fresesPuntuacion = [ puntuacionCadena frase | frase <- frasesMinusculas]
                        -- Quitar los no alfanumericos --
                        fresesAlfa = [ alfaNumericosCadena frase | frase <- fresesPuntuacion]
                    in
                        fresesAlfa
depurarQuery query = let
                        queryMinusculas = depurarCadena query
                        queryPuntuacion = puntuacionCadena queryMinusculas
                        queryAlfa = alfaNumericosCadena queryPuntuacion
                    in
                        queryAlfa

-- Hacer minusculas los caracteres de una frese y quitar los caracteres del español --
depurarCadena cad = [ quitarCaracteresEsp  (toLower car) | car <- cad]

-- Quitar caracteres del español --
quitarCaracteresEsp car 
                | ord car == 225 = 'a' -- Á á --
                | ord car == 233 = 'e' -- É é --
                | ord car == 237 = 'i' -- Í í --
                | ord car == 243 = 'o' -- Ó ó --
                | ord car == 250 = 'u' -- Ú ú --
                | ord car == 252 = 'u' -- Ü ü --
                | ord car == 241 = 'n' -- Ñ ñ --
                | ord car == 147 = '?' -- “ --
                | ord car == 148 = '?' -- ” --
                | ord car == 172 = '?' -- ¬ --
                | ord car == 191 = '?' -- ¿ --
                | ord car == 161 = '?' -- ¡ --
                | ord car == 176 = '?' -- ° --
                | ord car == 180 = '?' -- ´ --
                | otherwise = car

-- Quitar signos de puntuacion de una cadena --
puntuacionCadena cad = [ car | car <- cad, not (isPunctuation car)]

-- Quitar los caracteres no alfanumericos --
alfaNumericosCadena cad = [ car | car <- cad, isAlpha car || car == ' ']

-- Quitar las stop words de las frases --
quitarSWFrases frase = [ palabra | palabra <- frase, not (palabra `elem` stopWords)]

-- Creacion del diccionario --
crearDiccionario listaQuery listaFrases =   let
                                                frasesUnidas = unirFrases listaFrases
                                                diccionarioRepetido = listaQuery ++ frasesUnidas
                                                diccionario = quitarRepetidos diccionarioRepetido
                                            in
                                                diccionario

-- Unir frases en una sola lista --
unirFrases [] = []
unirFrases (x:xs) = x ++ (unirFrases xs)

-- Quitar los elementos repetidos del diccionario --
quitarRepetidos [] = []
quitarRepetidos (x:xs) = if (x `elem` xs) then
                           quitarRepetidos xs
                        else
                            x:quitarRepetidos xs

-- Crear un vector --
crearVector diccionario frase = [ contarPalabraFrase frase palabra | palabra <- diccionario] 

-- Contar cuantas veces aparece una palabra del diccionario en una frase --
contarPalabraFrase [] palabra = 0
contarPalabraFrase (x:xs) palabra = if(x == palabra) then
                                        1 + (contarPalabraFrase xs palabra)
                                    else
                                        contarPalabraFrase xs palabra

-- Similitud de cosenos --
simuitudCosenos vector1 vector2 = let
                                    divisor = sumatoriaMultiplicacion vector1 vector2
                                    raizV1 = sqrt (fromIntegral(sumatoriaCuadrados vector1))
                                    raizV2 = sqrt (fromIntegral(sumatoriaCuadrados vector2))
                                    dividendo = raizV1 * raizV2
                                  in
                                    if(dividendo == 0) then
                                        0.0
                                    else
                                        fromIntegral divisor / dividendo

-- Sumatoria de la multiclicacion de A*B
sumatoriaMultiplicacion [] [] = 0
sumatoriaMultiplicacion (x:xs) (y:ys) =  (x*y) + (sumatoriaMultiplicacion xs ys)

-- Sumatoria de los cuadrados de un vector --
sumatoriaCuadrados [] = 0
sumatoriaCuadrados (x:xs) = (x*x) + (sumatoriaCuadrados xs)

-- Obtener el indice de un elemento --
indiceElemento [] elemento indice = (-1)
indiceElemento (x:xs) elemento indice = if (x == elemento) then indice
                                        else indiceElemento xs elemento (indice+1)