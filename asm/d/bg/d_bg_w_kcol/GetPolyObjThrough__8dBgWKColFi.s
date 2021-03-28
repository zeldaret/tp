lbl_80082B6C:
/* 80082B6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082B70  7C 08 02 A6 */	mflr r0
/* 80082B74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082B78  38 A1 00 08 */	addi r5, r1, 8
/* 80082B7C  4B FF BF F5 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082B80  80 01 00 08 */	lwz r0, 8(r1)
/* 80082B84  54 03 04 62 */	rlwinm r3, r0, 0, 0x11, 0x11
/* 80082B88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082B8C  7C 08 03 A6 */	mtlr r0
/* 80082B90  38 21 00 20 */	addi r1, r1, 0x20
/* 80082B94  4E 80 00 20 */	blr 
