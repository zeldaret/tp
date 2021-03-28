lbl_80C98AB8:
/* 80C98AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C98ABC  7C 08 02 A6 */	mflr r0
/* 80C98AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98AC4  4B 5C A5 CC */	b ModuleUnresolved
/* 80C98AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C98ACC  7C 08 03 A6 */	mtlr r0
/* 80C98AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98AD4  4E 80 00 20 */	blr 
