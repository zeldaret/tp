lbl_80456C38:
/* 80456C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80456C3C  7C 08 02 A6 */	mflr r0
/* 80456C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80456C44  4B E0 C4 4C */	b ModuleUnresolved
/* 80456C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80456C4C  7C 08 03 A6 */	mtlr r0
/* 80456C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80456C54  4E 80 00 20 */	blr 
