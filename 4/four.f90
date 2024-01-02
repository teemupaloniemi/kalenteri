      PROGRAM FILE
         INTEGER :: i
         CHARACTER(len = 100) :: str1
         OPEN (99, file = "./four.txt", status='old', action='read')
         DO i = 1,3
             READ (99,'(A)') str1
             PRINT '(A)', str1
         END DO
         CLOSE(99)
        STOP
      END
