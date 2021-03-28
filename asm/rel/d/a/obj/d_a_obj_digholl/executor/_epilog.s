lbl_80BDC5CC:
/* 80BDC5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC5D0  7C 08 02 A6 */	mflr r0
/* 80BDC5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC5D8  4B 68 6A B4 */	b ModuleEpilog
/* 80BDC5DC  3C 60 80 BE */	lis r3, data_80BDCB38@ha
/* 80BDC5E0  38 63 CB 38 */	addi r3, r3, data_80BDCB38@l
/* 80BDC5E4  4B 68 6B AC */	b ModuleDestructorsX
/* 80BDC5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC5EC  7C 08 03 A6 */	mtlr r0
/* 80BDC5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC5F4  4E 80 00 20 */	blr 
