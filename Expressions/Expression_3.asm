; This program evaluates the following expression
; ebx = (-val3-val2) + (val1*2)

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
	val1 SWORD 23
	val2 SWORD -35
	val3 SDWORD 4

.code
	main PROC
	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov edx, 0
	mov ecx, val3 ; move val3 to ecx
	sub eax, ecx ; -val3
	mov bx, val2 ; move val2 to ebx
	sub ax, bx ; -val3-val2
	mov bx, 0
	mov dx, val1 ; val1 in edx
	add dx, dx 
	add bx, ax
	add bx, dx

	INVOKE ExitProcess, 0
main ENDP
END main
