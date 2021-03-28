lbl_80D5D270:
/* 80D5D270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D274  7C 08 02 A6 */	mflr r0
/* 80D5D278  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D27C  4B FF FB 19 */	bl Draw__17daTag_MynaLight_cFv
/* 80D5D280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D284  7C 08 03 A6 */	mtlr r0
/* 80D5D288  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D28C  4E 80 00 20 */	blr 
