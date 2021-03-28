lbl_8061EB58:
/* 8061EB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061EB5C  7C 08 02 A6 */	mflr r0
/* 8061EB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061EB64  4B C4 45 2C */	b ModuleUnresolved
/* 8061EB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061EB6C  7C 08 03 A6 */	mtlr r0
/* 8061EB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8061EB74  4E 80 00 20 */	blr 
