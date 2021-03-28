lbl_805AAF44:
/* 805AAF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAF48  7C 08 02 A6 */	mflr r0
/* 805AAF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAF50  4B FF FF 59 */	bl draw__11daL7lowDr_cFv
/* 805AAF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAF58  7C 08 03 A6 */	mtlr r0
/* 805AAF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAF60  4E 80 00 20 */	blr 
