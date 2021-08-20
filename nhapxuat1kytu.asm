.model small
.stack 100h
.data
     ;khai bao du lieu
     ky_tu DB ?
.code
      MAIN PROC
        ;khoi tao dia chi doan du lieu
        MOV AX,@DATA
        MOV DS,AX  
        
        ;nhap 1 ky tu
         MOV AH,1
         INT 21h 
         
        ;gan gia tri
         MOV ky_tu,AL 
         
        ;xuat ky tu ra man hinh
         MOV AH,2
         MOV DL,ky_tu
         INT 21h     
         
        ;tro ve man hinh DOS
         MOV AH,4Ch
         INT 21h    
         
        MAIN ENDP
END MAIN    