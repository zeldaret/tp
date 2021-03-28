lbl_80AC0398:
/* 80AC0398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC039C  7C 08 02 A6 */	mflr r0
/* 80AC03A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC03A4  4B 7A 2C EC */	b ModuleUnresolved
/* 80AC03A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC03AC  7C 08 03 A6 */	mtlr r0
/* 80AC03B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC03B4  4E 80 00 20 */	blr 
