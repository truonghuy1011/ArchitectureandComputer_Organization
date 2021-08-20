.model small
.stack 100h
.data
    thongbao1 DB 'lop CNTT K58' , 13,10, '$'
    thongbao2 DB 'amitabha$'   

.code
    MAIN PROC
         ;khoi tao doan du lieu
          MOV AX, @DATA
          MOV DS, AX
         ;hien thi mot chuoi
          MOV AH, 9
          LEA DX, thongbao1
          INT 21h
          
          MOV AH, 9
          LEA DX, thongbao2
          INT 21h
         ;tro ve man hinh DOS
          MOV AH, 4Ch
          INT 21h
       MAIN ENDP
END MAIN