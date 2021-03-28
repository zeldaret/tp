lbl_8082BA18:
/* 8082BA18  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8082BA1C  7C 08 02 A6 */	mflr r0
/* 8082BA20  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8082BA24  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8082BA28  4B B3 67 B4 */	b _savegpr_29
/* 8082BA2C  7C 7E 1B 78 */	mr r30, r3
/* 8082BA30  3C 80 80 83 */	lis r4, lit_3778@ha
/* 8082BA34  3B E4 F2 08 */	addi r31, r4, lit_3778@l
/* 8082BA38  80 03 06 64 */	lwz r0, 0x664(r3)
/* 8082BA3C  28 00 00 00 */	cmplwi r0, 0
/* 8082BA40  40 82 00 14 */	bne lbl_8082BA54
/* 8082BA44  38 80 00 08 */	li r4, 8
/* 8082BA48  38 A0 00 00 */	li r5, 0
/* 8082BA4C  4B FF DA 09 */	bl setActionMode__8daE_ZH_cFii
/* 8082BA50  48 00 03 B8 */	b lbl_8082BE08
lbl_8082BA54:
/* 8082BA54  38 61 00 48 */	addi r3, r1, 0x48
/* 8082BA58  4B 84 C2 10 */	b __ct__11dBgS_LinChkFv
/* 8082BA5C  7F C3 F3 78 */	mr r3, r30
/* 8082BA60  4B FF DB F9 */	bl mBallBGCheck__8daE_ZH_cFv
/* 8082BA64  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082BA68  2C 00 00 01 */	cmpwi r0, 1
/* 8082BA6C  41 82 00 64 */	beq lbl_8082BAD0
/* 8082BA70  40 80 00 10 */	bge lbl_8082BA80
/* 8082BA74  2C 00 00 00 */	cmpwi r0, 0
/* 8082BA78  40 80 00 14 */	bge lbl_8082BA8C
/* 8082BA7C  48 00 03 60 */	b lbl_8082BDDC
lbl_8082BA80:
/* 8082BA80  2C 00 00 03 */	cmpwi r0, 3
/* 8082BA84  40 80 03 58 */	bge lbl_8082BDDC
/* 8082BA88  48 00 02 78 */	b lbl_8082BD00
lbl_8082BA8C:
/* 8082BA8C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082BA90  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 8082BA94  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 8082BA98  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 8082BA9C  7F C3 F3 78 */	mr r3, r30
/* 8082BAA0  4B FF E0 39 */	bl mReturnLineMove__8daE_ZH_cFv
/* 8082BAA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082BAA8  41 82 03 34 */	beq lbl_8082BDDC
/* 8082BAAC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8082BAB0  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 8082BAB4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8082BAB8  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 8082BABC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8082BAC0  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 8082BAC4  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082BAC8  38 03 00 01 */	addi r0, r3, 1
/* 8082BACC  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082BAD0:
/* 8082BAD0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8082BAD4  4B A3 BE 80 */	b cM_rndF__Ff
/* 8082BAD8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082BADC  EC 00 08 2A */	fadds f0, f0, f1
/* 8082BAE0  FC 00 00 1E */	fctiwz f0, f0
/* 8082BAE4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8082BAE8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8082BAEC  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082BAF0  38 61 00 18 */	addi r3, r1, 0x18
/* 8082BAF4  38 9E 06 BC */	addi r4, r30, 0x6bc
/* 8082BAF8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8082BAFC  4B A3 B0 38 */	b __mi__4cXyzCFRC3Vec
/* 8082BB00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8082BB04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082BB08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8082BB0C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082BB10  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8082BB14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8082BB18  38 61 00 3C */	addi r3, r1, 0x3c
/* 8082BB1C  4B B1 B6 1C */	b PSVECSquareMag
/* 8082BB20  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082BB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082BB28  40 81 00 58 */	ble lbl_8082BB80
/* 8082BB2C  FC 00 08 34 */	frsqrte f0, f1
/* 8082BB30  C8 9F 01 88 */	lfd f4, 0x188(r31)
/* 8082BB34  FC 44 00 32 */	fmul f2, f4, f0
/* 8082BB38  C8 7F 01 90 */	lfd f3, 0x190(r31)
/* 8082BB3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8082BB40  FC 01 00 32 */	fmul f0, f1, f0
/* 8082BB44  FC 03 00 28 */	fsub f0, f3, f0
/* 8082BB48  FC 02 00 32 */	fmul f0, f2, f0
/* 8082BB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8082BB50  FC 00 00 32 */	fmul f0, f0, f0
/* 8082BB54  FC 01 00 32 */	fmul f0, f1, f0
/* 8082BB58  FC 03 00 28 */	fsub f0, f3, f0
/* 8082BB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8082BB60  FC 44 00 32 */	fmul f2, f4, f0
/* 8082BB64  FC 00 00 32 */	fmul f0, f0, f0
/* 8082BB68  FC 01 00 32 */	fmul f0, f1, f0
/* 8082BB6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8082BB70  FC 02 00 32 */	fmul f0, f2, f0
/* 8082BB74  FC 21 00 32 */	fmul f1, f1, f0
/* 8082BB78  FC 20 08 18 */	frsp f1, f1
/* 8082BB7C  48 00 00 88 */	b lbl_8082BC04
lbl_8082BB80:
/* 8082BB80  C8 1F 01 98 */	lfd f0, 0x198(r31)
/* 8082BB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082BB88  40 80 00 10 */	bge lbl_8082BB98
/* 8082BB8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082BB90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8082BB94  48 00 00 70 */	b lbl_8082BC04
lbl_8082BB98:
/* 8082BB98  D0 21 00 08 */	stfs f1, 8(r1)
/* 8082BB9C  80 81 00 08 */	lwz r4, 8(r1)
/* 8082BBA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082BBA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082BBA8  7C 03 00 00 */	cmpw r3, r0
/* 8082BBAC  41 82 00 14 */	beq lbl_8082BBC0
/* 8082BBB0  40 80 00 40 */	bge lbl_8082BBF0
/* 8082BBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8082BBB8  41 82 00 20 */	beq lbl_8082BBD8
/* 8082BBBC  48 00 00 34 */	b lbl_8082BBF0
lbl_8082BBC0:
/* 8082BBC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082BBC4  41 82 00 0C */	beq lbl_8082BBD0
/* 8082BBC8  38 00 00 01 */	li r0, 1
/* 8082BBCC  48 00 00 28 */	b lbl_8082BBF4
lbl_8082BBD0:
/* 8082BBD0  38 00 00 02 */	li r0, 2
/* 8082BBD4  48 00 00 20 */	b lbl_8082BBF4
lbl_8082BBD8:
/* 8082BBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082BBDC  41 82 00 0C */	beq lbl_8082BBE8
/* 8082BBE0  38 00 00 05 */	li r0, 5
/* 8082BBE4  48 00 00 10 */	b lbl_8082BBF4
lbl_8082BBE8:
/* 8082BBE8  38 00 00 03 */	li r0, 3
/* 8082BBEC  48 00 00 08 */	b lbl_8082BBF4
lbl_8082BBF0:
/* 8082BBF0  38 00 00 04 */	li r0, 4
lbl_8082BBF4:
/* 8082BBF4  2C 00 00 01 */	cmpwi r0, 1
/* 8082BBF8  40 82 00 0C */	bne lbl_8082BC04
/* 8082BBFC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082BC00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8082BC04:
/* 8082BC04  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082BC08  3B A3 F7 34 */	addi r29, r3, l_HIO@l
/* 8082BC0C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8082BC10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082BC14  40 80 00 44 */	bge lbl_8082BC58
/* 8082BC18  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 8082BC1C  4B A3 BD 70 */	b cM_rndFX__Ff
/* 8082BC20  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8082BC24  C8 5F 00 38 */	lfd f2, 0x38(r31)
/* 8082BC28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8082BC2C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8082BC30  3C 00 43 30 */	lis r0, 0x4330
/* 8082BC34  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8082BC38  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 8082BC3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8082BC40  EC 00 08 2A */	fadds f0, f0, f1
/* 8082BC44  FC 00 00 1E */	fctiwz f0, f0
/* 8082BC48  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 8082BC4C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8082BC50  B0 1E 07 B2 */	sth r0, 0x7b2(r30)
/* 8082BC54  48 00 00 18 */	b lbl_8082BC6C
lbl_8082BC58:
/* 8082BC58  38 00 00 14 */	li r0, 0x14
/* 8082BC5C  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082BC60  38 61 00 3C */	addi r3, r1, 0x3c
/* 8082BC64  4B A3 B4 C4 */	b atan2sX_Z__4cXyzCFv
/* 8082BC68  B0 7E 07 B2 */	sth r3, 0x7b2(r30)
lbl_8082BC6C:
/* 8082BC6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082BC70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082BC74  80 63 00 00 */	lwz r3, 0(r3)
/* 8082BC78  A8 9E 07 B2 */	lha r4, 0x7b2(r30)
/* 8082BC7C  4B 7E 07 60 */	b mDoMtx_YrotS__FPA4_fs
/* 8082BC80  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082BC84  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082BC88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082BC8C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8082BC90  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082BC94  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082BC98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082BC9C  38 61 00 30 */	addi r3, r1, 0x30
/* 8082BCA0  38 81 00 24 */	addi r4, r1, 0x24
/* 8082BCA4  4B A4 52 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 8082BCA8  38 61 00 24 */	addi r3, r1, 0x24
/* 8082BCAC  38 9E 06 BC */	addi r4, r30, 0x6bc
/* 8082BCB0  7C 65 1B 78 */	mr r5, r3
/* 8082BCB4  4B B1 B3 DC */	b PSVECAdd
/* 8082BCB8  38 61 00 0C */	addi r3, r1, 0xc
/* 8082BCBC  38 81 00 24 */	addi r4, r1, 0x24
/* 8082BCC0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8082BCC4  4B A3 AE 70 */	b __mi__4cXyzCFRC3Vec
/* 8082BCC8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8082BCCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082BCD0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082BCD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082BCD8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8082BCDC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082BCE0  38 61 00 30 */	addi r3, r1, 0x30
/* 8082BCE4  4B A3 B4 44 */	b atan2sX_Z__4cXyzCFv
/* 8082BCE8  B0 7E 07 B2 */	sth r3, 0x7b2(r30)
/* 8082BCEC  38 00 00 00 */	li r0, 0
/* 8082BCF0  B0 1E 07 B0 */	sth r0, 0x7b0(r30)
/* 8082BCF4  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082BCF8  38 03 00 01 */	addi r0, r3, 1
/* 8082BCFC  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082BD00:
/* 8082BD00  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082BD04  2C 00 00 00 */	cmpwi r0, 0
/* 8082BD08  40 82 00 10 */	bne lbl_8082BD18
/* 8082BD0C  38 00 00 01 */	li r0, 1
/* 8082BD10  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082BD14  48 00 00 C8 */	b lbl_8082BDDC
lbl_8082BD18:
/* 8082BD18  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 8082BD1C  38 80 04 00 */	li r4, 0x400
/* 8082BD20  38 A0 00 08 */	li r5, 8
/* 8082BD24  38 C0 00 40 */	li r6, 0x40
/* 8082BD28  4B A4 48 E0 */	b cLib_addCalcAngleS2__FPssss
/* 8082BD2C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8082BD30  A8 9E 07 B2 */	lha r4, 0x7b2(r30)
/* 8082BD34  38 A0 00 08 */	li r5, 8
/* 8082BD38  A8 DE 07 B0 */	lha r6, 0x7b0(r30)
/* 8082BD3C  4B A4 48 CC */	b cLib_addCalcAngleS2__FPssss
/* 8082BD40  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8082BD44  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8082BD48  38 A0 00 08 */	li r5, 8
/* 8082BD4C  A8 DE 07 B0 */	lha r6, 0x7b0(r30)
/* 8082BD50  4B A4 48 B8 */	b cLib_addCalcAngleS2__FPssss
/* 8082BD54  A8 7E 07 B2 */	lha r3, 0x7b2(r30)
/* 8082BD58  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8082BD5C  7C 03 00 50 */	subf r0, r3, r0
/* 8082BD60  7C 03 07 34 */	extsh r3, r0
/* 8082BD64  4B B3 93 6C */	b abs
/* 8082BD68  2C 03 02 00 */	cmpwi r3, 0x200
/* 8082BD6C  41 81 00 70 */	bgt lbl_8082BDDC
/* 8082BD70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082BD74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082BD78  80 63 00 00 */	lwz r3, 0(r3)
/* 8082BD7C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8082BD80  4B 7E 06 5C */	b mDoMtx_YrotS__FPA4_fs
/* 8082BD84  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082BD88  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082BD8C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082BD90  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082BD94  38 63 F7 34 */	addi r3, r3, l_HIO@l
/* 8082BD98  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8082BD9C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082BDA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082BDA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082BDA8  38 61 00 30 */	addi r3, r1, 0x30
/* 8082BDAC  38 81 00 24 */	addi r4, r1, 0x24
/* 8082BDB0  4B A4 51 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 8082BDB4  38 61 00 24 */	addi r3, r1, 0x24
/* 8082BDB8  38 9E 06 BC */	addi r4, r30, 0x6bc
/* 8082BDBC  7C 65 1B 78 */	mr r5, r3
/* 8082BDC0  4B B1 B2 D0 */	b PSVECAdd
/* 8082BDC4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8082BDC8  38 81 00 24 */	addi r4, r1, 0x24
/* 8082BDCC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8082BDD0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8082BDD4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8082BDD8  4B A4 3C E0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8082BDDC:
/* 8082BDDC  7F C3 F3 78 */	mr r3, r30
/* 8082BDE0  4B FF E0 65 */	bl mBallBgLineCheck__8daE_ZH_cFv
/* 8082BDE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082BDE8  40 82 00 14 */	bne lbl_8082BDFC
/* 8082BDEC  7F C3 F3 78 */	mr r3, r30
/* 8082BDF0  38 80 00 04 */	li r4, 4
/* 8082BDF4  38 A0 00 00 */	li r5, 0
/* 8082BDF8  4B FF D6 5D */	bl setActionMode__8daE_ZH_cFii
lbl_8082BDFC:
/* 8082BDFC  38 61 00 48 */	addi r3, r1, 0x48
/* 8082BE00  38 80 FF FF */	li r4, -1
/* 8082BE04  4B 84 BE D8 */	b __dt__11dBgS_LinChkFv
lbl_8082BE08:
/* 8082BE08  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8082BE0C  4B B3 64 1C */	b _restgpr_29
/* 8082BE10  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8082BE14  7C 08 03 A6 */	mtlr r0
/* 8082BE18  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8082BE1C  4E 80 00 20 */	blr 
