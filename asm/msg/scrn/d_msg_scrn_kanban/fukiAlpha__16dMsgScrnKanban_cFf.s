lbl_802456A0:
/* 802456A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802456A4  7C 08 02 A6 */	mflr r0
/* 802456A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802456AC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802456B0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802456B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802456B8  48 11 CB 21 */	bl _savegpr_28
/* 802456BC  7C 7C 1B 78 */	mr r28, r3
/* 802456C0  FF E0 08 90 */	fmr f31, f1
/* 802456C4  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 802456C8  48 01 01 09 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802456CC  80 7C 00 08 */	lwz r3, 8(r28)
/* 802456D0  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802456D4  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802456D8  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802456DC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802456E0  48 01 00 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802456E4  80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 802456E8  FC 20 F8 90 */	fmr f1, f31
/* 802456EC  48 01 00 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802456F0  3B A0 00 00 */	li r29, 0
/* 802456F4  3B E0 00 00 */	li r31, 0
lbl_802456F8:
/* 802456F8  7F DC FA 14 */	add r30, r28, r31
/* 802456FC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80245700  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80245704  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80245708  48 01 00 C9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8024570C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80245710  28 03 00 00 */	cmplwi r3, 0
/* 80245714  41 82 00 10 */	beq lbl_80245724
/* 80245718  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 8024571C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80245720  48 01 00 B1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80245724:
/* 80245724  3B BD 00 01 */	addi r29, r29, 1
/* 80245728  2C 1D 00 03 */	cmpwi r29, 3
/* 8024572C  3B FF 00 04 */	addi r31, r31, 4
/* 80245730  41 80 FF C8 */	blt lbl_802456F8
/* 80245734  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80245738  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8024573C  39 61 00 20 */	addi r11, r1, 0x20
/* 80245740  48 11 CA E5 */	bl _restgpr_28
/* 80245744  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80245748  7C 08 03 A6 */	mtlr r0
/* 8024574C  38 21 00 30 */	addi r1, r1, 0x30
/* 80245750  4E 80 00 20 */	blr 
