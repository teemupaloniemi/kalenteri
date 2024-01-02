      PROGRAM FILE
         INTEGER :: status, i
         CHARACTER(len = 10) :: names(500)
         CHARACTER(len=10) :: org_names(500)
         OPEN(99, file="./six.txt", status='old', action='read', iostat=status)
         READ(99, *, iostat=status) (names(i), i=1, 500)
         DO i = 1, SIZE(names)
            org_names(i) = names(i)
         END DO
         IF (status /= 0) THEN
            PRINT '(A)', 'Error reading names from the file.'
            CLOSE(99)
            STOP
         END IF
         CALL sort_names(names, 500)
         CALL print_names(names, 500)
         CLOSE(99)
        STOP
      END PROGRAM FILE

      
