lbl_804AAB98:
/* 804AAB98  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 804AAB9C  7C 08 02 A6 */	mflr r0
/* 804AABA0  90 01 01 34 */	stw r0, 0x134(r1)
/* 804AABA4  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 804AABA8  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 804AABAC  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 804AABB0  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 804AABB4  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 804AABB8  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 804AABBC  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 804AABC0  F3 81 00 F8 */	psq_st f28, 248(r1), 0, 0 /* qr0 */
/* 804AABC4  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 804AABC8  F3 61 00 E8 */	psq_st f27, 232(r1), 0, 0 /* qr0 */
/* 804AABCC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804AABD0  4B EB 75 ED */	bl _savegpr_21
/* 804AABD4  7C 7C 1B 78 */	mr r28, r3
/* 804AABD8  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804AABDC  3B E3 B5 34 */	addi r31, r3, lit_3879@l /* 0x804BB534@l */
/* 804AABE0  38 61 00 58 */	addi r3, r1, 0x58
/* 804AABE4  4B BC C9 99 */	bl __ct__11dBgS_GndChkFv
/* 804AABE8  3C 60 80 4C */	lis r3, __vt__8cM3dGPla@ha /* 0x804BBB70@ha */
/* 804AABEC  38 03 BB 70 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804BBB70@l */
/* 804AABF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AABF4  C0 3C 06 E0 */	lfs f1, 0x6e0(r28)
/* 804AABF8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804AABFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AAC00  40 81 00 C8 */	ble lbl_804AACC8
/* 804AAC04  38 61 00 08 */	addi r3, r1, 8
/* 804AAC08  38 9C 06 4C */	addi r4, r28, 0x64c
/* 804AAC0C  38 BC 06 34 */	addi r5, r28, 0x634
/* 804AAC10  4B DB BF 25 */	bl __mi__4cXyzCFRC3Vec
/* 804AAC14  C0 21 00 08 */	lfs f1, 8(r1)
/* 804AAC18  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804AAC1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804AAC20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AAC24  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804AAC28  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 804AAC2C  4B DB CA 49 */	bl cM_atan2s__Fff
/* 804AAC30  7C 64 1B 78 */	mr r4, r3
/* 804AAC34  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AAC38  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AAC3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AAC40  4B B6 17 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 804AAC44  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804AAC48  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AAC4C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804AAC50  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AAC54  EC 41 00 2A */	fadds f2, f1, f0
/* 804AAC58  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AAC5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AAC60  40 81 00 0C */	ble lbl_804AAC6C
/* 804AAC64  FC 00 10 34 */	frsqrte f0, f2
/* 804AAC68  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AAC6C:
/* 804AAC6C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804AAC70  4B DB CA 05 */	bl cM_atan2s__Fff
/* 804AAC74  7C 03 00 D0 */	neg r0, r3
/* 804AAC78  7C 04 07 34 */	extsh r4, r0
/* 804AAC7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AAC80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AAC84  80 63 00 00 */	lwz r3, 0(r3)
/* 804AAC88  4B B6 17 15 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AAC8C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AAC90  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AAC94  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AAC98  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 804AAC9C  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 804AACA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AACA4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AACA8  38 61 00 38 */	addi r3, r1, 0x38
/* 804AACAC  38 81 00 14 */	addi r4, r1, 0x14
/* 804AACB0  4B DC 62 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AACB4  38 7C 06 E0 */	addi r3, r28, 0x6e0
/* 804AACB8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AACBC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804AACC0  4B DC 4D C1 */	bl cLib_addCalc0__FPfff
/* 804AACC4  48 00 00 14 */	b lbl_804AACD8
lbl_804AACC8:
/* 804AACC8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AACCC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804AACD0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804AACD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_804AACD8:
/* 804AACD8  A8 1C 0F 7E */	lha r0, 0xf7e(r28)
/* 804AACDC  2C 00 00 01 */	cmpwi r0, 1
/* 804AACE0  40 82 00 58 */	bne lbl_804AAD38
/* 804AACE4  A8 1C 05 7A */	lha r0, 0x57a(r28)
/* 804AACE8  2C 00 00 00 */	cmpwi r0, 0
/* 804AACEC  41 82 00 4C */	beq lbl_804AAD38
/* 804AACF0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AACF4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AACF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804AACFC  A8 9C 06 C4 */	lha r4, 0x6c4(r28)
/* 804AAD00  4B B6 16 DD */	bl mDoMtx_YrotS__FPA4_fs
/* 804AAD04  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AAD08  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AAD0C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AAD10  38 80 AC 04 */	li r4, -21500
/* 804AAD14  4B B6 16 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AAD18  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AAD1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AAD20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AAD24  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804AAD28  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AAD2C  38 61 00 38 */	addi r3, r1, 0x38
/* 804AAD30  38 81 00 14 */	addi r4, r1, 0x14
/* 804AAD34  4B DC 61 B9 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_804AAD38:
/* 804AAD38  C0 1C 06 AC */	lfs f0, 0x6ac(r28)
/* 804AAD3C  D0 1C 07 70 */	stfs f0, 0x770(r28)
/* 804AAD40  C0 1C 06 B0 */	lfs f0, 0x6b0(r28)
/* 804AAD44  D0 1C 07 74 */	stfs f0, 0x774(r28)
/* 804AAD48  C0 1C 06 B4 */	lfs f0, 0x6b4(r28)
/* 804AAD4C  D0 1C 07 78 */	stfs f0, 0x778(r28)
/* 804AAD50  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AAD54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AAD58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AAD5C  C0 1C 0F 5C */	lfs f0, 0xf5c(r28)
/* 804AAD60  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AAD64  3B A0 00 01 */	li r29, 1
/* 804AAD68  A8 1C 0F 7C */	lha r0, 0xf7c(r28)
/* 804AAD6C  2C 00 00 00 */	cmpwi r0, 0
/* 804AAD70  3B DC 07 7C */	addi r30, r28, 0x77c
/* 804AAD74  40 82 00 34 */	bne lbl_804AADA8
/* 804AAD78  A8 7C 0F 7E */	lha r3, 0xf7e(r28)
/* 804AAD7C  2C 03 00 04 */	cmpwi r3, 4
/* 804AAD80  41 82 00 24 */	beq lbl_804AADA4
/* 804AAD84  2C 03 00 03 */	cmpwi r3, 3
/* 804AAD88  41 82 00 1C */	beq lbl_804AADA4
/* 804AAD8C  2C 03 00 05 */	cmpwi r3, 5
/* 804AAD90  41 82 00 14 */	beq lbl_804AADA4
/* 804AAD94  7C 60 07 35 */	extsh. r0, r3
/* 804AAD98  41 82 00 0C */	beq lbl_804AADA4
/* 804AAD9C  2C 03 00 01 */	cmpwi r3, 1
/* 804AADA0  40 82 00 08 */	bne lbl_804AADA8
lbl_804AADA4:
/* 804AADA4  3B A0 00 00 */	li r29, 0
lbl_804AADA8:
/* 804AADA8  C3 9C 0F 64 */	lfs f28, 0xf64(r28)
/* 804AADAC  3A E0 00 01 */	li r23, 1
/* 804AADB0  3B 60 00 0C */	li r27, 0xc
/* 804AADB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AADB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AADBC  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 804AADC0  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 804AADC4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AADC8  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
/* 804AADCC  3C 60 80 4C */	lis r3, old_line_pos@ha /* 0x804BBC18@ha */
/* 804AADD0  3B 43 BC 18 */	addi r26, r3, old_line_pos@l /* 0x804BBC18@l */
lbl_804AADD4:
/* 804AADD4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804AADD8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 804AADDC  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 804AADE0  EC 03 00 28 */	fsubs f0, f3, f0
/* 804AADE4  EF C1 00 2A */	fadds f30, f1, f0
/* 804AADE8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804AADEC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804AADF0  C0 1E FF FC */	lfs f0, -4(r30)
/* 804AADF4  EC 02 00 28 */	fsubs f0, f2, f0
/* 804AADF8  EF A1 00 2A */	fadds f29, f1, f0
/* 804AADFC  2C 1D 00 00 */	cmpwi r29, 0
/* 804AAE00  41 82 00 74 */	beq lbl_804AAE74
/* 804AAE04  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 804AAE08  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 804AAE0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804AAE10  EC 01 00 2A */	fadds f0, f1, f0
/* 804AAE14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804AAE18  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804AAE1C  38 61 00 58 */	addi r3, r1, 0x58
/* 804AAE20  38 81 00 20 */	addi r4, r1, 0x20
/* 804AAE24  4B DB CE E9 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 804AAE28  7F 03 C3 78 */	mr r3, r24
/* 804AAE2C  38 81 00 58 */	addi r4, r1, 0x58
/* 804AAE30  4B BC 96 71 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804AAE34  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804AAE38  EC 40 08 2A */	fadds f2, f0, f1
/* 804AAE3C  C0 1C 05 90 */	lfs f0, 0x590(r28)
/* 804AAE40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AAE44  40 80 00 08 */	bge lbl_804AAE4C
/* 804AAE48  FC 40 00 90 */	fmr f2, f0
lbl_804AAE4C:
/* 804AAE4C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804AAE50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804AAE54  EC 00 E0 2A */	fadds f0, f0, f28
/* 804AAE58  EC 21 00 2A */	fadds f1, f1, f0
/* 804AAE5C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804AAE60  40 80 00 08 */	bge lbl_804AAE68
/* 804AAE64  FC 20 10 90 */	fmr f1, f2
lbl_804AAE68:
/* 804AAE68  C0 1E FF F8 */	lfs f0, -8(r30)
/* 804AAE6C  EF 61 00 28 */	fsubs f27, f1, f0
/* 804AAE70  48 00 00 74 */	b lbl_804AAEE4
lbl_804AAE74:
/* 804AAE74  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804AAE78  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804AAE7C  C0 1C 05 90 */	lfs f0, 0x590(r28)
/* 804AAE80  EC 01 00 2A */	fadds f0, f1, f0
/* 804AAE84  C0 7E 00 04 */	lfs f3, 4(r30)
/* 804AAE88  EC 00 18 28 */	fsubs f0, f0, f3
/* 804AAE8C  EF 82 00 32 */	fmuls f28, f2, f0
/* 804AAE90  C0 1C 0F 64 */	lfs f0, 0xf64(r28)
/* 804AAE94  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804AAE98  40 80 00 0C */	bge lbl_804AAEA4
/* 804AAE9C  FF 80 00 90 */	fmr f28, f0
/* 804AAEA0  48 00 00 14 */	b lbl_804AAEB4
lbl_804AAEA4:
/* 804AAEA4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804AAEA8  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804AAEAC  40 81 00 08 */	ble lbl_804AAEB4
/* 804AAEB0  FF 80 00 90 */	fmr f28, f0
lbl_804AAEB4:
/* 804AAEB4  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 804AAEB8  2C 00 00 04 */	cmpwi r0, 4
/* 804AAEBC  40 82 00 14 */	bne lbl_804AAED0
/* 804AAEC0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AAEC4  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804AAEC8  40 81 00 08 */	ble lbl_804AAED0
/* 804AAECC  FF 80 00 90 */	fmr f28, f0
lbl_804AAED0:
/* 804AAED0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804AAED4  C0 1E FF F8 */	lfs f0, -8(r30)
/* 804AAED8  EC 03 00 28 */	fsubs f0, f3, f0
/* 804AAEDC  EC 1C 00 2A */	fadds f0, f28, f0
/* 804AAEE0  EF 61 00 2A */	fadds f27, f1, f0
lbl_804AAEE4:
/* 804AAEE4  FC 20 F0 90 */	fmr f1, f30
/* 804AAEE8  FC 40 E8 90 */	fmr f2, f29
/* 804AAEEC  4B DB C7 89 */	bl cM_atan2s__Fff
/* 804AAEF0  7C 75 07 34 */	extsh r21, r3
/* 804AAEF4  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804AAEF8  EC 1D 07 72 */	fmuls f0, f29, f29
/* 804AAEFC  EC 41 00 2A */	fadds f2, f1, f0
/* 804AAF00  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804AAF04  40 81 00 0C */	ble lbl_804AAF10
/* 804AAF08  FC 00 10 34 */	frsqrte f0, f2
/* 804AAF0C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AAF10:
/* 804AAF10  FC 20 D8 90 */	fmr f1, f27
/* 804AAF14  4B DB C7 61 */	bl cM_atan2s__Fff
/* 804AAF18  7C 03 00 D0 */	neg r0, r3
/* 804AAF1C  7C 16 07 34 */	extsh r22, r0
/* 804AAF20  80 79 00 00 */	lwz r3, 0(r25)
/* 804AAF24  7E A4 AB 78 */	mr r4, r21
/* 804AAF28  4B B6 14 B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AAF2C  80 79 00 00 */	lwz r3, 0(r25)
/* 804AAF30  7E C4 B3 78 */	mr r4, r22
/* 804AAF34  4B B6 14 69 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AAF38  38 61 00 38 */	addi r3, r1, 0x38
/* 804AAF3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804AAF40  4B DC 5F AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AAF44  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804AAF48  7C 7A DA 14 */	add r3, r26, r27
/* 804AAF4C  D0 03 00 00 */	stfs f0, 0(r3)
/* 804AAF50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804AAF54  D0 03 00 04 */	stfs f0, 4(r3)
/* 804AAF58  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804AAF5C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804AAF60  C0 3E FF F4 */	lfs f1, -0xc(r30)
/* 804AAF64  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804AAF68  EC 01 00 2A */	fadds f0, f1, f0
/* 804AAF6C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804AAF70  C0 3E FF F8 */	lfs f1, -8(r30)
/* 804AAF74  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804AAF78  EC 01 00 2A */	fadds f0, f1, f0
/* 804AAF7C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804AAF80  C0 3E FF FC */	lfs f1, -4(r30)
/* 804AAF84  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804AAF88  EC 01 00 2A */	fadds f0, f1, f0
/* 804AAF8C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804AAF90  2C 17 00 63 */	cmpwi r23, 0x63
/* 804AAF94  40 82 00 1C */	bne lbl_804AAFB0
/* 804AAF98  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804AAF9C  D0 1C 07 64 */	stfs f0, 0x764(r28)
/* 804AAFA0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804AAFA4  D0 1C 07 68 */	stfs f0, 0x768(r28)
/* 804AAFA8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804AAFAC  D0 1C 07 6C */	stfs f0, 0x76c(r28)
lbl_804AAFB0:
/* 804AAFB0  3A F7 00 01 */	addi r23, r23, 1
/* 804AAFB4  2C 17 00 64 */	cmpwi r23, 0x64
/* 804AAFB8  3B 7B 00 0C */	addi r27, r27, 0xc
/* 804AAFBC  3B DE 00 0C */	addi r30, r30, 0xc
/* 804AAFC0  41 80 FE 14 */	blt lbl_804AADD4
/* 804AAFC4  3C 60 80 4C */	lis r3, __vt__8cM3dGPla@ha /* 0x804BBB70@ha */
/* 804AAFC8  38 03 BB 70 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804BBB70@l */
/* 804AAFCC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AAFD0  38 61 00 58 */	addi r3, r1, 0x58
/* 804AAFD4  38 80 FF FF */	li r4, -1
/* 804AAFD8  4B BC C6 19 */	bl __dt__11dBgS_GndChkFv
/* 804AAFDC  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 804AAFE0  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 804AAFE4  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 804AAFE8  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 804AAFEC  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 804AAFF0  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 804AAFF4  E3 81 00 F8 */	psq_l f28, 248(r1), 0, 0 /* qr0 */
/* 804AAFF8  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 804AAFFC  E3 61 00 E8 */	psq_l f27, 232(r1), 0, 0 /* qr0 */
/* 804AB000  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 804AB004  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804AB008  4B EB 72 01 */	bl _restgpr_21
/* 804AB00C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 804AB010  7C 08 03 A6 */	mtlr r0
/* 804AB014  38 21 01 30 */	addi r1, r1, 0x130
/* 804AB018  4E 80 00 20 */	blr 
