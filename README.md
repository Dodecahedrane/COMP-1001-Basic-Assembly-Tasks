# COMP-1001-Basic-Assembly-Tasks
Introductory assembly programming tasks from COMP 1001

### Task 1:

Calculate (a+b)-(c+d) 

The values a, b, c, d must be stored in registers EAX, EBX, ECX and EDX. Create a string that could accompany the answer in an output statement (e.g., 'The answer is:'). You
do not have to output the string.

### Task 2:

The power rating P is determined by the current rating I and the voltage rating V. The relationship is given by: P = VI. Given P=2200 watts and V=220 volts, write a program that would compute the current I.

### Task 3:

Consider that a module has two pieces of assessments: a coursework and a test; each component carries 50% of the total module marks. Below we give the marks obtained by a student.

- Coursework: 35 out of 60.
- Test: 45 out of 55.

Write a program to compute the student's overall percentage in the module. 

### Task 4:

Define an integer DWORD (32-bit) array with the elements [4, 3, 5, 6]. Read the second element (i.e. 3) into register ecx, and replace this with the value 10h. Inspect the memory and confirm that the change has been made.

### Task 5:

Write a program that multiplies each element of a DWORD array by the value of 8 and stores the result in the same element of the array you defined. You are not supposed to use branching or looping here, so please follow the steps below.

- Create an array with the values 5, 10, 15, and 20.
- Load the first array element and multiply it by 8
- Store the result back into the first array element
- Repeat for the other 3 elements

The result array should contain 40, 80, 120, and 160

### Task 6:

Write a program that performs task 5, but using branching and looping. See how a loop is implemented in assembly in the lecture slides. You must use a register to control the loop index ('esi' register).

### Task 7:

Consider a string with the contents 'This is very exciting'. In this string, the number of times the letter 'i' appears is 4. Write a program that counts the number of times 'i' appears in the given string using branching and loops. You should write down the pseudo code first and then code accordingly.