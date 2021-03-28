lbl_8079DD58:
/* 8079DD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079DD5C  7C 08 02 A6 */	mflr r0
/* 8079DD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079DD64  4B AC 53 2C */	b ModuleUnresolved
/* 8079DD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079DD6C  7C 08 03 A6 */	mtlr r0
/* 8079DD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8079DD74  4E 80 00 20 */	blr 
