lbl_80BCEA5C:
/* 80BCEA5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEA60  7C 08 02 A6 */	mflr r0
/* 80BCEA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEA68  4B FF FF 55 */	bl draw__12daObjCrope_cFv
/* 80BCEA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEA70  7C 08 03 A6 */	mtlr r0
/* 80BCEA74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEA78  4E 80 00 20 */	blr 
