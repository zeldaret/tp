lbl_80C34038:
/* 80C34038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3403C  7C 08 02 A6 */	mflr r0
/* 80C34040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34044  4B 62 F0 4C */	b ModuleUnresolved
/* 80C34048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3404C  7C 08 03 A6 */	mtlr r0
/* 80C34050  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34054  4E 80 00 20 */	blr 
