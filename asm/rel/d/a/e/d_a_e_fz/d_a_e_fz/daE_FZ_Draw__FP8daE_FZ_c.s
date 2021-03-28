lbl_806BEAD8:
/* 806BEAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BEADC  7C 08 02 A6 */	mflr r0
/* 806BEAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BEAE4  4B FF FE F1 */	bl draw__8daE_FZ_cFv
/* 806BEAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BEAEC  7C 08 03 A6 */	mtlr r0
/* 806BEAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 806BEAF4  4E 80 00 20 */	blr 
