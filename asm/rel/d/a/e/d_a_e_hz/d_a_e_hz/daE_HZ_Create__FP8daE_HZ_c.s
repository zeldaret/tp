lbl_806F0300:
/* 806F0300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F0304  7C 08 02 A6 */	mflr r0
/* 806F0308  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F030C  4B FF F9 0D */	bl create__8daE_HZ_cFv
/* 806F0310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F0314  7C 08 03 A6 */	mtlr r0
/* 806F0318  38 21 00 10 */	addi r1, r1, 0x10
/* 806F031C  4E 80 00 20 */	blr 
