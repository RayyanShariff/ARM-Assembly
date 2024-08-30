@ Fill an array with the sequence 1, 2, 3...

.text 

.global _start 
_start: 

	ldr r1, =array	@ get address of first item of array and stores it into r1
	mov r2, #1		@ r2 stores 1 which initialise count 
	
	ldr r3, =sums 	@ get address of first item of sums array and stores it into r3
	str r2, [r3]	@ store sums[0]=array[0]  
	
	
loop:
	str r2, [r1]	@ the value of r2 gets stored into the first item of the array
	add r1, #4		@ it moves 4 bytes from the first item of r1 to move to the next item [array]
	add r2, #1		@ increment count i++
	str r2, [r1]	@ the value of r2 gets stored into the next item of the array
	ldr r4, [r3]	@ //r3 value gets stored into the memory location of r4 
	add r5, r4, r2 	@ adds r4 and r2 and assign it to r5 which is next item in [sums]
	add r3, #4		@ it moves 4 bytes from the first item of r3 to move to the next item in [sums]
	str r5, [r3]	@ it saves the sum (r5) into the [sums] 
	cmp r2, #20		@ compares r2 to check if it is equal to 20
	
	bne loop		@ no, go back - branch not equal //stops exactly when the value is equal to the cmp value 
	
	nop				@ stop here

.data

array: .skip 80		@ reserve memory for 20 items,
					@ each of which is 4 bytes
sums: .skip 80      @ reserve memory for 20 items
					@ each of which is 4 bytes
					


