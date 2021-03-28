lbl_80C11080:
/* 80C11080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11084  7C 08 02 A6 */	mflr r0
/* 80C11088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1108C  3C 60 80 C1 */	lis r3, data_80C123B4@ha
/* 80C11090  38 63 23 B4 */	addi r3, r3, data_80C123B4@l
/* 80C11094  4B 65 20 B8 */	b ModuleConstructorsX
/* 80C11098  4B 65 1F F0 */	b ModuleProlog
/* 80C1109C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C110A0  7C 08 03 A6 */	mtlr r0
/* 80C110A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C110A8  4E 80 00 20 */	blr 
