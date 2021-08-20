.model small
.stack 100h
.data
    thongbao1 DB 'nhap ki tu: $'
    thongbao2 DB 'ky tu vua nhap la: $'   
    thongbao3 DB  , 13,10, '$'
    ky_tu DB ?
.code
    MAIN PROC   
        
         ;khoi tao doan du lieu
          MOV AX, @DATA
          MOV DS, AX     
          
         ;hien thi thong bao yeu cau nhap
          MOV AH, 9
          LEA DX, thongbao1
          INT 21h 
          
          ;nhap vao 1 ky tu
           MOV AH, 1
           INT 21h
           MOV ky_tu, AL
          ;hien thi ky tu xuong dong
           MOV AH, 9
           LEA DX, thongbao3
           INT 21h
          
         ;hien thi chuoi ket qua 
          MOV AH, 9
          LEA DX, thongbao2
          INT 21h      
         ;xuat 1 ky tu
          MOV AH, 2
          MOV DL, ky_tu
          INT 21h
          
         ;tro ve man hinh DOS
          MOV AH, 4Ch
          INT 21h   
          
       MAIN ENDP
END MAIN