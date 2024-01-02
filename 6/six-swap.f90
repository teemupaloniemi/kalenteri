SUBROUTINE swap_names(names, size, i, j)
    INTEGER :: i, j, size
    CHARACTER(len=10), DIMENSION(size) :: names
    CHARACTER(len=10) :: temp

    IF (i >= 1 .AND. i <= size .AND. j >= 1 .AND. j <= size .AND. i /= j) THEN
        temp = names(i)
        names(i) = names(j)
        names(j) = temp
    ELSE
        PRINT '(A)', 'Invalid indices for swapping.'
    END IF
END SUBROUTINE swap_names