lbl_80BF2C98:
/* 80BF2C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2C9C  7C 08 02 A6 */	mflr r0
/* 80BF2CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF2CA4  4B 67 03 EC */	b ModuleUnresolved
/* 80BF2CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2CAC  7C 08 03 A6 */	mtlr r0
/* 80BF2CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2CB4  4E 80 00 20 */	blr 
