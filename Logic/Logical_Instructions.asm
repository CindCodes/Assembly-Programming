.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.code
	main PROC
		mov al,01101111b
		and al,00101101b 	; a. Al= 0010 1101b
		mov al,6Dh
		and al,4Ah 			; b. Al= 0100 1000b
		mov al,00001111b
		or al,61h 			; c. Al= 0110 1111b
		mov al,94h
		xor al,37h 			; d. Al= 1010 0011b

		INVOKE ExitProcess, 0
	main ENDP
END main
