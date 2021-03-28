lbl_8068DBE0:
/* 8068DBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DBE4  7C 08 02 A6 */	mflr r0
/* 8068DBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DBEC  3C 60 80 69 */	lis r3, data_8068DFD8@ha
/* 8068DBF0  38 63 DF D8 */	addi r3, r3, data_8068DFD8@l
/* 8068DBF4  4B BD 55 58 */	b ModuleConstructorsX
/* 8068DBF8  4B BD 54 90 */	b ModuleProlog
/* 8068DBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DC00  7C 08 03 A6 */	mtlr r0
/* 8068DC04  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DC08  4E 80 00 20 */	blr 
