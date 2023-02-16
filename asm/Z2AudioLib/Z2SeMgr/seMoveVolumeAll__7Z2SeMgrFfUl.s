lbl_802AD9F4:
/* 802AD9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AD9F8  7C 08 02 A6 */	mflr r0
/* 802AD9FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ADA00  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 802ADA04  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 802ADA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ADA0C  93 C1 00 08 */	stw r30, 8(r1)
/* 802ADA10  FF E0 08 90 */	fmr f31, f1
/* 802ADA14  7C 9E 23 78 */	mr r30, r4
/* 802ADA18  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ADA1C  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802ADA20  28 00 00 0D */	cmplwi r0, 0xd
/* 802ADA24  40 82 00 08 */	bne lbl_802ADA2C
/* 802ADA28  C3 E2 BE 78 */	lfs f31, lit_4040(r2)
lbl_802ADA2C:
/* 802ADA2C  83 ED 85 E0 */	lwz r31, __OSReport_disable-0x38(r13)
/* 802ADA30  38 7F 00 8C */	addi r3, r31, 0x8c
/* 802ADA34  C0 0D 82 7C */	lfs f0, VOL_SE_LINK_VOICE_DEFAULT__7Z2Param(r13)
/* 802ADA38  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADA3C  7F C4 F3 78 */	mr r4, r30
/* 802ADA40  4B FF 53 75 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADA44  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 802ADA48  C0 0D 82 80 */	lfs f0, VOL_SE_LINK_MOTION_DEFAULT__7Z2Param(r13)
/* 802ADA4C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADA50  7F C4 F3 78 */	mr r4, r30
/* 802ADA54  4B FF 53 61 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADA58  38 7F 01 64 */	addi r3, r31, 0x164
/* 802ADA5C  C0 0D 82 84 */	lfs f0, VOL_SE_LINK_FOOTNOTE_DEFAULT__7Z2Param(r13)
/* 802ADA60  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADA64  7F C4 F3 78 */	mr r4, r30
/* 802ADA68  4B FF 53 4D */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADA6C  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 802ADA70  C0 0D 82 90 */	lfs f0, VOL_SE_OBJECT_DEFAULT__7Z2Param(r13)
/* 802ADA74  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADA78  7F C4 F3 78 */	mr r4, r30
/* 802ADA7C  4B FF 53 39 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADA80  38 7F 02 3C */	addi r3, r31, 0x23c
/* 802ADA84  C0 0D 82 88 */	lfs f0, VOL_SE_CHAR_VOICE_DEFAULT__7Z2Param(r13)
/* 802ADA88  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADA8C  7F C4 F3 78 */	mr r4, r30
/* 802ADA90  4B FF 53 25 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADA94  38 7F 02 A8 */	addi r3, r31, 0x2a8
/* 802ADA98  C0 0D 82 8C */	lfs f0, VOL_SE_CHAR_MOVE_DEFAULT__7Z2Param(r13)
/* 802ADA9C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADAA0  7F C4 F3 78 */	mr r4, r30
/* 802ADAA4  4B FF 53 11 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADAA8  38 7F 03 14 */	addi r3, r31, 0x314
/* 802ADAAC  C0 0D 82 88 */	lfs f0, VOL_SE_CHAR_VOICE_DEFAULT__7Z2Param(r13)
/* 802ADAB0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADAB4  7F C4 F3 78 */	mr r4, r30
/* 802ADAB8  4B FF 52 FD */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADABC  38 7F 03 80 */	addi r3, r31, 0x380
/* 802ADAC0  C0 0D 82 90 */	lfs f0, VOL_SE_OBJECT_DEFAULT__7Z2Param(r13)
/* 802ADAC4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADAC8  7F C4 F3 78 */	mr r4, r30
/* 802ADACC  4B FF 52 E9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADAD0  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ADAD4  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802ADAD8  28 00 00 0C */	cmplwi r0, 0xc
/* 802ADADC  41 82 00 18 */	beq lbl_802ADAF4
/* 802ADAE0  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 802ADAE4  C0 0D 82 94 */	lfs f0, VOL_SE_ATMOSPHERE_DEFAULT__7Z2Param(r13)
/* 802ADAE8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802ADAEC  7F C4 F3 78 */	mr r4, r30
/* 802ADAF0  4B FF 52 C5 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802ADAF4:
/* 802ADAF4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 802ADAF8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 802ADAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ADB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ADB04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ADB08  7C 08 03 A6 */	mtlr r0
/* 802ADB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802ADB10  4E 80 00 20 */	blr 
