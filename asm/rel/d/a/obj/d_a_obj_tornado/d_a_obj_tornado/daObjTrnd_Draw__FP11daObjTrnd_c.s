lbl_80D1C2CC:
/* 80D1C2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C2D0  7C 08 02 A6 */	mflr r0
/* 80D1C2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C2D8  4B FF FF B9 */	bl draw__11daObjTrnd_cFv
/* 80D1C2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C2E0  7C 08 03 A6 */	mtlr r0
/* 80D1C2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C2E8  4E 80 00 20 */	blr 
