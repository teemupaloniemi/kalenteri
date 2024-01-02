SUBROUTINE sort_names(names, size)
    INTEGER :: i,j,size
    CHARACTER(len=10), DIMENSION(size) :: names
    PRINT '(A)', 'Sorting inside subroutine'
    DO j = 1, 500
        DO i = 1,size-1
            IF (names(i) > names(i+1)) THEN
                CALL swap_names(names, size, i, i+1)
            END IF 
        END DO 
    END DO 
END SUBROUTINE sort_names