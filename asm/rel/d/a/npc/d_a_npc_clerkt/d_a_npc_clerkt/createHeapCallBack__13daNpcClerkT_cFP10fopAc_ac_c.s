lbl_8099AB14:
/* 8099AB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099AB18  7C 08 02 A6 */	mflr r0
/* 8099AB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099AB20  4B FF FA 11 */	bl CreateHeap__13daNpcClerkT_cFv
/* 8099AB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099AB28  7C 08 03 A6 */	mtlr r0
/* 8099AB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8099AB30  4E 80 00 20 */	blr 
