lbl_80ACD900:
/* 80ACD900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACD904  7C 08 02 A6 */	mflr r0
/* 80ACD908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACD90C  38 63 10 E8 */	addi r3, r3, 0x10e8
/* 80ACD910  4B 89 47 39 */	bl __ptmf_cmpr
/* 80ACD914  7C 60 00 34 */	cntlzw r0, r3
/* 80ACD918  54 03 D9 7E */	srwi r3, r0, 5
/* 80ACD91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACD920  7C 08 03 A6 */	mtlr r0
/* 80ACD924  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACD928  4E 80 00 20 */	blr 
