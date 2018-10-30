.data
n: .word 8
#5,4,3,2,1
.text
main:
	la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a0, x0, 10
    ecall # Exit

    initialize:
		addi a1,x0,1
        jal continue
    factorial:
    	beq a0,x0,return_here
        beq a1,x0,initialize
        continue:
            mul a1,a1,a0
            addi a0,a0,-1
            jal ra,factorial
            jalr ra

    return_here:
    	jalr ra
