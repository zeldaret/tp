lbl_80D4DFB8:
/* 80D4DFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DFBC  7C 08 02 A6 */	mflr r0
/* 80D4DFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DFC4  4B 51 50 CC */	b ModuleUnresolved
/* 80D4DFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DFCC  7C 08 03 A6 */	mtlr r0
/* 80D4DFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DFD4  4E 80 00 20 */	blr 
