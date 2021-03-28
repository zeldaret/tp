lbl_80B42EB8:
/* 80B42EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B42EBC  7C 08 02 A6 */	mflr r0
/* 80B42EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B42EC4  4B 72 01 CC */	b ModuleUnresolved
/* 80B42EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B42ECC  7C 08 03 A6 */	mtlr r0
/* 80B42ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B42ED4  4E 80 00 20 */	blr 
