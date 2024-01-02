      PROGRAM HELLO
         INTEGER          :: x
         INTEGER          :: y
         DO x = 0, 1000
            IF (x*x < 1000) THEN
               y = x*x
               IF (y < 10) THEN
                   PRINT "(1i1)", y
               ELSE IF (y < 100) THEN
                   PRINT "(1i2)", y
               ELSE
                   PRINT "(1i3)", y
               END IF
            END IF
         END DO
        STOP
      END
