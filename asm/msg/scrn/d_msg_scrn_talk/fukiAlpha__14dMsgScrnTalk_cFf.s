lbl_802482B4:
/* 802482B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802482B8  7C 08 02 A6 */	mflr r0
/* 802482BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802482C0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802482C4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802482C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802482CC  48 11 9F 0D */	bl _savegpr_28
/* 802482D0  7C 7C 1B 78 */	mr r28, r3
/* 802482D4  FF E0 08 90 */	fmr f31, f1
/* 802482D8  80 63 00 08 */	lwz r3, 8(r3)
/* 802482DC  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 802482E0  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 802482E4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802482E8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 802482EC  48 00 D4 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802482F0  3B A0 00 00 */	li r29, 0
/* 802482F4  3B E0 00 00 */	li r31, 0
lbl_802482F8:
/* 802482F8  7F DC FA 14 */	add r30, r28, r31
/* 802482FC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80248300  28 03 00 00 */	cmplwi r3, 0
/* 80248304  41 82 00 10 */	beq lbl_80248314
/* 80248308  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 8024830C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80248310  48 00 D4 C1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80248314:
/* 80248314  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80248318  28 03 00 00 */	cmplwi r3, 0
/* 8024831C  41 82 00 10 */	beq lbl_8024832C
/* 80248320  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80248324  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80248328  48 00 D4 A9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8024832C:
/* 8024832C  3B BD 00 01 */	addi r29, r29, 1
/* 80248330  2C 1D 00 06 */	cmpwi r29, 6
/* 80248334  3B FF 00 04 */	addi r31, r31, 4
/* 80248338  41 80 FF C0 */	blt lbl_802482F8
/* 8024833C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80248340  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80248344  39 61 00 20 */	addi r11, r1, 0x20
/* 80248348  48 11 9E DD */	bl _restgpr_28
/* 8024834C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80248350  7C 08 03 A6 */	mtlr r0
/* 80248354  38 21 00 30 */	addi r1, r1, 0x30
/* 80248358  4E 80 00 20 */	blr 
