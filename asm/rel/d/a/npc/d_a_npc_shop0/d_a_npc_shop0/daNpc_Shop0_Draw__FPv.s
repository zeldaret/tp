lbl_80AEBAEC:
/* 80AEBAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBAF0  7C 08 02 A6 */	mflr r0
/* 80AEBAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBAF8  4B FF F5 81 */	bl draw__13daNpc_Shop0_cFv
/* 80AEBAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBB00  7C 08 03 A6 */	mtlr r0
/* 80AEBB04  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBB08  4E 80 00 20 */	blr 
