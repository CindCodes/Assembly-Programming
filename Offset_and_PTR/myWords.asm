.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
	myBytes		BYTE 10h,20h,30h,40h
	myWords		WORD 8Ah,3Bh,72h,44h,66h
	myDoubles	DWORD 1,2,3,4,5

.code
	main PROC
		mov esi, OFFSET myBytes
		mov ax, [esi]					; a. AX = 003B008A 
		mov eax, DWORD PTR myWords 		; b. EAX = 00F32010
		mov esi, OFFSET myWords
		mov ax, [esi+2] 				; c. AX = 003B003B
		mov ax, [esi+6] 				; d. AX = 003B0044
		mov ax, [esi-4] 				; e. AX = 003B2010

		INVOKE ExitProcess, 0
	main ENDP
END main
