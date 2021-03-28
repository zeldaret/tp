lbl_80691A94:
/* 80691A94  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80691A98  7C 08 02 A6 */	mflr r0
/* 80691A9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80691AA0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80691AA4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80691AA8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80691AAC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80691AB0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80691AB4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80691AB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80691ABC  4B CD 07 1C */	b _savegpr_28
/* 80691AC0  7C 7C 1B 78 */	mr r28, r3
/* 80691AC4  3C 60 80 69 */	lis r3, lit_3788@ha
/* 80691AC8  3B E3 46 90 */	addi r31, r3, lit_3788@l
/* 80691ACC  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 80691AD0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80691AD4  EF E1 00 28 */	fsubs f31, f1, f0
/* 80691AD8  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 80691ADC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80691AE0  EF C1 00 28 */	fsubs f30, f1, f0
/* 80691AE4  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 80691AE8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80691AEC  EF A1 00 28 */	fsubs f29, f1, f0
/* 80691AF0  FC 20 F8 90 */	fmr f1, f31
/* 80691AF4  FC 40 E8 90 */	fmr f2, f29
/* 80691AF8  4B BD 5B 7C */	b cM_atan2s__Fff
/* 80691AFC  7C 7E 1B 78 */	mr r30, r3
/* 80691B00  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80691B04  EC 1D 07 72 */	fmuls f0, f29, f29
/* 80691B08  EC 41 00 2A */	fadds f2, f1, f0
/* 80691B0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80691B10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80691B14  40 81 00 0C */	ble lbl_80691B20
/* 80691B18  FC 00 10 34 */	frsqrte f0, f2
/* 80691B1C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80691B20:
/* 80691B20  FC 20 F0 90 */	fmr f1, f30
/* 80691B24  4B BD 5B 50 */	b cM_atan2s__Fff
/* 80691B28  7C 03 00 D0 */	neg r0, r3
/* 80691B2C  7C 1D 07 34 */	extsh r29, r0
/* 80691B30  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80691B34  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 80691B38  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80691B3C  7F C4 F3 78 */	mr r4, r30
/* 80691B40  38 A0 00 0A */	li r5, 0xa
/* 80691B44  C0 3C 06 94 */	lfs f1, 0x694(r28)
/* 80691B48  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 80691B4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80691B50  FC 00 00 1E */	fctiwz f0, f0
/* 80691B54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80691B58  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80691B5C  4B BD EA AC */	b cLib_addCalcAngleS2__FPssss
/* 80691B60  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80691B64  7F A4 EB 78 */	mr r4, r29
/* 80691B68  38 A0 00 0A */	li r5, 0xa
/* 80691B6C  C0 3C 06 94 */	lfs f1, 0x694(r28)
/* 80691B70  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 80691B74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80691B78  FC 00 00 1E */	fctiwz f0, f0
/* 80691B7C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80691B80  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80691B84  4B BD EA 84 */	b cLib_addCalcAngleS2__FPssss
/* 80691B88  38 7C 06 90 */	addi r3, r28, 0x690
/* 80691B8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80691B90  FC 40 08 90 */	fmr f2, f1
/* 80691B94  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80691B98  4B BD DE A4 */	b cLib_addCalc2__FPffff
/* 80691B9C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80691BA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80691BA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80691BA8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80691BAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80691BB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80691BB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80691BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80691BBC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80691BC0  4B 97 A8 1C */	b mDoMtx_YrotS__FPA4_fs
/* 80691BC4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80691BC8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80691BCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80691BD0  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 80691BD4  4B 97 A7 C8 */	b mDoMtx_XrotM__FPA4_fs
/* 80691BD8  38 61 00 08 */	addi r3, r1, 8
/* 80691BDC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80691BE0  4B BD F3 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 80691BE4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80691BE8  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80691BEC  7C 65 1B 78 */	mr r5, r3
/* 80691BF0  4B CB 54 A0 */	b PSVECAdd
/* 80691BF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80691BF8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80691BFC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80691C00  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80691C04  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80691C08  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80691C0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80691C10  4B CD 06 14 */	b _restgpr_28
/* 80691C14  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80691C18  7C 08 03 A6 */	mtlr r0
/* 80691C1C  38 21 00 70 */	addi r1, r1, 0x70
/* 80691C20  4E 80 00 20 */	blr 
