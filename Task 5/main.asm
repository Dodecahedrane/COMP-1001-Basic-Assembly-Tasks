; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	array DWORD 5, 10, 15, 20			; initalise array with values

.code ; code segment

main PROC ; main procedure
	
	lea ebx, array						; load address of first value
	mov ecx, 8							; load the literal value of 8 into ebx

	mov eax, [ebx + TYPE array * 0]		; mov value of 1st element into eax
	mul ecx								; eax * ecx
	mov [ebx + TYPE array * 0], eax		; mov the result of the multiplication into the first element


	mov eax, [ebx + TYPE array * 1]		; mov value of 1st element into eax
	mul ecx								; eax * ecx
	mov [ebx + TYPE array * 1], eax		; mov the result of the multiplication into the first element

	mov eax, [ebx + TYPE array * 2]		; mov value of 1st element into eax
	mul ecx								; eax * ecx
	mov [ebx + TYPE array * 2], eax		; mov the result of the multiplication into the first element

	mov eax, [ebx + TYPE array * 3]		; mov value of 1st element into eax
	mul ecx								; eax * ecx
	mov [ebx + TYPE array * 3], eax		; mov the result of the multiplication into the first element

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling