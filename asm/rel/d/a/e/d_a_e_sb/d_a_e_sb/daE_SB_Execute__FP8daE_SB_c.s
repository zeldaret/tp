lbl_807846D8:
/* 807846D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807846DC  7C 08 02 A6 */	mflr r0
/* 807846E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807846E4  4B FF FC AD */	bl Execute__8daE_SB_cFv
/* 807846E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807846EC  7C 08 03 A6 */	mtlr r0
/* 807846F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807846F4  4E 80 00 20 */	blr 
