lbl_80677D98:
/* 80677D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80677D9C  7C 08 02 A6 */	mflr r0
/* 80677DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80677DA4  4B BE B2 EC */	b ModuleUnresolved
/* 80677DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677DAC  7C 08 03 A6 */	mtlr r0
/* 80677DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80677DB4  4E 80 00 20 */	blr 
