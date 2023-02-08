lbl_80C6AB90:
/* 80C6AB90  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C6B30C@ha */
/* 80C6AB94  38 84 B3 0C */	addi r4, r4, l_HIO@l /* 0x80C6B30C@l */
/* 80C6AB98  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80C6AB9C  98 03 07 25 */	stb r0, 0x725(r3)
/* 80C6ABA0  38 00 00 00 */	li r0, 0
/* 80C6ABA4  98 03 07 24 */	stb r0, 0x724(r3)
/* 80C6ABA8  4E 80 00 20 */	blr 
