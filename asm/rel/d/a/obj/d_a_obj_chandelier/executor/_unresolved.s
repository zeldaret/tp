lbl_80BC7F18:
/* 80BC7F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7F1C  7C 08 02 A6 */	mflr r0
/* 80BC7F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7F24  4B 69 B1 6C */	b ModuleUnresolved
/* 80BC7F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7F2C  7C 08 03 A6 */	mtlr r0
/* 80BC7F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7F34  4E 80 00 20 */	blr 
