lbl_80741E58:
/* 80741E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741E5C  7C 08 02 A6 */	mflr r0
/* 80741E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741E64  4B B2 12 2C */	b ModuleUnresolved
/* 80741E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741E6C  7C 08 03 A6 */	mtlr r0
/* 80741E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80741E74  4E 80 00 20 */	blr 
