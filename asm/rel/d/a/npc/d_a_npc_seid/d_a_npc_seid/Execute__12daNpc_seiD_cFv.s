lbl_80AC9AF4:
/* 80AC9AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC9AF8  7C 08 02 A6 */	mflr r0
/* 80AC9AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC9B00  4B 67 EA 2D */	bl execute__8daNpcT_cFv
/* 80AC9B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC9B08  7C 08 03 A6 */	mtlr r0
/* 80AC9B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC9B10  4E 80 00 20 */	blr 
