lbl_80A6B630:
/* 80A6B630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6B634  7C 08 02 A6 */	mflr r0
/* 80A6B638  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6B63C  4B 6D CE F0 */	b execute__8daNpcT_cFv
/* 80A6B640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6B644  7C 08 03 A6 */	mtlr r0
/* 80A6B648  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6B64C  4E 80 00 20 */	blr 
