lbl_80CE4F58:
/* 80CE4F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4F5C  7C 08 02 A6 */	mflr r0
/* 80CE4F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4F64  4B 57 E1 2C */	b ModuleUnresolved
/* 80CE4F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4F6C  7C 08 03 A6 */	mtlr r0
/* 80CE4F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4F74  4E 80 00 20 */	blr 
