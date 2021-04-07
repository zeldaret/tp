lbl_80C8C7F8:
/* 80C8C7F8  38 00 00 00 */	li r0, 0
/* 80C8C7FC  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C8C800  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8CD8C@ha */
/* 80C8C804  38 84 CD 8C */	addi r4, r4, l_HIO@l /* 0x80C8CD8C@l */
/* 80C8C808  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80C8C80C  98 03 05 C5 */	stb r0, 0x5c5(r3)
/* 80C8C810  38 00 00 03 */	li r0, 3
/* 80C8C814  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C8C818  4E 80 00 20 */	blr 
