lbl_80254364:
/* 80254364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80254368  7C 08 02 A6 */	mflr r0
/* 8025436C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254370  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80254374  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80254378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025437C  7C 7F 1B 78 */	mr r31, r3
/* 80254380  80 63 00 04 */	lwz r3, 4(r3)
/* 80254384  48 0A 2D 7D */	bl getBounds__7J2DPaneFv
/* 80254388  C3 E3 00 04 */	lfs f31, 4(r3)
/* 8025438C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80254390  48 0A 37 6D */	bl getParentPane__7J2DPaneFv
/* 80254394  7C 7F 1B 78 */	mr r31, r3
/* 80254398  48 00 00 20 */	b lbl_802543B8
lbl_8025439C:
/* 8025439C  7F E3 FB 78 */	mr r3, r31
/* 802543A0  48 0A 2D 61 */	bl getBounds__7J2DPaneFv
/* 802543A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802543A8  EF FF 00 2A */	fadds f31, f31, f0
/* 802543AC  7F E3 FB 78 */	mr r3, r31
/* 802543B0  48 0A 37 4D */	bl getParentPane__7J2DPaneFv
/* 802543B4  7C 7F 1B 78 */	mr r31, r3
lbl_802543B8:
/* 802543B8  28 1F 00 00 */	cmplwi r31, 0
/* 802543BC  40 82 FF E0 */	bne lbl_8025439C
/* 802543C0  FC 20 F8 90 */	fmr f1, f31
/* 802543C4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 802543C8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 802543CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802543D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802543D4  7C 08 03 A6 */	mtlr r0
/* 802543D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802543DC  4E 80 00 20 */	blr 
