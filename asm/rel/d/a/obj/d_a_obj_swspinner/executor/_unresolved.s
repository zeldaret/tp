lbl_80CFFF58:
/* 80CFFF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFF5C  7C 08 02 A6 */	mflr r0
/* 80CFFF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFF64  4B 56 31 2C */	b ModuleUnresolved
/* 80CFFF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFF6C  7C 08 03 A6 */	mtlr r0
/* 80CFFF70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFF74  4E 80 00 20 */	blr 
