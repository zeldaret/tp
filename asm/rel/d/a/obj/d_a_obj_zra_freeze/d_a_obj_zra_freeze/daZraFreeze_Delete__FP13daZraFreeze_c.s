lbl_80D44B00:
/* 80D44B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44B04  7C 08 02 A6 */	mflr r0
/* 80D44B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44B0C  4B FF FF 79 */	bl Delete__13daZraFreeze_cFv
/* 80D44B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44B14  7C 08 03 A6 */	mtlr r0
/* 80D44B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44B1C  4E 80 00 20 */	blr 
