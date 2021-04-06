lbl_804ACC1C:
/* 804ACC1C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804ACC20  7C 08 02 A6 */	mflr r0
/* 804ACC24  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804ACC28  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804ACC2C  4B EB 55 A1 */	bl _savegpr_25
/* 804ACC30  7C 7D 1B 78 */	mr r29, r3
/* 804ACC34  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804ACC38  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804ACC3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804ACC40  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804ACC44  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 804ACC48  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804ACC4C  7F A4 EB 78 */	mr r4, r29
/* 804ACC50  4B C4 71 FD */	bl checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c
/* 804ACC54  2C 03 00 00 */	cmpwi r3, 0
/* 804ACC58  40 82 00 90 */	bne lbl_804ACCE8
/* 804ACC5C  38 00 00 00 */	li r0, 0
/* 804ACC60  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804ACC64  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804ACC68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804ACC6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804ACC70  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804ACC74  7C 00 07 74 */	extsb r0, r0
/* 804ACC78  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804ACC7C  7C 63 02 14 */	add r3, r3, r0
/* 804ACC80  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 804ACC84  C0 1D 13 C4 */	lfs f0, 0x13c4(r29)
/* 804ACC88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804ACC8C  C0 1D 13 C8 */	lfs f0, 0x13c8(r29)
/* 804ACC90  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804ACC94  C0 1D 13 CC */	lfs f0, 0x13cc(r29)
/* 804ACC98  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804ACC9C  C0 1D 13 B8 */	lfs f0, 0x13b8(r29)
/* 804ACCA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804ACCA4  C0 1D 13 BC */	lfs f0, 0x13bc(r29)
/* 804ACCA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804ACCAC  C0 1D 13 C0 */	lfs f0, 0x13c0(r29)
/* 804ACCB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804ACCB4  38 7B 02 48 */	addi r3, r27, 0x248
/* 804ACCB8  38 81 00 2C */	addi r4, r1, 0x2c
/* 804ACCBC  38 A1 00 20 */	addi r5, r1, 0x20
/* 804ACCC0  C0 3D 14 08 */	lfs f1, 0x1408(r29)
/* 804ACCC4  38 C0 00 00 */	li r6, 0
/* 804ACCC8  4B CD 3E D9 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 804ACCCC  38 7B 02 48 */	addi r3, r27, 0x248
/* 804ACCD0  4B CB 47 DD */	bl Start__9dCamera_cFv
/* 804ACCD4  38 7B 02 48 */	addi r3, r27, 0x248
/* 804ACCD8  38 80 00 00 */	li r4, 0
/* 804ACCDC  4B CB 63 31 */	bl SetTrimSize__9dCamera_cFl
/* 804ACCE0  4B D4 D3 ED */	bl dMw_onMenuRing__Fv
/* 804ACCE4  48 00 07 70 */	b lbl_804AD454
lbl_804ACCE8:
/* 804ACCE8  38 7D 14 F8 */	addi r3, r29, 0x14f8
/* 804ACCEC  38 80 E4 A8 */	li r4, -7000
/* 804ACCF0  38 A0 00 08 */	li r5, 8
/* 804ACCF4  38 C0 00 C8 */	li r6, 0xc8
/* 804ACCF8  4B DC 39 11 */	bl cLib_addCalcAngleS2__FPssss
/* 804ACCFC  A8 7D 14 F8 */	lha r3, 0x14f8(r29)
/* 804ACD00  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804ACD04  38 00 00 00 */	li r0, 0
/* 804ACD08  B0 04 31 60 */	sth r0, 0x3160(r4)
/* 804ACD0C  B0 04 31 62 */	sth r0, 0x3162(r4)
/* 804ACD10  B0 64 31 64 */	sth r3, 0x3164(r4)
/* 804ACD14  38 61 00 14 */	addi r3, r1, 0x14
/* 804ACD18  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804ACD1C  38 BD 06 AC */	addi r5, r29, 0x6ac
/* 804ACD20  4B DB 9E 15 */	bl __mi__4cXyzCFRC3Vec
/* 804ACD24  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804ACD28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804ACD2C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804ACD30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804ACD34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804ACD38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804ACD3C  80 1D 14 F0 */	lwz r0, 0x14f0(r29)
/* 804ACD40  2C 00 00 00 */	cmpwi r0, 0
/* 804ACD44  41 82 01 30 */	beq lbl_804ACE74
/* 804ACD48  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804ACD4C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 804ACD50  EC 01 00 32 */	fmuls f0, f1, f0
/* 804ACD54  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804ACD58  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 804ACD5C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804ACD60  38 61 00 44 */	addi r3, r1, 0x44
/* 804ACD64  4B E9 A3 D5 */	bl PSVECSquareMag
/* 804ACD68  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804ACD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ACD70  40 81 00 58 */	ble lbl_804ACDC8
/* 804ACD74  FC 00 08 34 */	frsqrte f0, f1
/* 804ACD78  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804ACD7C  FC 44 00 32 */	fmul f2, f4, f0
/* 804ACD80  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804ACD84  FC 00 00 32 */	fmul f0, f0, f0
/* 804ACD88  FC 01 00 32 */	fmul f0, f1, f0
/* 804ACD8C  FC 03 00 28 */	fsub f0, f3, f0
/* 804ACD90  FC 02 00 32 */	fmul f0, f2, f0
/* 804ACD94  FC 44 00 32 */	fmul f2, f4, f0
/* 804ACD98  FC 00 00 32 */	fmul f0, f0, f0
/* 804ACD9C  FC 01 00 32 */	fmul f0, f1, f0
/* 804ACDA0  FC 03 00 28 */	fsub f0, f3, f0
/* 804ACDA4  FC 02 00 32 */	fmul f0, f2, f0
/* 804ACDA8  FC 44 00 32 */	fmul f2, f4, f0
/* 804ACDAC  FC 00 00 32 */	fmul f0, f0, f0
/* 804ACDB0  FC 01 00 32 */	fmul f0, f1, f0
/* 804ACDB4  FC 03 00 28 */	fsub f0, f3, f0
/* 804ACDB8  FC 02 00 32 */	fmul f0, f2, f0
/* 804ACDBC  FC 21 00 32 */	fmul f1, f1, f0
/* 804ACDC0  FC 20 08 18 */	frsp f1, f1
/* 804ACDC4  48 00 00 88 */	b lbl_804ACE4C
lbl_804ACDC8:
/* 804ACDC8  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804ACDCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ACDD0  40 80 00 10 */	bge lbl_804ACDE0
/* 804ACDD4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804ACDD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804ACDDC  48 00 00 70 */	b lbl_804ACE4C
lbl_804ACDE0:
/* 804ACDE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804ACDE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804ACDE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804ACDEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804ACDF0  7C 03 00 00 */	cmpw r3, r0
/* 804ACDF4  41 82 00 14 */	beq lbl_804ACE08
/* 804ACDF8  40 80 00 40 */	bge lbl_804ACE38
/* 804ACDFC  2C 03 00 00 */	cmpwi r3, 0
/* 804ACE00  41 82 00 20 */	beq lbl_804ACE20
/* 804ACE04  48 00 00 34 */	b lbl_804ACE38
lbl_804ACE08:
/* 804ACE08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804ACE0C  41 82 00 0C */	beq lbl_804ACE18
/* 804ACE10  38 00 00 01 */	li r0, 1
/* 804ACE14  48 00 00 28 */	b lbl_804ACE3C
lbl_804ACE18:
/* 804ACE18  38 00 00 02 */	li r0, 2
/* 804ACE1C  48 00 00 20 */	b lbl_804ACE3C
lbl_804ACE20:
/* 804ACE20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804ACE24  41 82 00 0C */	beq lbl_804ACE30
/* 804ACE28  38 00 00 05 */	li r0, 5
/* 804ACE2C  48 00 00 10 */	b lbl_804ACE3C
lbl_804ACE30:
/* 804ACE30  38 00 00 03 */	li r0, 3
/* 804ACE34  48 00 00 08 */	b lbl_804ACE3C
lbl_804ACE38:
/* 804ACE38  38 00 00 04 */	li r0, 4
lbl_804ACE3C:
/* 804ACE3C  2C 00 00 01 */	cmpwi r0, 1
/* 804ACE40  40 82 00 0C */	bne lbl_804ACE4C
/* 804ACE44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804ACE48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804ACE4C:
/* 804ACE4C  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 804ACE50  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ACE54  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804ACE58  A8 7D 07 5C */	lha r3, 0x75c(r29)
/* 804ACE5C  38 03 11 00 */	addi r0, r3, 0x1100
/* 804ACE60  B0 1D 07 5C */	sth r0, 0x75c(r29)
/* 804ACE64  A8 7D 07 5E */	lha r3, 0x75e(r29)
/* 804ACE68  38 03 08 80 */	addi r0, r3, 0x880
/* 804ACE6C  B0 1D 07 5E */	sth r0, 0x75e(r29)
/* 804ACE70  48 00 01 1C */	b lbl_804ACF8C
lbl_804ACE74:
/* 804ACE74  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804ACE78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804ACE7C  38 61 00 44 */	addi r3, r1, 0x44
/* 804ACE80  4B E9 A2 B9 */	bl PSVECSquareMag
/* 804ACE84  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804ACE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ACE8C  40 81 00 58 */	ble lbl_804ACEE4
/* 804ACE90  FC 00 08 34 */	frsqrte f0, f1
/* 804ACE94  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804ACE98  FC 44 00 32 */	fmul f2, f4, f0
/* 804ACE9C  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804ACEA0  FC 00 00 32 */	fmul f0, f0, f0
/* 804ACEA4  FC 01 00 32 */	fmul f0, f1, f0
/* 804ACEA8  FC 03 00 28 */	fsub f0, f3, f0
/* 804ACEAC  FC 02 00 32 */	fmul f0, f2, f0
/* 804ACEB0  FC 44 00 32 */	fmul f2, f4, f0
/* 804ACEB4  FC 00 00 32 */	fmul f0, f0, f0
/* 804ACEB8  FC 01 00 32 */	fmul f0, f1, f0
/* 804ACEBC  FC 03 00 28 */	fsub f0, f3, f0
/* 804ACEC0  FC 02 00 32 */	fmul f0, f2, f0
/* 804ACEC4  FC 44 00 32 */	fmul f2, f4, f0
/* 804ACEC8  FC 00 00 32 */	fmul f0, f0, f0
/* 804ACECC  FC 01 00 32 */	fmul f0, f1, f0
/* 804ACED0  FC 03 00 28 */	fsub f0, f3, f0
/* 804ACED4  FC 02 00 32 */	fmul f0, f2, f0
/* 804ACED8  FC 21 00 32 */	fmul f1, f1, f0
/* 804ACEDC  FC 20 08 18 */	frsp f1, f1
/* 804ACEE0  48 00 00 88 */	b lbl_804ACF68
lbl_804ACEE4:
/* 804ACEE4  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804ACEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ACEEC  40 80 00 10 */	bge lbl_804ACEFC
/* 804ACEF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804ACEF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804ACEF8  48 00 00 70 */	b lbl_804ACF68
lbl_804ACEFC:
/* 804ACEFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804ACF00  80 81 00 08 */	lwz r4, 8(r1)
/* 804ACF04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804ACF08  3C 00 7F 80 */	lis r0, 0x7f80
/* 804ACF0C  7C 03 00 00 */	cmpw r3, r0
/* 804ACF10  41 82 00 14 */	beq lbl_804ACF24
/* 804ACF14  40 80 00 40 */	bge lbl_804ACF54
/* 804ACF18  2C 03 00 00 */	cmpwi r3, 0
/* 804ACF1C  41 82 00 20 */	beq lbl_804ACF3C
/* 804ACF20  48 00 00 34 */	b lbl_804ACF54
lbl_804ACF24:
/* 804ACF24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804ACF28  41 82 00 0C */	beq lbl_804ACF34
/* 804ACF2C  38 00 00 01 */	li r0, 1
/* 804ACF30  48 00 00 28 */	b lbl_804ACF58
lbl_804ACF34:
/* 804ACF34  38 00 00 02 */	li r0, 2
/* 804ACF38  48 00 00 20 */	b lbl_804ACF58
lbl_804ACF3C:
/* 804ACF3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804ACF40  41 82 00 0C */	beq lbl_804ACF4C
/* 804ACF44  38 00 00 05 */	li r0, 5
/* 804ACF48  48 00 00 10 */	b lbl_804ACF58
lbl_804ACF4C:
/* 804ACF4C  38 00 00 03 */	li r0, 3
/* 804ACF50  48 00 00 08 */	b lbl_804ACF58
lbl_804ACF54:
/* 804ACF54  38 00 00 04 */	li r0, 4
lbl_804ACF58:
/* 804ACF58  2C 00 00 01 */	cmpwi r0, 1
/* 804ACF5C  40 82 00 0C */	bne lbl_804ACF68
/* 804ACF60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804ACF64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804ACF68:
/* 804ACF68  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 804ACF6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ACF70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804ACF74  A8 7D 07 5C */	lha r3, 0x75c(r29)
/* 804ACF78  38 03 22 00 */	addi r0, r3, 0x2200
/* 804ACF7C  B0 1D 07 5C */	sth r0, 0x75c(r29)
/* 804ACF80  A8 7D 07 5E */	lha r3, 0x75e(r29)
/* 804ACF84  38 03 11 00 */	addi r0, r3, 0x1100
/* 804ACF88  B0 1D 07 5E */	sth r0, 0x75e(r29)
lbl_804ACF8C:
/* 804ACF8C  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 804ACF90  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804ACF94  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 804ACF98  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 804ACF9C  4B DC 2A A1 */	bl cLib_addCalc2__FPffff
/* 804ACFA0  38 7D 0F 5C */	addi r3, r29, 0xf5c
/* 804ACFA4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804ACFA8  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804ACFAC  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 804ACFB0  4B DC 2A 8D */	bl cLib_addCalc2__FPffff
/* 804ACFB4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804ACFB8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804ACFBC  80 63 00 00 */	lwz r3, 0(r3)
/* 804ACFC0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804ACFC4  4B B5 F4 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 804ACFC8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804ACFCC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804ACFD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804ACFD4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804ACFD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804ACFDC  38 61 00 44 */	addi r3, r1, 0x44
/* 804ACFE0  38 81 00 38 */	addi r4, r1, 0x38
/* 804ACFE4  4B DC 3F 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804ACFE8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804ACFEC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 804ACFF0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804ACFF4  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 804ACFF8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 804ACFFC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 804AD000  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AD004  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AD008  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804AD00C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 804AD010  7C 65 1B 78 */	mr r5, r3
/* 804AD014  4B E9 A0 7D */	bl PSVECAdd
/* 804AD018  3B 60 00 00 */	li r27, 0
/* 804AD01C  A8 1D 05 7C */	lha r0, 0x57c(r29)
/* 804AD020  2C 00 00 00 */	cmpwi r0, 0
/* 804AD024  40 82 02 24 */	bne lbl_804AD248
/* 804AD028  3B 20 00 00 */	li r25, 0
/* 804AD02C  38 61 00 50 */	addi r3, r1, 0x50
/* 804AD030  4B BC AC 39 */	bl __ct__11dBgS_LinChkFv
/* 804AD034  38 61 00 A8 */	addi r3, r1, 0xa8
/* 804AD038  4B BC BE A9 */	bl SetRope__16dBgS_PolyPassChkFv
/* 804AD03C  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 804AD040  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804AD044  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 804AD048  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804AD04C  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 804AD050  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AD054  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 804AD058  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 804AD05C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804AD060  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AD064  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 804AD068  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 804AD06C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804AD070  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804AD074  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AD078  EC 03 00 2A */	fadds f0, f3, f0
/* 804AD07C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AD080  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804AD084  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AD088  EC 02 00 2A */	fadds f0, f2, f0
/* 804AD08C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AD090  38 61 00 50 */	addi r3, r1, 0x50
/* 804AD094  38 81 00 44 */	addi r4, r1, 0x44
/* 804AD098  38 A1 00 38 */	addi r5, r1, 0x38
/* 804AD09C  7F A6 EB 78 */	mr r6, r29
/* 804AD0A0  4B BC AC C5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804AD0A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AD0A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AD0AC  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 804AD0B0  7F 43 D3 78 */	mr r3, r26
/* 804AD0B4  38 81 00 50 */	addi r4, r1, 0x50
/* 804AD0B8  4B BC 72 FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804AD0BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AD0C0  41 82 00 08 */	beq lbl_804AD0C8
/* 804AD0C4  3B 20 00 01 */	li r25, 1
lbl_804AD0C8:
/* 804AD0C8  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 804AD0CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804AD0D0  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 804AD0D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804AD0D8  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 804AD0DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AD0E0  38 61 00 50 */	addi r3, r1, 0x50
/* 804AD0E4  38 81 00 44 */	addi r4, r1, 0x44
/* 804AD0E8  38 A1 00 38 */	addi r5, r1, 0x38
/* 804AD0EC  7F A6 EB 78 */	mr r6, r29
/* 804AD0F0  4B BC AC 75 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804AD0F4  7F 43 D3 78 */	mr r3, r26
/* 804AD0F8  38 81 00 50 */	addi r4, r1, 0x50
/* 804AD0FC  4B BC 72 B9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804AD100  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AD104  41 82 00 08 */	beq lbl_804AD10C
/* 804AD108  3B 20 00 01 */	li r25, 1
lbl_804AD10C:
/* 804AD10C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804AD110  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804AD114  EC A1 00 2A */	fadds f5, f1, f0
/* 804AD118  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 804AD11C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804AD120  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 804AD124  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804AD128  EC 82 00 32 */	fmuls f4, f2, f0
/* 804AD12C  EC 01 20 28 */	fsubs f0, f1, f4
/* 804AD130  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804AD134  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 804AD138  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804AD13C  EC 62 00 32 */	fmuls f3, f2, f0
/* 804AD140  EC 01 18 28 */	fsubs f0, f1, f3
/* 804AD144  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AD148  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 804AD14C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 804AD150  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804AD154  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AD158  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 804AD15C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804AD160  EC 02 20 28 */	fsubs f0, f2, f4
/* 804AD164  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AD168  EC 01 18 28 */	fsubs f0, f1, f3
/* 804AD16C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AD170  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 804AD174  38 61 00 50 */	addi r3, r1, 0x50
/* 804AD178  38 81 00 44 */	addi r4, r1, 0x44
/* 804AD17C  38 A1 00 38 */	addi r5, r1, 0x38
/* 804AD180  7F A6 EB 78 */	mr r6, r29
/* 804AD184  4B BC AB E1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804AD188  7F 43 D3 78 */	mr r3, r26
/* 804AD18C  38 81 00 50 */	addi r4, r1, 0x50
/* 804AD190  4B BC 72 25 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804AD194  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AD198  40 82 00 0C */	bne lbl_804AD1A4
/* 804AD19C  2C 19 00 00 */	cmpwi r25, 0
/* 804AD1A0  41 82 00 9C */	beq lbl_804AD23C
lbl_804AD1A4:
/* 804AD1A4  C0 3D 04 BC */	lfs f1, 0x4bc(r29)
/* 804AD1A8  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804AD1AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AD1B0  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 804AD1B4  C0 3D 04 C4 */	lfs f1, 0x4c4(r29)
/* 804AD1B8  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804AD1BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AD1C0  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 804AD1C4  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 804AD1C8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804AD1CC  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 804AD1D0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804AD1D4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804AD1D8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AD1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD1E0  40 80 00 54 */	bge lbl_804AD234
/* 804AD1E4  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804AD1E8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AD1EC  2C 19 00 00 */	cmpwi r25, 0
/* 804AD1F0  41 82 00 44 */	beq lbl_804AD234
/* 804AD1F4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 804AD1F8  4B DB A7 95 */	bl cM_rndFX__Ff
/* 804AD1FC  FC 00 08 1E */	fctiwz f0, f1
/* 804AD200  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 804AD204  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804AD208  B0 1D 11 4E */	sth r0, 0x114e(r29)
/* 804AD20C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 804AD210  4B DB A7 7D */	bl cM_rndFX__Ff
/* 804AD214  FC 00 08 1E */	fctiwz f0, f1
/* 804AD218  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 804AD21C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 804AD220  B0 1D 11 50 */	sth r0, 0x1150(r29)
/* 804AD224  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 804AD228  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AD22C  7F A3 EB 78 */	mr r3, r29
/* 804AD230  4B FF F9 65 */	bl lure_bound_se_set__FP13dmg_rod_class
lbl_804AD234:
/* 804AD234  38 00 00 0A */	li r0, 0xa
/* 804AD238  B0 1D 05 7C */	sth r0, 0x57c(r29)
lbl_804AD23C:
/* 804AD23C  38 61 00 50 */	addi r3, r1, 0x50
/* 804AD240  38 80 FF FF */	li r4, -1
/* 804AD244  4B BC AA 99 */	bl __dt__11dBgS_LinChkFv
lbl_804AD248:
/* 804AD248  80 1D 11 FC */	lwz r0, 0x11fc(r29)
/* 804AD24C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804AD250  41 82 00 38 */	beq lbl_804AD288
/* 804AD254  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 804AD258  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AD25C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804AD260  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804AD264  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AD268  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AD26C  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 804AD270  4B DB A7 1D */	bl cM_rndFX__Ff
/* 804AD274  FC 00 08 1E */	fctiwz f0, f1
/* 804AD278  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 804AD27C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 804AD280  B0 1D 0F FC */	sth r0, 0xffc(r29)
/* 804AD284  3B 60 00 02 */	li r27, 2
lbl_804AD288:
/* 804AD288  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804AD28C  7C 00 07 75 */	extsb. r0, r0
/* 804AD290  41 82 00 90 */	beq lbl_804AD320
/* 804AD294  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804AD298  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 804AD29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD2A0  40 80 00 08 */	bge lbl_804AD2A8
/* 804AD2A4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_804AD2A8:
/* 804AD2A8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 804AD2AC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AD2B0  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804AD2B4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804AD2B8  38 00 00 1E */	li r0, 0x1e
/* 804AD2BC  98 1D 10 09 */	stb r0, 0x1009(r29)
/* 804AD2C0  98 1D 10 A4 */	stb r0, 0x10a4(r29)
/* 804AD2C4  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 804AD2C8  2C 00 00 03 */	cmpwi r0, 3
/* 804AD2CC  40 82 00 48 */	bne lbl_804AD314
/* 804AD2D0  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 804AD2D4  4B DB A6 81 */	bl cM_rndF__Ff
/* 804AD2D8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 804AD2DC  EC 00 08 2A */	fadds f0, f0, f1
/* 804AD2E0  FC 00 00 50 */	fneg f0, f0
/* 804AD2E4  FC 00 00 1E */	fctiwz f0, f0
/* 804AD2E8  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 804AD2EC  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 804AD2F0  B0 1D 10 20 */	sth r0, 0x1020(r29)
/* 804AD2F4  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 804AD2F8  4B DB A6 5D */	bl cM_rndF__Ff
/* 804AD2FC  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 804AD300  EC 00 08 2A */	fadds f0, f0, f1
/* 804AD304  FC 00 00 1E */	fctiwz f0, f0
/* 804AD308  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 804AD30C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804AD310  B0 1D 10 22 */	sth r0, 0x1022(r29)
lbl_804AD314:
/* 804AD314  38 00 00 02 */	li r0, 2
/* 804AD318  98 1D 10 A8 */	stb r0, 0x10a8(r29)
/* 804AD31C  3B 60 00 01 */	li r27, 1
lbl_804AD320:
/* 804AD320  2C 1B 00 00 */	cmpwi r27, 0
/* 804AD324  41 82 00 D0 */	beq lbl_804AD3F4
/* 804AD328  38 00 00 04 */	li r0, 4
/* 804AD32C  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804AD330  38 00 00 1E */	li r0, 0x1e
/* 804AD334  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 804AD338  38 60 00 05 */	li r3, 5
/* 804AD33C  B0 7D 05 82 */	sth r3, 0x582(r29)
/* 804AD340  38 00 00 19 */	li r0, 0x19
/* 804AD344  B0 1D 05 86 */	sth r0, 0x586(r29)
/* 804AD348  B0 7D 13 B4 */	sth r3, 0x13b4(r29)
/* 804AD34C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AD350  D0 1D 14 10 */	stfs f0, 0x1410(r29)
/* 804AD354  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 804AD358  2C 00 00 04 */	cmpwi r0, 4
/* 804AD35C  40 82 00 48 */	bne lbl_804AD3A4
/* 804AD360  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804AD364  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 804AD368  A8 04 05 9E */	lha r0, 0x59e(r4)
/* 804AD36C  7C 03 02 14 */	add r0, r3, r0
/* 804AD370  7C 03 07 34 */	extsh r3, r0
/* 804AD374  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 804AD378  7C 03 00 50 */	subf r0, r3, r0
/* 804AD37C  7C 00 07 35 */	extsh. r0, r0
/* 804AD380  40 80 00 10 */	bge lbl_804AD390
/* 804AD384  38 00 10 00 */	li r0, 0x1000
/* 804AD388  B0 1D 14 1A */	sth r0, 0x141a(r29)
/* 804AD38C  48 00 00 0C */	b lbl_804AD398
lbl_804AD390:
/* 804AD390  38 00 F0 00 */	li r0, -4096
/* 804AD394  B0 1D 14 1A */	sth r0, 0x141a(r29)
lbl_804AD398:
/* 804AD398  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 804AD39C  D0 1D 14 0C */	stfs f0, 0x140c(r29)
/* 804AD3A0  48 00 00 0C */	b lbl_804AD3AC
lbl_804AD3A4:
/* 804AD3A4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804AD3A8  D0 1D 14 0C */	stfs f0, 0x140c(r29)
lbl_804AD3AC:
/* 804AD3AC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AD3B0  D0 1D 14 D4 */	stfs f0, 0x14d4(r29)
/* 804AD3B4  D0 1D 14 D0 */	stfs f0, 0x14d0(r29)
/* 804AD3B8  38 00 00 00 */	li r0, 0
/* 804AD3BC  B0 1D 11 4C */	sth r0, 0x114c(r29)
/* 804AD3C0  B0 1D 11 4A */	sth r0, 0x114a(r29)
/* 804AD3C4  B0 1D 11 50 */	sth r0, 0x1150(r29)
/* 804AD3C8  B0 1D 11 4E */	sth r0, 0x114e(r29)
/* 804AD3CC  98 1D 10 08 */	stb r0, 0x1008(r29)
/* 804AD3D0  98 1D 10 0C */	stb r0, 0x100c(r29)
/* 804AD3D4  98 1D 10 0A */	stb r0, 0x100a(r29)
/* 804AD3D8  98 1D 10 0B */	stb r0, 0x100b(r29)
/* 804AD3DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804AD3E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804AD3E4  80 63 00 00 */	lwz r3, 0(r3)
/* 804AD3E8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804AD3EC  38 80 00 01 */	li r4, 1
/* 804AD3F0  4B E0 56 99 */	bl changeFishingBgm__8Z2SeqMgrFl
lbl_804AD3F4:
/* 804AD3F4  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 804AD3F8  38 80 00 00 */	li r4, 0
/* 804AD3FC  38 A0 00 02 */	li r5, 2
/* 804AD400  38 C0 10 00 */	li r6, 0x1000
/* 804AD404  4B DC 32 05 */	bl cLib_addCalcAngleS2__FPssss
/* 804AD408  A8 7D 11 4A */	lha r3, 0x114a(r29)
/* 804AD40C  A8 1D 11 4E */	lha r0, 0x114e(r29)
/* 804AD410  7C 03 02 14 */	add r0, r3, r0
/* 804AD414  B0 1D 11 4A */	sth r0, 0x114a(r29)
/* 804AD418  A8 7D 11 4C */	lha r3, 0x114c(r29)
/* 804AD41C  A8 1D 11 50 */	lha r0, 0x1150(r29)
/* 804AD420  7C 03 02 14 */	add r0, r3, r0
/* 804AD424  B0 1D 11 4C */	sth r0, 0x114c(r29)
/* 804AD428  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002007A@ha */
/* 804AD42C  38 03 00 7A */	addi r0, r3, 0x007A /* 0x0002007A@l */
/* 804AD430  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AD434  38 7D 10 B4 */	addi r3, r29, 0x10b4
/* 804AD438  38 81 00 10 */	addi r4, r1, 0x10
/* 804AD43C  38 A0 00 00 */	li r5, 0
/* 804AD440  38 C0 FF FF */	li r6, -1
/* 804AD444  81 9D 10 B4 */	lwz r12, 0x10b4(r29)
/* 804AD448  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804AD44C  7D 89 03 A6 */	mtctr r12
/* 804AD450  4E 80 04 21 */	bctrl 
lbl_804AD454:
/* 804AD454  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804AD458  4B EB 4D C1 */	bl _restgpr_25
/* 804AD45C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 804AD460  7C 08 03 A6 */	mtlr r0
/* 804AD464  38 21 00 F0 */	addi r1, r1, 0xf0
/* 804AD468  4E 80 00 20 */	blr 
