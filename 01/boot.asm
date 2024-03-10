ORG 0x7c00
BITS 16

start:
  mov si, message ; move the adderess of message to si register
  call print ; call print sub routine
  jmp $

print:
  mov bx, 0
.loop:
  lodsb ; load char that si reg is pointing to load to al register and increment (al , char)
  cmp al, 0 ; compare the al to 0
  je .done ; jump equal
  call print_char
  jmp .loop
.done:
  ret ; return from sub routine

print_char:
  mov ah, 0eh ; move 0eh (cmd) to ah
  int 0x10 ; calling BIOS routine (invoke the BISO) 
  ret

message: db 'Hello World!', 0 ; null terminator

times 510- ($ - $$) db 0 ; fill atleast 510 bytes of data (pad the bytes with 0)
dw 0xAA55 ; assamble dw = 2 bytes
