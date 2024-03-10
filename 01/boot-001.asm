ORG 0x7c00
BITS 16

start:
  mov ah, 0eh ; move 0eh (cmmand) to ah
  mov al, 'A'
  mov bx, 0 
  int 0x10 ; calling BIOS routine 
  
  jmp $


times 510- ($ - $$) db 0 ; fill atleast 510 bytes of data (pad the bytes with 0)
dw 0xAA55 ; assamble dw = 2 bytes
