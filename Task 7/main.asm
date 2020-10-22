; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	string BYTE "this is very exciting.",0		; remember strings are byte arrays
	count WORD 0  ; this is the counter

.code ; code segment

main PROC ; main procedure
	
	lea ebx, string								; load address of first index in string
	mov edx, LENGTHOF string					; load length of string into edx
	mov al, 69h									; asscii value of 'i'
	mov esi, 0									; initalize loop index to 0

	update: 
		mov ah, [ebx + TYPE string * esi]		; move element at esi index to ah reg.
		cmp ah, al								; compare asscii value of ah to al to see if it matches
		jne increment							; if it is 'i' then jump to increment counter function
		jmp completedTest						; if is not i then jump to completedTest

	completedTest:
		inc esi									; increment esi 
		cmp esi, edx							; compare to see if esi is greater than the length of the string
		jne update								; jump to update if esi is less or equal to length
		jmp done								; jump to done if esi is greater than length

	increment:
		inc count
		jmp completedTest

	done:
	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling