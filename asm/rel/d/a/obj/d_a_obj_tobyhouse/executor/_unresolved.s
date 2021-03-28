lbl_80D15A18:
/* 80D15A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D15A1C  7C 08 02 A6 */	mflr r0
/* 80D15A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D15A24  4B 54 D6 6C */	b ModuleUnresolved
/* 80D15A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D15A2C  7C 08 03 A6 */	mtlr r0
/* 80D15A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D15A34  4E 80 00 20 */	blr 
