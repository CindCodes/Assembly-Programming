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

		mov AX, x ;load X into AX
		mov BX, y ;load y into BX
		mov CX, r ;load r into CX
		add AX, BX ;add y to x
		add AX, CX ;add r to x
		mov z, eax ;store EAX TO Z_0

		add BX, r ;add r to y
		sub BX, AX ;calculate y+r-Z_0
		mov z+4, ebx ;Z_1= y+r-Z_0

		add BX, y ;add Z_1 + y
		add BX, AX ;calculate (Z_1 + y) + Z_0
		mov z+8, ebx ;Z_2 = (Z_1 + y) + Z_0
		
		INVOKE ExitProcess, 0
	main ENDP
END main
