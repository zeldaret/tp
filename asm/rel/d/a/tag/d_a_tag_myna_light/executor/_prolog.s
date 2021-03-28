lbl_80D5CAC0:
/* 80D5CAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5CAC4  7C 08 02 A6 */	mflr r0
/* 80D5CAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5CACC  3C 60 80 D6 */	lis r3, data_80D5D2F8@ha
/* 80D5CAD0  38 63 D2 F8 */	addi r3, r3, data_80D5D2F8@l
/* 80D5CAD4  4B 50 66 78 */	b ModuleConstructorsX
/* 80D5CAD8  4B 50 65 B0 */	b ModuleProlog
/* 80D5CADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5CAE0  7C 08 03 A6 */	mtlr r0
/* 80D5CAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5CAE8  4E 80 00 20 */	blr 
