      PROGRAM KARKAUS
         INTEGER          :: x
         DO x = 1901, 2023
            IF (modulo(x,4)==0) THEN
               PRINT '(I0)', x
            END IF
         END DO
        STOP
      END

