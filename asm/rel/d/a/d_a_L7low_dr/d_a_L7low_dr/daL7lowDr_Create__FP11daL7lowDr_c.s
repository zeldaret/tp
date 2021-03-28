lbl_805AAE88:
/* 805AAE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAE8C  7C 08 02 A6 */	mflr r0
/* 805AAE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAE94  4B FF FE C5 */	bl create__11daL7lowDr_cFv
/* 805AAE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAE9C  7C 08 03 A6 */	mtlr r0
/* 805AAEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAEA4  4E 80 00 20 */	blr 
