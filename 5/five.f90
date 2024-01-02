      PROGRAM FIBO
         INTEGER          :: i,j,x,y,z,acc
         x = 1
         y = 1
         acc = 0
         PRINT '(I0)', 0
         PRINT '(I0)', 1
         PRINT '(I0)', 1
         DO i = 2,200
             IF (acc == 0) THEN
                 z = x+y
                 x = y 
                 y = z
                 DO j = 1, 200
                     IF (j*j == z) THEN
                         acc =1  
                     END IF
                 END DO
                 PRINT '(I0)', z
             END IF        
         END DO
        STOP
      END

