lbl_80C92DE0:
/* 80C92DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92DE4  7C 08 02 A6 */	mflr r0
/* 80C92DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92DEC  3C 60 80 C9 */	lis r3, data_80C93D80@ha
/* 80C92DF0  38 63 3D 80 */	addi r3, r3, data_80C93D80@l
/* 80C92DF4  4B 5D 03 58 */	b ModuleConstructorsX
/* 80C92DF8  4B 5D 02 90 */	b ModuleProlog
/* 80C92DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92E00  7C 08 03 A6 */	mtlr r0
/* 80C92E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92E08  4E 80 00 20 */	blr 
