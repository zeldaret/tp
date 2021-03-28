lbl_80C83978:
/* 80C83978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8397C  7C 08 02 A6 */	mflr r0
/* 80C83980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83984  4B 5D F7 0C */	b ModuleUnresolved
/* 80C83988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8398C  7C 08 03 A6 */	mtlr r0
/* 80C83990  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83994  4E 80 00 20 */	blr 
