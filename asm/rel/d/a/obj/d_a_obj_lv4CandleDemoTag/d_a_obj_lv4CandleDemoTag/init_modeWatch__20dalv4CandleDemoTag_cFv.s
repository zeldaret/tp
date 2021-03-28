lbl_80C5CCA4:
/* 80C5CCA4  3C 80 80 C6 */	lis r4, l_HIO@ha
/* 80C5CCA8  38 84 D3 54 */	addi r4, r4, l_HIO@l
/* 80C5CCAC  A8 04 00 04 */	lha r0, 4(r4)
/* 80C5CCB0  B0 03 05 88 */	sth r0, 0x588(r3)
/* 80C5CCB4  38 00 00 00 */	li r0, 0
/* 80C5CCB8  98 03 05 84 */	stb r0, 0x584(r3)
/* 80C5CCBC  4E 80 00 20 */	blr 
