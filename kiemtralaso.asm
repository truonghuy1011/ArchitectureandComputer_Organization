.model small 
.stack 100h 
.data 
    PROMPT  DB  'Moi nhap so bat ky',13,10,'$'  
    Thong_bao_1 DB   13,10,'La so',13,10,'$'   
    Thong_bao_2 DB   13,10,'Khong phai la so',13,10,'$'     
         
.code 
MAIN    PROC     
    ;Khoi tao dia chi doan du lieu 
    MOV AX,@DATA 
    MOV DS,AX                                 
    ;Hien thong bao  
    MOV AH,9 
    LEA DX,PROMPT 
    INT 21h 
    ;Doc ky tu tu ban phim 
    MOV AH,1 
    INT 21h 
    ;Kiem tra xem ky tu doc duoc co phai la so khong 
    CMP AL,'0' 
    JB  Khong_phai_so 
    CMP AL,'9'     
    JA  Khong_phai_so 
    La_so: 
    MOV AH,9 
    LEA DX,Thong_bao_1 
    INT 21h 
    JMP Tiep_tuc   
    
Khong_phai_so: 
    MOV AH,9 
    LEA DX,Thong_bao_2 
    INT 21h 
    Tiep_tuc: 
    ;Tro ve DOS 
    MOV AH,4Ch 
    INT 21h     
MAIN    ENDP 
        END MAIN