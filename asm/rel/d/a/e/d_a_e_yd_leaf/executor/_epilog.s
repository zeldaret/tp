lbl_807F7DCC:
/* 807F7DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7DD0  7C 08 02 A6 */	mflr r0
/* 807F7DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F7DD8  4B A6 B2 B4 */	b ModuleEpilog
/* 807F7DDC  3C 60 80 80 */	lis r3, data_807F81E4@ha
/* 807F7DE0  38 63 81 E4 */	addi r3, r3, data_807F81E4@l
/* 807F7DE4  4B A6 B3 AC */	b ModuleDestructorsX
/* 807F7DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7DEC  7C 08 03 A6 */	mtlr r0
/* 807F7DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 807F7DF4  4E 80 00 20 */	blr 
