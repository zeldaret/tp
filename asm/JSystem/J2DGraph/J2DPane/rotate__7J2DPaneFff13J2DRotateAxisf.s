lbl_802F71DC:
/* 802F71DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F71E0  7C 08 02 A6 */	mflr r0
/* 802F71E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F71E8  D0 23 00 C4 */	stfs f1, 0xc4(r3)
/* 802F71EC  D0 43 00 C8 */	stfs f2, 0xc8(r3)
/* 802F71F0  98 83 00 B6 */	stb r4, 0xb6(r3)
/* 802F71F4  FC 20 18 90 */	fmr f1, f3
/* 802F71F8  48 00 00 15 */	bl rotate__7J2DPaneFf
/* 802F71FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F7200  7C 08 03 A6 */	mtlr r0
/* 802F7204  38 21 00 10 */	addi r1, r1, 0x10
/* 802F7208  4E 80 00 20 */	blr 
