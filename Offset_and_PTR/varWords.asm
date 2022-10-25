.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
	varB BYTE  65h,31h,02h,05h
	varW WORD  6543h,1202h
	varD DWORD 12345678h
.code
	main PROC
		mov ax, WORD PTR [varB+2]		; a. 00EF0502
		mov bl, BYTE PTR  varD			; b. 00DC9078
		mov bl, BYTE PTR [varW+2]		; c. 00DC9002
		mov ax, WORD PTR [varD+2]		; d. 00EF1234
		mov eax, DWORD PTR varW			; e. 12026543

		INVOKE ExitProcess, 0
	main ENDP
END main
