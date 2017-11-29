C     ------------------------------------------------------------------
C     El algorimo TPK en Fortran 77
C
C     - Notas:
C     1. El formato fijo de FORTRAN se empleo hasta antes de
C        FORTRAN 90 y seguia las siguientes reglas
C        a- Maximo permite 72 caracteres por linea
C        b. El comentario se marca colocando la letra "c en el primer"
C           caracter
C           c --- Comentario
C
C        c. Las instrucciones inician en el caracter numero 7
C           c23456789
C                 <Instruccion>
C
C         d. Las instrucciones muy largas (mas de 72 caracteres)se
C            continuan en la linea siguiente colocando un caracter
C            no alfanumerico (comunmente se utilizan "*") y "&"
C            c23456789
C                  <Instruccion muy larga>
C                 &<Continuacion de instruccion muy larga>
C
C         e. Los primeros 5 caracteres se emplean para etiqueta de una
C            linea emplenando numeros mayores a 0 y menores que 99999
C            c23456789
C            75289 <Instruccion muy larga>
C                 &<Continuacion de instruccion muy larga>
C
C         f. Las variables deben de ser nobradas empleando una
C             combinacion de maximo 6 caracteres siendo el primer
C             caracter una letra
C             c23456789
C                12 REAL*8 FUNCTION Fib
C     ------------------------------------------------------------------
      PROGRAM TPK
      REAL A(0:10)
      READ (5,*) A
      DO 10 I=10,0,-1
      Y=FUN(A(I))
      IF(Y .LT. 400) THEN
      WRITE (6, *) I, Y
      ELSE
 5    FORMAT(I10, ' TOO LARGE')
      WRITE (6,5)
      ENDIF
 10   CONTINUE
      END

      REAL FUNCTION FUN(T)
      REAL T
      FUN = SQRT(ABS(T)) + 5.0*T**3
      END
