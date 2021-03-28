lbl_801952A0:
/* 801952A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801952A4  7C 08 02 A6 */	mflr r0
/* 801952A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801952AC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801952B0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801952B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801952B8  7C 7F 1B 78 */	mr r31, r3
/* 801952BC  FF E0 08 90 */	fmr f31, f1
/* 801952C0  C0 02 A0 50 */	lfs f0, lit_3808(r2)
/* 801952C4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801952C8  40 81 00 20 */	ble lbl_801952E8
/* 801952CC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801952D0  48 0C 03 7D */	bl isVisible__13CPaneMgrAlphaFv
/* 801952D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801952D8  40 82 00 30 */	bne lbl_80195308
/* 801952DC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801952E0  48 0C 02 E9 */	bl show__13CPaneMgrAlphaFv
/* 801952E4  48 00 00 24 */	b lbl_80195308
lbl_801952E8:
/* 801952E8  FF E0 00 90 */	fmr f31, f0
/* 801952EC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801952F0  48 0C 03 5D */	bl isVisible__13CPaneMgrAlphaFv
/* 801952F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801952F8  28 00 00 01 */	cmplwi r0, 1
/* 801952FC  40 82 00 0C */	bne lbl_80195308
/* 80195300  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80195304  48 0C 03 05 */	bl hide__13CPaneMgrAlphaFv
lbl_80195308:
/* 80195308  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8019530C  FC 20 F8 90 */	fmr f1, f31
/* 80195310  48 0C 04 C1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80195314  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80195318  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8019531C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80195320  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80195324  7C 08 03 A6 */	mtlr r0
/* 80195328  38 21 00 20 */	addi r1, r1, 0x20
/* 8019532C  4E 80 00 20 */	blr 
