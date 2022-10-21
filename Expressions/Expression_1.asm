; This program computes the following expression in assembly language
; ECX = -(val3-val1)+(-val4+val2)+3

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.code
	main PROC
	mov eax, 12 ; val1
	mov ebx, 9 ; val2
	mov ecx, 2 ; val3
	mov edx, 20 ; val4
	neg edx ; negative val4
	add edx, ebx ; add val2 to val4
	neg ecx ; negative val3
	add eax, ecx ; add val3 to val1
	mov ecx, 0 ; clear ecx
	add edx, 3 ; add 3 to edx
	add eax, edx ; add edx to eax
	mov ecx, eax ; move final value of equation to ecx

	INVOKE ExitProcess, 0
	main ENDP
END main
