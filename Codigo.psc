Proceso AhorcadoSimple
    Definir palabraSecreta, letra, palabraAdivinada Como Caracter
    Definir i, intentos, letrasAdivinadas Como Entero
    palabraSecreta <- "GATO"
    palabraAdivinada <- "____"
    intentos <- 0
    letrasAdivinadas <- 0

    Escribir "¡Bienvenido al juego del Ahorcado!"
    Mientras palabraAdivinada <> palabraSecreta Y intentos < 6 Hacer
        Escribir "Palabra: ", palabraAdivinada
        Escribir "Ingresa una letra:"
        Leer letra
        letra <- Mayusculas(letra)
        encontrado <- Falso

        Para i <- 1 Hasta Longitud(palabraSecreta) Con Paso 1 Hacer
            Si SubCadena(palabraSecreta, i, i) = letra Y SubCadena(palabraAdivinada, i, i) = "_" Entonces
                palabraAdivinada <- SubCadena(palabraAdivinada, 1, i - 1) + letra + SubCadena(palabraAdivinada, i + 1, Longitud(palabraAdivinada))
                encontrado <- Verdadero
            FinSi
        FinPara

        Si encontrado = Falso Entonces
            intentos <- intentos + 1
            Escribir "¡Incorrecto! Intentos usados: ", intentos
        SiNo
            Escribir "¡Bien! La letra está en la palabra."
        FinSi
    FinMientras

    Si palabraAdivinada = palabraSecreta Entonces
        Escribir "¡Felicidades! Adivinaste la palabra: ", palabraSecreta
    Sino
        Escribir "¡Perdiste! La palabra era: ", palabraSecreta
    FinSi
FinProceso
