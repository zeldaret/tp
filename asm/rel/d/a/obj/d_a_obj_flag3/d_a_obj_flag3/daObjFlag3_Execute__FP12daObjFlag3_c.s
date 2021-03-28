lbl_80BEED1C:
/* 80BEED1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEED20  7C 08 02 A6 */	mflr r0
/* 80BEED24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEED28  48 00 00 15 */	bl execute__12daObjFlag3_cFv
/* 80BEED2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEED30  7C 08 03 A6 */	mtlr r0
/* 80BEED34  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEED38  4E 80 00 20 */	blr 
