lbl_805EBB9C:
/* 805EBB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EBBA0  7C 08 02 A6 */	mflr r0
/* 805EBBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EBBA8  4B FF E7 9D */	bl Execute__8daB_GG_cFv
/* 805EBBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EBBB0  7C 08 03 A6 */	mtlr r0
/* 805EBBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 805EBBB8  4E 80 00 20 */	blr 
