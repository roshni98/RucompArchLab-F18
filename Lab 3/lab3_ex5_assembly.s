.data
source:
.word    3
.word    1
.word    4
.word    1
.word    5
.word    9
.word    0
dest:
.word    0
.word    0
.word    0
.word    0
.word    0
.word    0
.word    0
.word    0
.word    0
.word    0

.text
main:
addi t0, x0, 0 // part a where the register represents the variable k
la t1, source
la t2, dest
loop:// part c the assembly code (continues below) for the loop found in the C code
slli t3, t0, 2
add t4, t1, t3 //part b, t4 acts like a pointer to sources //part b, the t4 acts like pointer to the  //sources
lw t5, 0(t4)//creates register t5 that contains value of t4 or source
beq t5, x0, exit //condition check if source==0, exit //this line checks if the source is == 0, exit
add t6, t2, t3 //part b t6 acts like a pointer to destination// part b, t6 acts like a pointer to //destination this time
sw t5, 0(t6)//put into t6 or destination of whatever is stored in the value that’s in t5 or source
addi t0, t0, 1 //represents variable k increment. k++
jal x0, loop
exit:
addi a0, x0, 10
add a1, x0, x0
ecall # Terminate ecall
