.model small
.stack 100h
.data
    thongbao1 DB 'nhap so: $'
    thongbao2 DB 'ket qua: $'   
    thongbao3 DB  , 13,10, '$'
    so1 DB ?
    so2 DB ?
.code
    MAIN PROC   
        
         ;khoi tao doan du lieu
          MOV AX, @DATA
          MOV DS, AX  
             
         ;input
          
         ;hien thi thong bao yeu cau nhap
          MOV AH, 9
          LEA DX, thongbao1
          INT 21h 
          
         ;nhap vao 1 so
           MOV AH, 1
           INT 21h
           MOV so1, AL     
           
         ;hien thi ky tu xuong dong
           MOV AH, 9
           LEA DX, thongbao3
           INT 21h  
           
         ;nhap vao 1 so
           MOV AH, 1
           INT 21h
           MOV so2, AL  
           
         ;compare and output       
                        
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
          MOV DL, so1
          INT 21h 
          
         MOV BL, so1 
         
         CMP BL, so2
         JE nhan3
         
         CMP BL, so2
         JB nhan2                           
         
         nhan1:
            ;xuat 1 ky tu
          MOV AH, 2
          MOV DL, '>'
          INT 21h 
          JMP xuatso2
           
         nhan2:
         ;xuat 1 ky tu
          MOV AH, 2
          MOV DL, '<'
          INT 21h 
          JMP xuatso2
            
         nhan3:
         ;xuat 1 ky tu
          MOV AH, 2
          MOV DL, '='
          INT 21h     
          
         xuatso2:
         ;xuat 1 ky tu
          MOV AH, 2
          MOV DL, so2
          INT 21h 
          
         ;tro ve man hinh DOS
          MOV AH, 4Ch
          INT 21h   
          
       MAIN ENDP
END MAIN