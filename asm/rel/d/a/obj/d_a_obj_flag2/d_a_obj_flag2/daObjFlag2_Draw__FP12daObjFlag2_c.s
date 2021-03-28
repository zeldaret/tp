lbl_80BEDDA0:
/* 80BEDDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDDA4  7C 08 02 A6 */	mflr r0
/* 80BEDDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDDAC  4B FF FF 35 */	bl draw__12daObjFlag2_cFv
/* 80BEDDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDDB4  7C 08 03 A6 */	mtlr r0
/* 80BEDDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDDBC  4E 80 00 20 */	blr 
