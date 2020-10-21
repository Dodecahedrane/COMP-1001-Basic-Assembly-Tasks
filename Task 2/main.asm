; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	power WORD 2200				; 16 bit variable for power
	volt WORD 220				; 16 bit variable for volt
	quo WORD ?					; 16 bit variable for quotient
	rem WORD ?					; 16 bit variable for remainder

.code ; code segment

main PROC ; main procedure
	
	mov dx, 0					; mov 0 into dx because in the general case, if the quotient is 16bits, the dividend can be 32bits. We will ignore this and we will divide two 16-bit numbers and we will store the result into another 16-bit register (Fig.3). Thus, we will clear the high part of the dividend (mov dx, 0). 
	mov ax, power				; mov power into ax (ax is the dividend when the div function is called)
	mov cx, volt				; mov volt into cs
	div cx						; divide ax by cx (div will always divide ax by the inputed operator)
	mov quo, ax					; mov ax into quotient
	mov rem, dx					; mov dx into remiander (remiander is always placed into dx)


	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling