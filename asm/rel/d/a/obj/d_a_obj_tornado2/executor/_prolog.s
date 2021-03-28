lbl_80D1C460:
/* 80D1C460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C464  7C 08 02 A6 */	mflr r0
/* 80D1C468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C46C  3C 60 80 D2 */	lis r3, data_80D1D3CC@ha
/* 80D1C470  38 63 D3 CC */	addi r3, r3, data_80D1D3CC@l
/* 80D1C474  4B 54 6C D8 */	b ModuleConstructorsX
/* 80D1C478  4B 54 6C 10 */	b ModuleProlog
/* 80D1C47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C480  7C 08 03 A6 */	mtlr r0
/* 80D1C484  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C488  4E 80 00 20 */	blr 
