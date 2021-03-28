lbl_80657B58:
/* 80657B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657B5C  7C 08 02 A6 */	mflr r0
/* 80657B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657B64  4B C0 B5 2C */	b ModuleUnresolved
/* 80657B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657B6C  7C 08 03 A6 */	mtlr r0
/* 80657B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80657B74  4E 80 00 20 */	blr 
