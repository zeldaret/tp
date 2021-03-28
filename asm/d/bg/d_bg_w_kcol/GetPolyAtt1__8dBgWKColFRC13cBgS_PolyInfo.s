lbl_80082DB4:
/* 80082DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082DB8  7C 08 02 A6 */	mflr r0
/* 80082DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082DC0  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082DC4  38 A1 00 08 */	addi r5, r1, 8
/* 80082DC8  4B FF BD A9 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082DCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80082DD0  54 03 87 7E */	rlwinm r3, r0, 0x10, 0x1d, 0x1f
/* 80082DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082DD8  7C 08 03 A6 */	mtlr r0
/* 80082DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80082DE0  4E 80 00 20 */	blr 
