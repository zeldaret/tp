lbl_805AAC1C:
/* 805AAC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAC20  7C 08 02 A6 */	mflr r0
/* 805AAC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAC28  4B FF FF D1 */	bl execute__11daL7lowDr_cFv
/* 805AAC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAC30  7C 08 03 A6 */	mtlr r0
/* 805AAC34  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAC38  4E 80 00 20 */	blr 
