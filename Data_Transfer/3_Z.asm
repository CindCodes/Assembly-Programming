; Description: This program computes the following expressions
; Z_0 = x + y + r
; Z_1 = Z_0 + (y-r)
; Z_2 = Z_0 + (Z_1 + y)

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	z DWORD 3 DUP(?)
	x WORD 10
	y WORD 15
	r WORD 4
  
.code
	main PROC
		xor eax,eax
		xor ebx,ebx
		xor ecx,ecx
		xor edx,edx

		mov BX, y
		mov CX, r
		add AX, BX
		add AX, CX
		mov Z, EAX
		add CX, BX
		sub CX, AX
		add CX, BX

		mov AX, x
		mov BX, y 
		mov CX, r 
		add AX, BX 
		add AX, CX 
		mov z, eax

		add BX, r 
		sub BX, AX 
		mov z+4, ebx 

		add BX, y 
		add BX, AX 
		mov z+8, ebx 
		
		INVOKE ExitProcess, 0
	main ENDP
END main
