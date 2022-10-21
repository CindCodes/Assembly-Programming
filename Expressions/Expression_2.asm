; This program implements the following expression in assembly language
; result = (val3+val4) - (val1-val2) - (30*4)/55

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.code
	main PROC

		mov eax, 134h ; val1
		mov ebx, 139h ; val2
		mov ecx, 67h ; val3
		mov edx, 47h ; val4
		neg eax
		add eax, ebx
		add ecx, edx
		mov ebx, (30*4)/55
		sub eax, ebx
		sub cx, ax
		mov edx, 0
		mov edx, ecx

		INVOKE ExitProcess, 0
	main ENDP
END main
