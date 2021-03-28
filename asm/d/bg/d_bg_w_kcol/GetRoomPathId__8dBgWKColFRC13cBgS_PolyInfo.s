lbl_80082ECC:
/* 80082ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082ED0  7C 08 02 A6 */	mflr r0
/* 80082ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082ED8  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082EDC  38 A1 00 08 */	addi r5, r1, 8
/* 80082EE0  4B FF BC 91 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082EE4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80082EE8  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 80082EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082EF0  7C 08 03 A6 */	mtlr r0
/* 80082EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80082EF8  4E 80 00 20 */	blr 
