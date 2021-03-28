lbl_8078A198:
/* 8078A198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078A19C  7C 08 02 A6 */	mflr r0
/* 8078A1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078A1A4  4B AD 8E EC */	b ModuleUnresolved
/* 8078A1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078A1AC  7C 08 03 A6 */	mtlr r0
/* 8078A1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8078A1B4  4E 80 00 20 */	blr 
