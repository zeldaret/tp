lbl_80CD9798:
/* 80CD9798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD979C  7C 08 02 A6 */	mflr r0
/* 80CD97A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD97A4  4B 58 98 EC */	b ModuleUnresolved
/* 80CD97A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD97AC  7C 08 03 A6 */	mtlr r0
/* 80CD97B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD97B4  4E 80 00 20 */	blr 
