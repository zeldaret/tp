lbl_806DFF38:
/* 806DFF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFF3C  7C 08 02 A6 */	mflr r0
/* 806DFF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFF44  4B B8 31 4C */	b ModuleUnresolved
/* 806DFF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFF4C  7C 08 03 A6 */	mtlr r0
/* 806DFF50  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFF54  4E 80 00 20 */	blr 
