lbl_80D021C0:
/* 80D021C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D021C4  7C 08 02 A6 */	mflr r0
/* 80D021C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D021CC  3C 60 80 D0 */	lis r3, data_80D03F7C@ha
/* 80D021D0  38 63 3F 7C */	addi r3, r3, data_80D03F7C@l
/* 80D021D4  4B 56 0F 78 */	b ModuleConstructorsX
/* 80D021D8  4B 56 0E B0 */	b ModuleProlog
/* 80D021DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D021E0  7C 08 03 A6 */	mtlr r0
/* 80D021E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D021E8  4E 80 00 20 */	blr 
