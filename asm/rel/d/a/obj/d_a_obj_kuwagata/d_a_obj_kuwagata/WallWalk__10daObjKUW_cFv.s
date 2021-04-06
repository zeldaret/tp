lbl_80C4AD50:
/* 80C4AD50  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80C4AD54  7C 08 02 A6 */	mflr r0
/* 80C4AD58  90 01 01 74 */	stw r0, 0x174(r1)
/* 80C4AD5C  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80C4AD60  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80C4AD64  39 61 01 60 */	addi r11, r1, 0x160
/* 80C4AD68  4B 71 74 75 */	bl _savegpr_29
/* 80C4AD6C  7C 7D 1B 78 */	mr r29, r3
/* 80C4AD70  3C 60 80 C5 */	lis r3, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4AD74  3B C3 D4 90 */	addi r30, r3, lit_3775@l /* 0x80C4D490@l */
/* 80C4AD78  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80C4AD7C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80C4AD80  EC 41 00 32 */	fmuls f2, f1, f0
/* 80C4AD84  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80C4AD88  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80C4AD8C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80C4AD90  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C4AD94  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80C4AD98  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C4AD9C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80C4ADA0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C4ADA4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C4ADA8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C4ADAC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C4ADB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C4ADB4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C4ADB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C4ADBC  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C4ADC0  4B 42 CE A9 */	bl __ct__11dBgS_LinChkFv
/* 80C4ADC4  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C4ADC8  4B 42 CE A1 */	bl __ct__11dBgS_LinChkFv
/* 80C4ADCC  38 61 01 34 */	addi r3, r1, 0x134
/* 80C4ADD0  4B 42 E0 99 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4ADD4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80C4ADD8  4B 42 E0 91 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C4ADDC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C4ADE0  4B 3C 1F 85 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C4ADE4  38 7D 09 9A */	addi r3, r29, 0x99a
/* 80C4ADE8  4B 3C 21 5D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C4ADEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ADF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ADF4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80C4ADF8  4B 3C 16 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C4ADFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4AE00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4AE04  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C4AE08  7C 85 23 78 */	mr r5, r4
/* 80C4AE0C  4B 6F BF 61 */	bl PSMTXMultVec
/* 80C4AE10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4AE14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4AE18  38 81 00 40 */	addi r4, r1, 0x40
/* 80C4AE1C  7C 85 23 78 */	mr r5, r4
/* 80C4AE20  4B 6F BF 4D */	bl PSMTXMultVec
/* 80C4AE24  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C4AE28  38 81 00 40 */	addi r4, r1, 0x40
/* 80C4AE2C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C4AE30  38 C0 00 00 */	li r6, 0
/* 80C4AE34  4B 42 CF 31 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C4AE38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4AE3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4AE40  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C4AE44  7F E3 FB 78 */	mr r3, r31
/* 80C4AE48  38 81 00 DC */	addi r4, r1, 0xdc
/* 80C4AE4C  4B 42 95 69 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C4AE50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4AE54  41 82 02 EC */	beq lbl_80C4B140
/* 80C4AE58  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80C4AE5C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C4AE60  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C4D634@ha */
/* 80C4AE64  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C4D634@l */
/* 80C4AE68  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C4AE6C  7F E3 FB 78 */	mr r3, r31
/* 80C4AE70  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80C4AE74  38 A1 00 58 */	addi r5, r1, 0x58
/* 80C4AE78  4B 42 98 CD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C4AE7C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C4AE80  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80C4AE84  4B 61 C7 F1 */	bl cM_atan2s__Fff
/* 80C4AE88  7C 7F 1B 78 */	mr r31, r3
/* 80C4AE8C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4AE90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C4AE94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C4AE98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C4AE9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C4AEA0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C4AEA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C4AEA8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C4AEAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C4AEB0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C4AEB4  38 81 00 10 */	addi r4, r1, 0x10
/* 80C4AEB8  4B 6F C4 E5 */	bl PSVECSquareDistance
/* 80C4AEBC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4AEC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4AEC4  40 81 00 58 */	ble lbl_80C4AF1C
/* 80C4AEC8  FC 00 08 34 */	frsqrte f0, f1
/* 80C4AECC  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80C4AED0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4AED4  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80C4AED8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4AEDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4AEE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4AEE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4AEE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4AEEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4AEF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4AEF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4AEF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4AEFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4AF00  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4AF04  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4AF08  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4AF0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4AF10  FF E1 00 32 */	fmul f31, f1, f0
/* 80C4AF14  FF E0 F8 18 */	frsp f31, f31
/* 80C4AF18  48 00 00 90 */	b lbl_80C4AFA8
lbl_80C4AF1C:
/* 80C4AF1C  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80C4AF20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4AF24  40 80 00 10 */	bge lbl_80C4AF34
/* 80C4AF28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4AF2C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4AF30  48 00 00 78 */	b lbl_80C4AFA8
lbl_80C4AF34:
/* 80C4AF34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C4AF38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C4AF3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4AF40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4AF44  7C 03 00 00 */	cmpw r3, r0
/* 80C4AF48  41 82 00 14 */	beq lbl_80C4AF5C
/* 80C4AF4C  40 80 00 40 */	bge lbl_80C4AF8C
/* 80C4AF50  2C 03 00 00 */	cmpwi r3, 0
/* 80C4AF54  41 82 00 20 */	beq lbl_80C4AF74
/* 80C4AF58  48 00 00 34 */	b lbl_80C4AF8C
lbl_80C4AF5C:
/* 80C4AF5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4AF60  41 82 00 0C */	beq lbl_80C4AF6C
/* 80C4AF64  38 00 00 01 */	li r0, 1
/* 80C4AF68  48 00 00 28 */	b lbl_80C4AF90
lbl_80C4AF6C:
/* 80C4AF6C  38 00 00 02 */	li r0, 2
/* 80C4AF70  48 00 00 20 */	b lbl_80C4AF90
lbl_80C4AF74:
/* 80C4AF74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4AF78  41 82 00 0C */	beq lbl_80C4AF84
/* 80C4AF7C  38 00 00 05 */	li r0, 5
/* 80C4AF80  48 00 00 10 */	b lbl_80C4AF90
lbl_80C4AF84:
/* 80C4AF84  38 00 00 03 */	li r0, 3
/* 80C4AF88  48 00 00 08 */	b lbl_80C4AF90
lbl_80C4AF8C:
/* 80C4AF8C  38 00 00 04 */	li r0, 4
lbl_80C4AF90:
/* 80C4AF90  2C 00 00 01 */	cmpwi r0, 1
/* 80C4AF94  40 82 00 10 */	bne lbl_80C4AFA4
/* 80C4AF98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4AF9C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4AFA0  48 00 00 08 */	b lbl_80C4AFA8
lbl_80C4AFA4:
/* 80C4AFA4  FF E0 08 90 */	fmr f31, f1
lbl_80C4AFA8:
/* 80C4AFA8  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80C4AFAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C4AFB0  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80C4AFB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4AFB8  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80C4AFBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C4AFC0  A8 7D 09 A2 */	lha r3, 0x9a2(r29)
/* 80C4AFC4  7F E0 07 34 */	extsh r0, r31
/* 80C4AFC8  7C 03 00 50 */	subf r0, r3, r0
/* 80C4AFCC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80C4AFD0  40 80 01 54 */	bge lbl_80C4B124
/* 80C4AFD4  2C 00 F0 00 */	cmpwi r0, -4096
/* 80C4AFD8  40 81 01 4C */	ble lbl_80C4B124
/* 80C4AFDC  38 61 00 28 */	addi r3, r1, 0x28
/* 80C4AFE0  38 9D 04 BC */	addi r4, r29, 0x4bc
/* 80C4AFE4  4B 6F C3 B9 */	bl PSVECSquareDistance
/* 80C4AFE8  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4AFEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4AFF0  40 81 00 58 */	ble lbl_80C4B048
/* 80C4AFF4  FC 00 08 34 */	frsqrte f0, f1
/* 80C4AFF8  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80C4AFFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B000  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80C4B004  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B008  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B00C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B010  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B014  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B018  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B01C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B020  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B024  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B028  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4B02C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4B030  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4B034  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4B038  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4B03C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C4B040  FC 20 08 18 */	frsp f1, f1
/* 80C4B044  48 00 00 88 */	b lbl_80C4B0CC
lbl_80C4B048:
/* 80C4B048  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80C4B04C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B050  40 80 00 10 */	bge lbl_80C4B060
/* 80C4B054  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4B058  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4B05C  48 00 00 70 */	b lbl_80C4B0CC
lbl_80C4B060:
/* 80C4B060  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C4B064  80 81 00 08 */	lwz r4, 8(r1)
/* 80C4B068  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4B06C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4B070  7C 03 00 00 */	cmpw r3, r0
/* 80C4B074  41 82 00 14 */	beq lbl_80C4B088
/* 80C4B078  40 80 00 40 */	bge lbl_80C4B0B8
/* 80C4B07C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4B080  41 82 00 20 */	beq lbl_80C4B0A0
/* 80C4B084  48 00 00 34 */	b lbl_80C4B0B8
lbl_80C4B088:
/* 80C4B088  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4B08C  41 82 00 0C */	beq lbl_80C4B098
/* 80C4B090  38 00 00 01 */	li r0, 1
/* 80C4B094  48 00 00 28 */	b lbl_80C4B0BC
lbl_80C4B098:
/* 80C4B098  38 00 00 02 */	li r0, 2
/* 80C4B09C  48 00 00 20 */	b lbl_80C4B0BC
lbl_80C4B0A0:
/* 80C4B0A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4B0A4  41 82 00 0C */	beq lbl_80C4B0B0
/* 80C4B0A8  38 00 00 05 */	li r0, 5
/* 80C4B0AC  48 00 00 10 */	b lbl_80C4B0BC
lbl_80C4B0B0:
/* 80C4B0B0  38 00 00 03 */	li r0, 3
/* 80C4B0B4  48 00 00 08 */	b lbl_80C4B0BC
lbl_80C4B0B8:
/* 80C4B0B8  38 00 00 04 */	li r0, 4
lbl_80C4B0BC:
/* 80C4B0BC  2C 00 00 01 */	cmpwi r0, 1
/* 80C4B0C0  40 82 00 0C */	bne lbl_80C4B0CC
/* 80C4B0C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4B0C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C4B0CC:
/* 80C4B0CC  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80C4B0D0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80C4B0D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C4B0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4B0DC  40 80 00 48 */	bge lbl_80C4B124
/* 80C4B0E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C4B0E4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C4B0E8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C4B0EC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C4B0F0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C4B0F4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C4B0F8  B3 FD 09 A2 */	sth r31, 0x9a2(r29)
/* 80C4B0FC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C4B100  FC 40 F8 90 */	fmr f2, f31
/* 80C4B104  4B 61 C5 71 */	bl cM_atan2s__Fff
/* 80C4B108  7C 03 00 D0 */	neg r0, r3
/* 80C4B10C  B0 1D 09 9E */	sth r0, 0x99e(r29)
/* 80C4B110  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80C4B114  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80C4B118  4B 61 C5 5D */	bl cM_atan2s__Fff
/* 80C4B11C  B0 7D 09 9A */	sth r3, 0x99a(r29)
/* 80C4B120  48 00 00 10 */	b lbl_80C4B130
lbl_80C4B124:
/* 80C4B124  A8 7D 09 90 */	lha r3, 0x990(r29)
/* 80C4B128  38 03 01 00 */	addi r0, r3, 0x100
/* 80C4B12C  B0 1D 09 90 */	sth r0, 0x990(r29)
lbl_80C4B130:
/* 80C4B130  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C4D634@ha */
/* 80C4B134  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C4D634@l */
/* 80C4B138  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C4B13C  48 00 00 10 */	b lbl_80C4B14C
lbl_80C4B140:
/* 80C4B140  A8 7D 09 90 */	lha r3, 0x990(r29)
/* 80C4B144  38 03 01 00 */	addi r0, r3, 0x100
/* 80C4B148  B0 1D 09 90 */	sth r0, 0x990(r29)
lbl_80C4B14C:
/* 80C4B14C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80C4B150  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80C4B154  38 A0 00 10 */	li r5, 0x10
/* 80C4B158  38 C0 00 50 */	li r6, 0x50
/* 80C4B15C  4B 62 54 AD */	bl cLib_addCalcAngleS2__FPssss
/* 80C4B160  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C4B164  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C4B168  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C4B16C  38 80 FF FF */	li r4, -1
/* 80C4B170  4B 42 CB 6D */	bl __dt__11dBgS_LinChkFv
/* 80C4B174  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C4B178  38 80 FF FF */	li r4, -1
/* 80C4B17C  4B 42 CB 61 */	bl __dt__11dBgS_LinChkFv
/* 80C4B180  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80C4B184  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80C4B188  39 61 01 60 */	addi r11, r1, 0x160
/* 80C4B18C  4B 71 70 9D */	bl _restgpr_29
/* 80C4B190  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C4B194  7C 08 03 A6 */	mtlr r0
/* 80C4B198  38 21 01 70 */	addi r1, r1, 0x170
/* 80C4B19C  4E 80 00 20 */	blr 
