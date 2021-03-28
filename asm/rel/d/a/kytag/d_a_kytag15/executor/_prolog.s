lbl_808605C0:
/* 808605C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808605C4  7C 08 02 A6 */	mflr r0
/* 808605C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808605CC  3C 60 80 86 */	lis r3, data_80860B38@ha
/* 808605D0  38 63 0B 38 */	addi r3, r3, data_80860B38@l
/* 808605D4  4B A0 2B 78 */	b ModuleConstructorsX
/* 808605D8  4B A0 2A B0 */	b ModuleProlog
/* 808605DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808605E0  7C 08 03 A6 */	mtlr r0
/* 808605E4  38 21 00 10 */	addi r1, r1, 0x10
/* 808605E8  4E 80 00 20 */	blr 
