lbl_80C2B998:
/* 80C2B998  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80C2B99C  7C 08 02 A6 */	mflr r0
/* 80C2B9A0  90 01 01 74 */	stw r0, 0x174(r1)
/* 80C2B9A4  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80C2B9A8  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80C2B9AC  39 61 01 60 */	addi r11, r1, 0x160
/* 80C2B9B0  4B 73 68 2D */	bl _savegpr_29
/* 80C2B9B4  7C 7D 1B 78 */	mr r29, r3
/* 80C2B9B8  3C 60 80 C3 */	lis r3, lit_3775@ha /* 0x80C2E110@ha */
/* 80C2B9BC  3B C3 E1 10 */	addi r30, r3, lit_3775@l /* 0x80C2E110@l */
/* 80C2B9C0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80C2B9C4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80C2B9C8  EC 41 00 32 */	fmuls f2, f1, f0
/* 80C2B9CC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C2B9D0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80C2B9D4  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80C2B9D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C2B9DC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80C2B9E0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C2B9E4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80C2B9E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C2B9EC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C2B9F0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C2B9F4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80C2B9F8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C2B9FC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80C2BA00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C2BA04  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C2BA08  4B 44 C2 61 */	bl __ct__11dBgS_LinChkFv
/* 80C2BA0C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C2BA10  4B 44 C2 59 */	bl __ct__11dBgS_LinChkFv
/* 80C2BA14  38 61 01 34 */	addi r3, r1, 0x134
/* 80C2BA18  4B 44 D4 51 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2BA1C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80C2BA20  4B 44 D4 49 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2BA24  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C2BA28  4B 3E 13 3D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C2BA2C  38 7D 07 2A */	addi r3, r29, 0x72a
/* 80C2BA30  4B 3E 15 15 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C2BA34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2BA38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2BA3C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80C2BA40  4B 3E 09 F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C2BA44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2BA48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2BA4C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C2BA50  7C 85 23 78 */	mr r5, r4
/* 80C2BA54  4B 71 B3 19 */	bl PSMTXMultVec
/* 80C2BA58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2BA5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2BA60  38 81 00 40 */	addi r4, r1, 0x40
/* 80C2BA64  7C 85 23 78 */	mr r5, r4
/* 80C2BA68  4B 71 B3 05 */	bl PSMTXMultVec
/* 80C2BA6C  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C2BA70  38 81 00 40 */	addi r4, r1, 0x40
/* 80C2BA74  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C2BA78  38 C0 00 00 */	li r6, 0
/* 80C2BA7C  4B 44 C2 E9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2BA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2BA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2BA88  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C2BA8C  7F E3 FB 78 */	mr r3, r31
/* 80C2BA90  38 81 00 DC */	addi r4, r1, 0xdc
/* 80C2BA94  4B 44 89 21 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2BA98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2BA9C  41 82 02 EC */	beq lbl_80C2BD88
/* 80C2BAA0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80C2BAA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C2BAA8  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2BAAC  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2BAB0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C2BAB4  7F E3 FB 78 */	mr r3, r31
/* 80C2BAB8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80C2BABC  38 A1 00 58 */	addi r5, r1, 0x58
/* 80C2BAC0  4B 44 8C 85 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2BAC4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C2BAC8  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80C2BACC  4B 63 BB A9 */	bl cM_atan2s__Fff
/* 80C2BAD0  7C 7F 1B 78 */	mr r31, r3
/* 80C2BAD4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2BAD8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C2BADC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C2BAE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C2BAE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2BAE8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C2BAEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C2BAF0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C2BAF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2BAF8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C2BAFC  38 81 00 10 */	addi r4, r1, 0x10
/* 80C2BB00  4B 71 B8 9D */	bl PSVECSquareDistance
/* 80C2BB04  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2BB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2BB0C  40 81 00 58 */	ble lbl_80C2BB64
/* 80C2BB10  FC 00 08 34 */	frsqrte f0, f1
/* 80C2BB14  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80C2BB18  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2BB1C  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80C2BB20  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2BB24  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2BB28  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2BB2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2BB30  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2BB34  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2BB38  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2BB3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2BB40  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2BB44  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2BB48  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2BB4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2BB50  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2BB54  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2BB58  FF E1 00 32 */	fmul f31, f1, f0
/* 80C2BB5C  FF E0 F8 18 */	frsp f31, f31
/* 80C2BB60  48 00 00 90 */	b lbl_80C2BBF0
lbl_80C2BB64:
/* 80C2BB64  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80C2BB68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2BB6C  40 80 00 10 */	bge lbl_80C2BB7C
/* 80C2BB70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2BB74  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2BB78  48 00 00 78 */	b lbl_80C2BBF0
lbl_80C2BB7C:
/* 80C2BB7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C2BB80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C2BB84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2BB88  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2BB8C  7C 03 00 00 */	cmpw r3, r0
/* 80C2BB90  41 82 00 14 */	beq lbl_80C2BBA4
/* 80C2BB94  40 80 00 40 */	bge lbl_80C2BBD4
/* 80C2BB98  2C 03 00 00 */	cmpwi r3, 0
/* 80C2BB9C  41 82 00 20 */	beq lbl_80C2BBBC
/* 80C2BBA0  48 00 00 34 */	b lbl_80C2BBD4
lbl_80C2BBA4:
/* 80C2BBA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2BBA8  41 82 00 0C */	beq lbl_80C2BBB4
/* 80C2BBAC  38 00 00 01 */	li r0, 1
/* 80C2BBB0  48 00 00 28 */	b lbl_80C2BBD8
lbl_80C2BBB4:
/* 80C2BBB4  38 00 00 02 */	li r0, 2
/* 80C2BBB8  48 00 00 20 */	b lbl_80C2BBD8
lbl_80C2BBBC:
/* 80C2BBBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2BBC0  41 82 00 0C */	beq lbl_80C2BBCC
/* 80C2BBC4  38 00 00 05 */	li r0, 5
/* 80C2BBC8  48 00 00 10 */	b lbl_80C2BBD8
lbl_80C2BBCC:
/* 80C2BBCC  38 00 00 03 */	li r0, 3
/* 80C2BBD0  48 00 00 08 */	b lbl_80C2BBD8
lbl_80C2BBD4:
/* 80C2BBD4  38 00 00 04 */	li r0, 4
lbl_80C2BBD8:
/* 80C2BBD8  2C 00 00 01 */	cmpwi r0, 1
/* 80C2BBDC  40 82 00 10 */	bne lbl_80C2BBEC
/* 80C2BBE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2BBE4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2BBE8  48 00 00 08 */	b lbl_80C2BBF0
lbl_80C2BBEC:
/* 80C2BBEC  FF E0 08 90 */	fmr f31, f1
lbl_80C2BBF0:
/* 80C2BBF0  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80C2BBF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2BBF8  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80C2BBFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2BC00  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80C2BC04  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C2BC08  A8 7D 07 32 */	lha r3, 0x732(r29)
/* 80C2BC0C  7F E0 07 34 */	extsh r0, r31
/* 80C2BC10  7C 03 00 50 */	subf r0, r3, r0
/* 80C2BC14  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80C2BC18  40 80 01 54 */	bge lbl_80C2BD6C
/* 80C2BC1C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80C2BC20  40 81 01 4C */	ble lbl_80C2BD6C
/* 80C2BC24  38 61 00 28 */	addi r3, r1, 0x28
/* 80C2BC28  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C2BC2C  4B 71 B7 71 */	bl PSVECSquareDistance
/* 80C2BC30  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2BC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2BC38  40 81 00 58 */	ble lbl_80C2BC90
/* 80C2BC3C  FC 00 08 34 */	frsqrte f0, f1
/* 80C2BC40  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80C2BC44  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2BC48  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80C2BC4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2BC50  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2BC54  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2BC58  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2BC5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2BC60  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2BC64  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2BC68  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2BC6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2BC70  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2BC74  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2BC78  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2BC7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2BC80  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2BC84  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2BC88  FC 20 08 18 */	frsp f1, f1
/* 80C2BC8C  48 00 00 88 */	b lbl_80C2BD14
lbl_80C2BC90:
/* 80C2BC90  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80C2BC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2BC98  40 80 00 10 */	bge lbl_80C2BCA8
/* 80C2BC9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2BCA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2BCA4  48 00 00 70 */	b lbl_80C2BD14
lbl_80C2BCA8:
/* 80C2BCA8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2BCAC  80 81 00 08 */	lwz r4, 8(r1)
/* 80C2BCB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2BCB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2BCB8  7C 03 00 00 */	cmpw r3, r0
/* 80C2BCBC  41 82 00 14 */	beq lbl_80C2BCD0
/* 80C2BCC0  40 80 00 40 */	bge lbl_80C2BD00
/* 80C2BCC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C2BCC8  41 82 00 20 */	beq lbl_80C2BCE8
/* 80C2BCCC  48 00 00 34 */	b lbl_80C2BD00
lbl_80C2BCD0:
/* 80C2BCD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2BCD4  41 82 00 0C */	beq lbl_80C2BCE0
/* 80C2BCD8  38 00 00 01 */	li r0, 1
/* 80C2BCDC  48 00 00 28 */	b lbl_80C2BD04
lbl_80C2BCE0:
/* 80C2BCE0  38 00 00 02 */	li r0, 2
/* 80C2BCE4  48 00 00 20 */	b lbl_80C2BD04
lbl_80C2BCE8:
/* 80C2BCE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2BCEC  41 82 00 0C */	beq lbl_80C2BCF8
/* 80C2BCF0  38 00 00 05 */	li r0, 5
/* 80C2BCF4  48 00 00 10 */	b lbl_80C2BD04
lbl_80C2BCF8:
/* 80C2BCF8  38 00 00 03 */	li r0, 3
/* 80C2BCFC  48 00 00 08 */	b lbl_80C2BD04
lbl_80C2BD00:
/* 80C2BD00  38 00 00 04 */	li r0, 4
lbl_80C2BD04:
/* 80C2BD04  2C 00 00 01 */	cmpwi r0, 1
/* 80C2BD08  40 82 00 0C */	bne lbl_80C2BD14
/* 80C2BD0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2BD10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2BD14:
/* 80C2BD14  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 80C2BD18  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80C2BD1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C2BD20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2BD24  40 80 00 48 */	bge lbl_80C2BD6C
/* 80C2BD28  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C2BD2C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C2BD30  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C2BD34  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2BD38  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C2BD3C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C2BD40  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C2BD44  FC 40 F8 90 */	fmr f2, f31
/* 80C2BD48  4B 63 B9 2D */	bl cM_atan2s__Fff
/* 80C2BD4C  7C 03 00 D0 */	neg r0, r3
/* 80C2BD50  B0 1D 07 2E */	sth r0, 0x72e(r29)
/* 80C2BD54  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80C2BD58  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80C2BD5C  4B 63 B9 19 */	bl cM_atan2s__Fff
/* 80C2BD60  B0 7D 07 2A */	sth r3, 0x72a(r29)
/* 80C2BD64  B3 FD 07 32 */	sth r31, 0x732(r29)
/* 80C2BD68  48 00 00 10 */	b lbl_80C2BD78
lbl_80C2BD6C:
/* 80C2BD6C  A8 7D 07 20 */	lha r3, 0x720(r29)
/* 80C2BD70  38 03 01 00 */	addi r0, r3, 0x100
/* 80C2BD74  B0 1D 07 20 */	sth r0, 0x720(r29)
lbl_80C2BD78:
/* 80C2BD78  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2BD7C  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2BD80  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C2BD84  48 00 00 10 */	b lbl_80C2BD94
lbl_80C2BD88:
/* 80C2BD88  A8 7D 07 20 */	lha r3, 0x720(r29)
/* 80C2BD8C  38 03 01 00 */	addi r0, r3, 0x100
/* 80C2BD90  B0 1D 07 20 */	sth r0, 0x720(r29)
lbl_80C2BD94:
/* 80C2BD94  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80C2BD98  A8 9D 07 20 */	lha r4, 0x720(r29)
/* 80C2BD9C  38 A0 00 10 */	li r5, 0x10
/* 80C2BDA0  38 C0 00 50 */	li r6, 0x50
/* 80C2BDA4  4B 64 48 65 */	bl cLib_addCalcAngleS2__FPssss
/* 80C2BDA8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C2BDAC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C2BDB0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C2BDB4  38 80 FF FF */	li r4, -1
/* 80C2BDB8  4B 44 BF 25 */	bl __dt__11dBgS_LinChkFv
/* 80C2BDBC  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C2BDC0  38 80 FF FF */	li r4, -1
/* 80C2BDC4  4B 44 BF 19 */	bl __dt__11dBgS_LinChkFv
/* 80C2BDC8  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80C2BDCC  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80C2BDD0  39 61 01 60 */	addi r11, r1, 0x160
/* 80C2BDD4  4B 73 64 55 */	bl _restgpr_29
/* 80C2BDD8  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C2BDDC  7C 08 03 A6 */	mtlr r0
/* 80C2BDE0  38 21 01 70 */	addi r1, r1, 0x170
/* 80C2BDE4  4E 80 00 20 */	blr 
