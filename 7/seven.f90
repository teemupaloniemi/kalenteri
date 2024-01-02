PROGRAM FILE
  INTEGER :: r,c,i,j,l,k,w,q,m(9,10)
  CHARACTER(len=9), DIMENSION(6)    :: words
  CHARACTER(len=1), DIMENSION(6,10) :: boxes

  words = [CHARACTER(len=9) :: 'QUICKSAND', 'MAMMONA', 'MAMMUTTI', 'VESIPULLO', 'AETHER', 'ALGO']

  boxes = RESHAPE(['A','E','G','H','I','L', &
                   'B','C','D','E','K','O', &
                   'F','J','M','N','P','S', &
                   'Q','R','T','U','V','P', &
                   'L','Y','V','A','E','I', &
                   'B','D','F','G','H','M', &
                   'C','K','L','N','O','P', &
                   'Q','S','T','U','V','W', &
                   'L','Z','A','E','I','J', &
                   'B','D','F','K','W','N'], [6,10])

  PRINT '(A)', '', 'Target words are:'
  PRINT '(A)', words

  PRINT '(A)', '', 'The constructor boxes are:'
  DO r = 1,10
      WRITE(*, '(6A1)') (boxes(c,r), c = 1,6) 
  END DO
  PRINT '(A)', ''

  DO k = 1, 6
    PRINT '(A)', '', words(k)
    m = RESHAPE([0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0, & 
    0,0,0,0,0,0,0,0,0], [9,10])
    DO l = 1, 9
      DO i = 1, 10
        DO j = 1, 6
          IF (boxes(j,i) == words(k)(l:l)) THEN
            m(l,i) = 1
          END IF       
        END DO
      END DO
    END DO
    
    DO w = 1, 9
      WRITE(*, '(A, 1X, 10(I1, 1X))') words(k)(w:w), (m(w,q), q = 1, 10)
    END DO
  END DO 
  STOP
END
