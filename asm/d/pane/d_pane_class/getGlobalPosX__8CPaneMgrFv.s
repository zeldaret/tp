lbl_802542E8:
/* 802542E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802542EC  7C 08 02 A6 */	mflr r0
/* 802542F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802542F4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 802542F8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 802542FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80254300  7C 7F 1B 78 */	mr r31, r3
/* 80254304  80 63 00 04 */	lwz r3, 4(r3)
/* 80254308  48 0A 2D F9 */	bl getBounds__7J2DPaneFv
/* 8025430C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80254310  80 7F 00 04 */	lwz r3, 4(r31)
/* 80254314  48 0A 37 E9 */	bl getParentPane__7J2DPaneFv
/* 80254318  7C 7F 1B 78 */	mr r31, r3
/* 8025431C  48 00 00 20 */	b lbl_8025433C
lbl_80254320:
/* 80254320  7F E3 FB 78 */	mr r3, r31
/* 80254324  48 0A 2D DD */	bl getBounds__7J2DPaneFv
/* 80254328  C0 03 00 00 */	lfs f0, 0(r3)
/* 8025432C  EF FF 00 2A */	fadds f31, f31, f0
/* 80254330  7F E3 FB 78 */	mr r3, r31
/* 80254334  48 0A 37 C9 */	bl getParentPane__7J2DPaneFv
/* 80254338  7C 7F 1B 78 */	mr r31, r3
lbl_8025433C:
/* 8025433C  28 1F 00 00 */	cmplwi r31, 0
/* 80254340  40 82 FF E0 */	bne lbl_80254320
/* 80254344  FC 20 F8 90 */	fmr f1, f31
/* 80254348  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8025434C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80254350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80254354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80254358  7C 08 03 A6 */	mtlr r0
/* 8025435C  38 21 00 20 */	addi r1, r1, 0x20
/* 80254360  4E 80 00 20 */	blr 
