.model small
.stack 100h
.data
    thongbao1 DB 'nhap so duong: $'
    thongbao2 DB 'vua nhap so: $'   
    tbloi DB 'ban da nhap sai, moi nhap lai' , 13,10,'$' 
    so1 DB ?
    xuongdong DB  , 13,10, '$'
.code
    MAIN PROC   
        
         ;khoi tao doan du lieu
          MOV AX, @DATA
          MOV DS, AX  
             
         ;input
         nhapdulieu: 
         ;hien thi thong bao yeu cau nhap
          MOV AH, 9
          LEA DX, thongbao1
          INT 21h 
          
         ;nhap vao 1 so
           MOV AH, 1
           INT 21h
           MOV so1, AL 
             
         ; kiem tra
         CMP AL, 30h
         JB thongbaoloi
         
         CMP AL, 39h
         JNA xuatketqua   
         
         thongbaoloi: 
         ;thong bao ang am thanh
          MOV AH, 2
          MOV DL, 07h
          INT 21h
         ;hien thi ky tu xuong dong
           MOV AH, 9
           LEA DX, xuongdong
           INT 21h
           
         ;hien thi mot chuoi yeu cau nhap
         MOV AH, 9
         LEA DX, tbloi
         INT 21h
         JMP nhapdulieu
          
           
           
         xuatketqua:
         ;hien thi ky tu xuong dong
           MOV AH, 9
           LEA DX, xuongdong
           INT 21h  
           
          
         ;hien thi chuoi ket qua 
          MOV AH, 9
          LEA DX, thongbao2
          INT 21h 
               
         ;xuat 1 ky tu
          MOV AH, 2
          MOV DL, so1
          INT 21h 
                                 
         
         
          
         ;tro ve man hinh DOS
          MOV AH, 4Ch
          INT 21h   
          
       MAIN ENDP
END MAIN