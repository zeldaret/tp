lbl_80B2DE58:
/* 80B2DE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2DE5C  7C 08 02 A6 */	mflr r0
/* 80B2DE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2DE64  4B 73 52 2C */	b ModuleUnresolved
/* 80B2DE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2DE6C  7C 08 03 A6 */	mtlr r0
/* 80B2DE70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2DE74  4E 80 00 20 */	blr 
