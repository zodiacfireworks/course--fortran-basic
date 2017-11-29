      PROGRAM TPK
C     THE TPK ALGORITHM
C     FORTRAN 77 STYLE
      REAL A(0:10)
      READ (5,*) A
      DO 10 I = 10, 0, -1
        Y = FUN(A(I))
        IF ( Y .LT. 400) THEN
            WRITE(6,*) I,Y
        ELSE
  5       FORMAT(I10,' TOO LARGE')
          WRITE (6,5) I
        ENDIF
 10     CONTINUE
      END

      REAL FUNCTION FUN(T)
      REAL T
      FUN = SQRT(ABS(T)) + 5.0*T**3
      END
