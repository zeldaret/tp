lbl_802613DC:
/* 802613DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802613E0  7C 08 02 A6 */	mflr r0
/* 802613E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802613E8  C0 04 00 00 */	lfs f0, 0(r4)
/* 802613EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 802613F0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802613F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802613F8  C0 04 00 08 */	lfs f0, 8(r4)
/* 802613FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80261400  80 63 00 FC */	lwz r3, 0xfc(r3)
/* 80261404  38 81 00 08 */	addi r4, r1, 8
/* 80261408  4B FF ED DD */	bl createGetIn__21dDlst_TimerScrnDraw_cF4cXyz
/* 8026140C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80261410  7C 08 03 A6 */	mtlr r0
/* 80261414  38 21 00 20 */	addi r1, r1, 0x20
/* 80261418  4E 80 00 20 */	blr 
