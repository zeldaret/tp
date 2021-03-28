lbl_80BFD5C0:
/* 80BFD5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD5C4  7C 08 02 A6 */	mflr r0
/* 80BFD5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD5CC  3C 60 80 C0 */	lis r3, data_80BFDFD4@ha
/* 80BFD5D0  38 63 DF D4 */	addi r3, r3, data_80BFDFD4@l
/* 80BFD5D4  4B 66 5B 78 */	b ModuleConstructorsX
/* 80BFD5D8  4B 66 5A B0 */	b ModuleProlog
/* 80BFD5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD5E0  7C 08 03 A6 */	mtlr r0
/* 80BFD5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD5E8  4E 80 00 20 */	blr 
