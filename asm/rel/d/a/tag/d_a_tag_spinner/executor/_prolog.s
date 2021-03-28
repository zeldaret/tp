lbl_80D61680:
/* 80D61680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61684  7C 08 02 A6 */	mflr r0
/* 80D61688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6168C  3C 60 80 D6 */	lis r3, data_80D61B1C@ha
/* 80D61690  38 63 1B 1C */	addi r3, r3, data_80D61B1C@l
/* 80D61694  4B 50 1A B8 */	b ModuleConstructorsX
/* 80D61698  4B 50 19 F0 */	b ModuleProlog
/* 80D6169C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D616A0  7C 08 03 A6 */	mtlr r0
/* 80D616A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D616A8  4E 80 00 20 */	blr 
