lbl_80D4D234:
/* 80D4D234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D238  7C 08 02 A6 */	mflr r0
/* 80D4D23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D240  4B FF F8 E5 */	bl execute__11daPPolamp_cFv
/* 80D4D244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D248  7C 08 03 A6 */	mtlr r0
/* 80D4D24C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D250  4E 80 00 20 */	blr 
