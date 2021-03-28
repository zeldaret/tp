lbl_8077AAF8:
/* 8077AAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077AAFC  7C 08 02 A6 */	mflr r0
/* 8077AB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077AB04  4B AE 85 8C */	b ModuleUnresolved
/* 8077AB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077AB0C  7C 08 03 A6 */	mtlr r0
/* 8077AB10  38 21 00 10 */	addi r1, r1, 0x10
/* 8077AB14  4E 80 00 20 */	blr 
