lbl_8064FF04:
/* 8064FF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064FF08  7C 08 02 A6 */	mflr r0
/* 8064FF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064FF10  4B FF FF 5D */	bl execute__11daB_ZANTM_cFv
/* 8064FF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064FF18  7C 08 03 A6 */	mtlr r0
/* 8064FF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8064FF20  4E 80 00 20 */	blr 
