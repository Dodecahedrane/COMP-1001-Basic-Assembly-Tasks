; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	answer DWORD ?				; undefined variable for answer with size 32 bits

.code ; code segment

main PROC ; main procedure
	
	mov eax, 10					; insert literal values into registers eax through edx
	mov ebx, 5
	mov ecx, 2
	mov edx, 3

	add eax, ebx				; perform add operation
	add ecx, edx

	sub eax, edx				; perform subtration operation

	; mov answer, eax			; move eax into answer

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling