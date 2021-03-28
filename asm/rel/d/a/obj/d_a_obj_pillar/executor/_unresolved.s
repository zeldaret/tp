lbl_80CAF298:
/* 80CAF298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAF29C  7C 08 02 A6 */	mflr r0
/* 80CAF2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF2A4  4B 5B 3D EC */	b ModuleUnresolved
/* 80CAF2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAF2AC  7C 08 03 A6 */	mtlr r0
/* 80CAF2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAF2B4  4E 80 00 20 */	blr 
