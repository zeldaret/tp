lbl_802492F8:
/* 802492F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802492FC  7C 08 02 A6 */	mflr r0
/* 80249300  90 01 00 34 */	stw r0, 0x34(r1)
/* 80249304  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80249308  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8024930C  39 61 00 20 */	addi r11, r1, 0x20
/* 80249310  48 11 8E C9 */	bl _savegpr_28
/* 80249314  7C 7C 1B 78 */	mr r28, r3
/* 80249318  FF E0 08 90 */	fmr f31, f1
/* 8024931C  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 80249320  48 00 C4 B1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80249324  80 7C 00 08 */	lwz r3, 8(r28)
/* 80249328  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8024932C  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 80249330  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80249334  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80249338  48 00 C4 99 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8024933C  80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 80249340  FC 20 F8 90 */	fmr f1, f31
/* 80249344  48 00 C4 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80249348  3B A0 00 00 */	li r29, 0
/* 8024934C  3B E0 00 00 */	li r31, 0
lbl_80249350:
/* 80249350  7F DC FA 14 */	add r30, r28, r31
/* 80249354  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80249358  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 8024935C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80249360  48 00 C4 71 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80249364  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80249368  28 03 00 00 */	cmplwi r3, 0
/* 8024936C  41 82 00 10 */	beq lbl_8024937C
/* 80249370  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80249374  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80249378  48 00 C4 59 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8024937C:
/* 8024937C  3B BD 00 01 */	addi r29, r29, 1
/* 80249380  2C 1D 00 03 */	cmpwi r29, 3
/* 80249384  3B FF 00 04 */	addi r31, r31, 4
/* 80249388  41 80 FF C8 */	blt lbl_80249350
/* 8024938C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80249390  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80249394  39 61 00 20 */	addi r11, r1, 0x20
/* 80249398  48 11 8E 8D */	bl _restgpr_28
/* 8024939C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802493A0  7C 08 03 A6 */	mtlr r0
/* 802493A4  38 21 00 30 */	addi r1, r1, 0x30
/* 802493A8  4E 80 00 20 */	blr 
