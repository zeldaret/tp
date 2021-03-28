lbl_80C60A00:
/* 80C60A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60A04  7C 08 02 A6 */	mflr r0
/* 80C60A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60A0C  3C 60 80 C6 */	lis r3, data_80C61B30@ha
/* 80C60A10  38 63 1B 30 */	addi r3, r3, data_80C61B30@l
/* 80C60A14  4B 60 27 38 */	b ModuleConstructorsX
/* 80C60A18  4B 60 26 70 */	b ModuleProlog
/* 80C60A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60A20  7C 08 03 A6 */	mtlr r0
/* 80C60A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60A28  4E 80 00 20 */	blr 
