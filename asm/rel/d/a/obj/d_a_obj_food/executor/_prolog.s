lbl_80BF0620:
/* 80BF0620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF0624  7C 08 02 A6 */	mflr r0
/* 80BF0628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF062C  3C 60 80 BF */	lis r3, data_80BF1D7C@ha
/* 80BF0630  38 63 1D 7C */	addi r3, r3, data_80BF1D7C@l
/* 80BF0634  4B 67 2B 18 */	b ModuleConstructorsX
/* 80BF0638  4B 67 2A 50 */	b ModuleProlog
/* 80BF063C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF0640  7C 08 03 A6 */	mtlr r0
/* 80BF0644  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF0648  4E 80 00 20 */	blr 
