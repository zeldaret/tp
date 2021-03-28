lbl_8026328C:
/* 8026328C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263290  7C 08 02 A6 */	mflr r0
/* 80263294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263298  4B DA 4A DD */	bl recalibrate__8mDoCPd_cFv
/* 8026329C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802632A0  7C 08 03 A6 */	mtlr r0
/* 802632A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802632A8  4E 80 00 20 */	blr 
