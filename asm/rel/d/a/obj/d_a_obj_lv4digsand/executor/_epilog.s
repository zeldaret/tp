lbl_80C66ACC:
/* 80C66ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66AD0  7C 08 02 A6 */	mflr r0
/* 80C66AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66AD8  4B 5F C5 B4 */	b ModuleEpilog
/* 80C66ADC  3C 60 80 C6 */	lis r3, data_80C675D0@ha
/* 80C66AE0  38 63 75 D0 */	addi r3, r3, data_80C675D0@l
/* 80C66AE4  4B 5F C6 AC */	b ModuleDestructorsX
/* 80C66AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66AEC  7C 08 03 A6 */	mtlr r0
/* 80C66AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66AF4  4E 80 00 20 */	blr 
