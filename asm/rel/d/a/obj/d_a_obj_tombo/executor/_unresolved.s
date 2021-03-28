lbl_80D19138:
/* 80D19138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1913C  7C 08 02 A6 */	mflr r0
/* 80D19140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D19144  4B 54 9F 4C */	b ModuleUnresolved
/* 80D19148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1914C  7C 08 03 A6 */	mtlr r0
/* 80D19150  38 21 00 10 */	addi r1, r1, 0x10
/* 80D19154  4E 80 00 20 */	blr 
