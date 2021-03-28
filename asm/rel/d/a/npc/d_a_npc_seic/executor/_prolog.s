lbl_80AC7460:
/* 80AC7460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC7464  7C 08 02 A6 */	mflr r0
/* 80AC7468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC746C  3C 60 80 AD */	lis r3, data_80AC9208@ha
/* 80AC7470  38 63 92 08 */	addi r3, r3, data_80AC9208@l
/* 80AC7474  4B 79 BC D8 */	b ModuleConstructorsX
/* 80AC7478  4B 79 BC 10 */	b ModuleProlog
/* 80AC747C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC7480  7C 08 03 A6 */	mtlr r0
/* 80AC7484  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC7488  4E 80 00 20 */	blr 
