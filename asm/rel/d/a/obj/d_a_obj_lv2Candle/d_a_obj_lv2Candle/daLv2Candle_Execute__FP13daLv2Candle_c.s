lbl_8058EFF0:
/* 8058EFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EFF4  7C 08 02 A6 */	mflr r0
/* 8058EFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EFFC  4B FF F9 A1 */	bl Execute__13daLv2Candle_cFv
/* 8058F000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F004  7C 08 03 A6 */	mtlr r0
/* 8058F008  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F00C  4E 80 00 20 */	blr 
