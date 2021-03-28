lbl_80082DE4:
/* 80082DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082DE8  7C 08 02 A6 */	mflr r0
/* 80082DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082DF0  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082DF4  38 A1 00 08 */	addi r5, r1, 8
/* 80082DF8  4B FF BD 79 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082DFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80082E00  54 03 6E FE */	rlwinm r3, r0, 0xd, 0x1b, 0x1f
/* 80082E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082E08  7C 08 03 A6 */	mtlr r0
/* 80082E0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80082E10  4E 80 00 20 */	blr 
