SUBROUTINE print_names(names, size)
    INTEGER :: i,size
    CHARACTER(len=10), DIMENSION(size) :: names
    PRINT '(A)', 'Printing inside subroutine'
    DO i = 1,size
       PRINT '(A)', names(i)
    END DO
 END SUBROUTINE print_names