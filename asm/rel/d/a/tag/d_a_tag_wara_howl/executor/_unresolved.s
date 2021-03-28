lbl_80D63F18:
/* 80D63F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63F1C  7C 08 02 A6 */	mflr r0
/* 80D63F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63F24  4B 4F F1 6C */	b ModuleUnresolved
/* 80D63F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63F2C  7C 08 03 A6 */	mtlr r0
/* 80D63F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63F34  4E 80 00 20 */	blr 
