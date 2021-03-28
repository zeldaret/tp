lbl_80D612B8:
/* 80D612B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D612BC  7C 08 02 A6 */	mflr r0
/* 80D612C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D612C4  4B 50 1D CC */	b ModuleUnresolved
/* 80D612C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D612CC  7C 08 03 A6 */	mtlr r0
/* 80D612D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D612D4  4E 80 00 20 */	blr 
