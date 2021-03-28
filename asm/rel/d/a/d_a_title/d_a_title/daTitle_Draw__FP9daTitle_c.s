lbl_80D67948:
/* 80D67948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6794C  7C 08 02 A6 */	mflr r0
/* 80D67950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67954  4B FF FE 15 */	bl Draw__9daTitle_cFv
/* 80D67958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6795C  7C 08 03 A6 */	mtlr r0
/* 80D67960  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67964  4E 80 00 20 */	blr 
