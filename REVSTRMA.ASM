DATA SEGMENT
STR DB "HI"
COUNT EQU 0H
STR2 DB ?
ASSUME CS:CODE, DS:DATA
CODE SEGMENT
START:
      MOV AX,DATA
      MOV DS, AX
      MOV ES,AX
      MOV SI, OFFSET STR+COUNT-1
      MOV DI, OFFSET STR2
      MOV EL,COUNT
UP: LODS STR1
    CLD
    STOPS STR8
    LOOP UP

    MOV AH,4CH
    INT 21H
    CODE ENDS
    END STARTS
