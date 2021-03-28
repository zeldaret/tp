lbl_80BFD618:
/* 80BFD618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD61C  7C 08 02 A6 */	mflr r0
/* 80BFD620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD624  4B 66 5A 6C */	b ModuleUnresolved
/* 80BFD628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD62C  7C 08 03 A6 */	mtlr r0
/* 80BFD630  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD634  4E 80 00 20 */	blr 
