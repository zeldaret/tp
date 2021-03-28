lbl_808346BC:
/* 808346BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808346C0  7C 08 02 A6 */	mflr r0
/* 808346C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808346C8  4B FF FF 89 */	bl execute__8daE_ZS_cFv
/* 808346CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808346D0  7C 08 03 A6 */	mtlr r0
/* 808346D4  38 21 00 10 */	addi r1, r1, 0x10
/* 808346D8  4E 80 00 20 */	blr 
