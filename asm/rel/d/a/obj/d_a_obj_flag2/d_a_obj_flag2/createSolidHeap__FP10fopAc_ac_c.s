lbl_80BED680:
/* 80BED680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BED684  7C 08 02 A6 */	mflr r0
/* 80BED688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED68C  4B FF FD F5 */	bl createHeap__12daObjFlag2_cFv
/* 80BED690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BED694  7C 08 03 A6 */	mtlr r0
/* 80BED698  38 21 00 10 */	addi r1, r1, 0x10
/* 80BED69C  4E 80 00 20 */	blr 
