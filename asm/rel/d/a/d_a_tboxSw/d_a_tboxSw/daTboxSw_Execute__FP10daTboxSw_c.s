lbl_80D66968:
/* 80D66968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6696C  7C 08 02 A6 */	mflr r0
/* 80D66970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66974  4B FF FF 55 */	bl execute__10daTboxSw_cFv
/* 80D66978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6697C  7C 08 03 A6 */	mtlr r0
/* 80D66980  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66984  4E 80 00 20 */	blr 
