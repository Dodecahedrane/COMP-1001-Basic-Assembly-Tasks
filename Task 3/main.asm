; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	cwMrk DWORD 35
	cwMax DWORD 60
	cwScore DWORD ?
	tstMrk DWORD 45
	tstMax DWORD 55
	tstScore  DWORD ?
	overallScore DWORD ?
	xd DWORD ?
	xdyc DWORD ?
	cd DWORD ?

.code ; code segment

main PROC ; main procedure
	
	; Formula for calculting score where x is coursework mark, c is coursework max, y is test mark and d is test max
	; [{(x/c)*(50/100)} + {(y/d)*(50/100)}]*100
	; we will rearange to the following to avoid having to deal with floating point numbers (not covered in COMP1001)
	; (50xd + 50yc)/cd

	mov eax, cwMrk
	mov ebx, tstMax
	mul ebx				; x * d
	mov ebx, 50			
	mul ebx				; xd * 50
	mov xd, eax			; mov 50xd into edx

	mov eax, tstMrk		 
	mov ebx, cwMax		 
	mul ebx				; y * c 
	mov ebx, 50			
	mul ebx				; yc * 50
	
	add eax, edx		; 50xd + 50yc
 
	mov xdyc, eax		;mov (50xd + 50yc) into ecx

	mov eax, cwMax
	mov ebx, tstMax
	mul ebx				; c * d
	mov cd, eax
	
	mov ebx, cd
	mov eax, xdyc

	div ebx
	mov overallScore, eax

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling