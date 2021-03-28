lbl_806FAA48:
/* 806FAA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FAA4C  7C 08 02 A6 */	mflr r0
/* 806FAA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FAA54  4B FF FD F5 */	bl draw__8daE_KK_cFv
/* 806FAA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FAA5C  7C 08 03 A6 */	mtlr r0
/* 806FAA60  38 21 00 10 */	addi r1, r1, 0x10
/* 806FAA64  4E 80 00 20 */	blr 
