lbl_80BB6818:
/* 80BB6818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB681C  7C 08 02 A6 */	mflr r0
/* 80BB6820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6824  4B 6A C8 6C */	b ModuleUnresolved
/* 80BB6828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB682C  7C 08 03 A6 */	mtlr r0
/* 80BB6830  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6834  4E 80 00 20 */	blr 
