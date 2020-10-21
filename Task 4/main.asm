; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	array DWORD 4, 3, 5, 6				; initalize array with values

.code ; code segment

main PROC ; main procedure
	
	lea ebx, array						; load the address of the first value into ebx 
	mov ecx, [ebx + TYPE array * 1]		; load the value of index 1 (2nd element) into ecx - value is contained in the next address after the address of index 0, hence ebx +
	mov edx, 10h						; load 10h into edx
	mov [ebx + TYPE array * 1], edx		; load edx into index 1 (2nd element)

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling