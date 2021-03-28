lbl_807EFDE0:
/* 807EFDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EFDE4  7C 08 02 A6 */	mflr r0
/* 807EFDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EFDEC  3C 60 80 7F */	lis r3, data_807F2850@ha
/* 807EFDF0  38 63 28 50 */	addi r3, r3, data_807F2850@l
/* 807EFDF4  4B A7 33 58 */	b ModuleConstructorsX
/* 807EFDF8  4B A7 32 90 */	b ModuleProlog
/* 807EFDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EFE00  7C 08 03 A6 */	mtlr r0
/* 807EFE04  38 21 00 10 */	addi r1, r1, 0x10
/* 807EFE08  4E 80 00 20 */	blr 
