lbl_80D659D8:
/* 80D659D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D659DC  7C 08 02 A6 */	mflr r0
/* 80D659E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D659E4  4B 4F D6 AC */	b ModuleUnresolved
/* 80D659E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D659EC  7C 08 03 A6 */	mtlr r0
/* 80D659F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D659F4  4E 80 00 20 */	blr 
