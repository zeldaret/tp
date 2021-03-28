lbl_80D21360:
/* 80D21360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21364  7C 08 02 A6 */	mflr r0
/* 80D21368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2136C  3C 60 80 D2 */	lis r3, data_80D21A00@ha
/* 80D21370  38 63 1A 00 */	addi r3, r3, data_80D21A00@l
/* 80D21374  4B 54 1D D8 */	b ModuleConstructorsX
/* 80D21378  4B 54 1D 10 */	b ModuleProlog
/* 80D2137C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21380  7C 08 03 A6 */	mtlr r0
/* 80D21384  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21388  4E 80 00 20 */	blr 
