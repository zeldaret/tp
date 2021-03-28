lbl_8063A2B8:
/* 8063A2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A2BC  7C 08 02 A6 */	mflr r0
/* 8063A2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A2C4  4B FF FE B9 */	bl draw__9daB_YOI_cFv
/* 8063A2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A2CC  7C 08 03 A6 */	mtlr r0
/* 8063A2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A2D4  4E 80 00 20 */	blr 
