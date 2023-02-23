section	.data
msg db "Hello world!"
len equ $- msg

section	.text
   global _start
	
_start:
   MOV	edx, len
   MOV	ecx, msg
   MOV	ebx, 1
   MOV	eax, 4
   int	0x80
	
   mov	eax, 1
   int	0x80
