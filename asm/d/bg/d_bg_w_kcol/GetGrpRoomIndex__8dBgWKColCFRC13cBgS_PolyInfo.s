lbl_800829F0:
/* 800829F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800829F4  7C 08 02 A6 */	mflr r0
/* 800829F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800829FC  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082A00  38 A1 00 08 */	addi r5, r1, 8
/* 80082A04  4B FF C1 6D */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082A08  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80082A0C  54 03 66 3E */	rlwinm r3, r0, 0xc, 0x18, 0x1f
/* 80082A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082A14  7C 08 03 A6 */	mtlr r0
/* 80082A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80082A1C  4E 80 00 20 */	blr 
