! Programa que le pide dos numeros al usuario e imprime lo que el usuario
! ha ingresado
PROGRAM input
    ! Declaramos las variables x e y de tipo REAL
    REAL :: x, y
    ! Imprimimos un "PROMPT" que pida el valor de los dos numeros
    WRITE (*, *) "Ingrese 2 numeros:"
    ! Leelos los numeros
    READ (*, *) x, y
    ! Imprimimos el valor de cada uno de ellos
    WRITE(*, *) "El valor de y es", y
    WRITE(*, *) "El valor de x es", x
END PROGRAM input
