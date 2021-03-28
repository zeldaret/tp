lbl_8063D434:
/* 8063D434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D438  7C 08 02 A6 */	mflr r0
/* 8063D43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D440  4B FF FF 11 */	bl execute__9daB_YOI_cFv
/* 8063D444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D448  7C 08 03 A6 */	mtlr r0
/* 8063D44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D450  4E 80 00 20 */	blr 
