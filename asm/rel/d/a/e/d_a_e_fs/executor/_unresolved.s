lbl_806BBA38:
/* 806BBA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BBA3C  7C 08 02 A6 */	mflr r0
/* 806BBA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BBA44  4B BA 76 4C */	b ModuleUnresolved
/* 806BBA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BBA4C  7C 08 03 A6 */	mtlr r0
/* 806BBA50  38 21 00 10 */	addi r1, r1, 0x10
/* 806BBA54  4E 80 00 20 */	blr 
