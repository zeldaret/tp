lbl_80082CF8:
/* 80082CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082CFC  7C 08 02 A6 */	mflr r0
/* 80082D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082D04  38 A1 00 08 */	addi r5, r1, 8
/* 80082D08  4B FF BE 69 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082D0C  80 01 00 08 */	lwz r0, 8(r1)
/* 80082D10  54 03 57 FE */	rlwinm r3, r0, 0xa, 0x1f, 0x1f
/* 80082D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082D18  7C 08 03 A6 */	mtlr r0
/* 80082D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80082D20  4E 80 00 20 */	blr 
