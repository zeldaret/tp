lbl_80082B0C:
/* 80082B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082B10  7C 08 02 A6 */	mflr r0
/* 80082B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082B18  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082B1C  38 A1 00 08 */	addi r5, r1, 8
/* 80082B20  4B FF C0 51 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082B24  80 01 00 08 */	lwz r0, 8(r1)
/* 80082B28  54 03 27 BE */	rlwinm r3, r0, 4, 0x1e, 0x1f
/* 80082B2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082B30  7C 08 03 A6 */	mtlr r0
/* 80082B34  38 21 00 20 */	addi r1, r1, 0x20
/* 80082B38  4E 80 00 20 */	blr 
