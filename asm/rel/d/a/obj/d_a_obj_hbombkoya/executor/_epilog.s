lbl_80C1B82C:
/* 80C1B82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B830  7C 08 02 A6 */	mflr r0
/* 80C1B834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B838  4B 64 78 54 */	b ModuleEpilog
/* 80C1B83C  3C 60 80 C2 */	lis r3, data_80C1C5F4@ha
/* 80C1B840  38 63 C5 F4 */	addi r3, r3, data_80C1C5F4@l
/* 80C1B844  4B 64 79 4C */	b ModuleDestructorsX
/* 80C1B848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B84C  7C 08 03 A6 */	mtlr r0
/* 80C1B850  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B854  4E 80 00 20 */	blr 
