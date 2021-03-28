lbl_80B9FA58:
/* 80B9FA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FA5C  7C 08 02 A6 */	mflr r0
/* 80B9FA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FA64  4B 6C 36 2C */	b ModuleUnresolved
/* 80B9FA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FA6C  7C 08 03 A6 */	mtlr r0
/* 80B9FA70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FA74  4E 80 00 20 */	blr 
