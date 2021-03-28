lbl_80BF6ECC:
/* 80BF6ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF6ED0  7C 08 02 A6 */	mflr r0
/* 80BF6ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6ED8  4B 66 C1 B4 */	b ModuleEpilog
/* 80BF6EDC  3C 60 80 C0 */	lis r3, data_80BF8FE4@ha
/* 80BF6EE0  38 63 8F E4 */	addi r3, r3, data_80BF8FE4@l
/* 80BF6EE4  4B 66 C2 AC */	b ModuleDestructorsX
/* 80BF6EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF6EEC  7C 08 03 A6 */	mtlr r0
/* 80BF6EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6EF4  4E 80 00 20 */	blr 
