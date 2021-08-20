.model small
.stack 100h
.data
     ;khai bao du lieu
     Ky_tu DB ?
.code
MAIN PROC
    ;khoi tao dia chi doan du lieu
    MOV AX,@DATA
    MOV DS,AX
    ;doc ky tu tu ban phim
    MOV AH,1
    INT 21h
    ;luu ky tu do vao bien ki_tu
    MOV Ky_tu,AL
    ;tro ve DOS
    MOV AH,4Ch
    INT 21h
   MAIN ENDP
          END MAIN