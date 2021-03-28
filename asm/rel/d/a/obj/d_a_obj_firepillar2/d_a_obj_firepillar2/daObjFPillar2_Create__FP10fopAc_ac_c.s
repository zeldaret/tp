lbl_80BEB428:
/* 80BEB428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB42C  7C 08 02 A6 */	mflr r0
/* 80BEB430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB434  4B FF ED F5 */	bl create__15daObjFPillar2_cFv
/* 80BEB438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB43C  7C 08 03 A6 */	mtlr r0
/* 80BEB440  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB444  4E 80 00 20 */	blr 
