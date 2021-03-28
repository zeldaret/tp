lbl_80AC0340:
/* 80AC0340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0344  7C 08 02 A6 */	mflr r0
/* 80AC0348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC034C  3C 60 80 AC */	lis r3, data_80AC44E4@ha
/* 80AC0350  38 63 44 E4 */	addi r3, r3, data_80AC44E4@l
/* 80AC0354  4B 7A 2D F8 */	b ModuleConstructorsX
/* 80AC0358  4B 7A 2D 30 */	b ModuleProlog
/* 80AC035C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0360  7C 08 03 A6 */	mtlr r0
/* 80AC0364  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0368  4E 80 00 20 */	blr 
