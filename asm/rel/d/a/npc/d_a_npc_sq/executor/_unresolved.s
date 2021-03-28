lbl_80AF5F58:
/* 80AF5F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5F5C  7C 08 02 A6 */	mflr r0
/* 80AF5F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5F64  4B 76 D1 2C */	b ModuleUnresolved
/* 80AF5F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5F6C  7C 08 03 A6 */	mtlr r0
/* 80AF5F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5F74  4E 80 00 20 */	blr 
