lbl_807EA870:
/* 807EA870  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807EA874  7C 08 02 A6 */	mflr r0
/* 807EA878  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807EA87C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 807EA880  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 807EA884  39 61 00 90 */	addi r11, r1, 0x90
/* 807EA888  4B B7 79 55 */	bl _savegpr_29
/* 807EA88C  7C 7D 1B 78 */	mr r29, r3
/* 807EA890  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807EA894  3B C3 F7 70 */	addi r30, r3, lit_3905@l /* 0x807EF770@l */
/* 807EA898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EA89C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EA8A0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807EA8A4  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 807EA8A8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 807EA8AC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807EA8B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807EA8B4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807EA8B8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807EA8BC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807EA8C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EA8C4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807EA8C8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807EA8CC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807EA8D0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807EA8D4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807EA8D8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807EA8DC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 807EA8E0  38 61 00 40 */	addi r3, r1, 0x40
/* 807EA8E4  38 81 00 4C */	addi r4, r1, 0x4c
/* 807EA8E8  4B B5 CA B5 */	bl PSVECSquareDistance
/* 807EA8EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EA8F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA8F4  40 81 00 58 */	ble lbl_807EA94C
/* 807EA8F8  FC 00 08 34 */	frsqrte f0, f1
/* 807EA8FC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807EA900  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA904  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807EA908  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA90C  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA910  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA914  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA918  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA91C  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA920  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA924  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA928  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA92C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA930  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA934  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA938  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA93C  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA940  FF E1 00 32 */	fmul f31, f1, f0
/* 807EA944  FF E0 F8 18 */	frsp f31, f31
/* 807EA948  48 00 00 90 */	b lbl_807EA9D8
lbl_807EA94C:
/* 807EA94C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807EA950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA954  40 80 00 10 */	bge lbl_807EA964
/* 807EA958  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EA95C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EA960  48 00 00 78 */	b lbl_807EA9D8
lbl_807EA964:
/* 807EA964  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807EA968  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807EA96C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EA970  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EA974  7C 03 00 00 */	cmpw r3, r0
/* 807EA978  41 82 00 14 */	beq lbl_807EA98C
/* 807EA97C  40 80 00 40 */	bge lbl_807EA9BC
/* 807EA980  2C 03 00 00 */	cmpwi r3, 0
/* 807EA984  41 82 00 20 */	beq lbl_807EA9A4
/* 807EA988  48 00 00 34 */	b lbl_807EA9BC
lbl_807EA98C:
/* 807EA98C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EA990  41 82 00 0C */	beq lbl_807EA99C
/* 807EA994  38 00 00 01 */	li r0, 1
/* 807EA998  48 00 00 28 */	b lbl_807EA9C0
lbl_807EA99C:
/* 807EA99C  38 00 00 02 */	li r0, 2
/* 807EA9A0  48 00 00 20 */	b lbl_807EA9C0
lbl_807EA9A4:
/* 807EA9A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EA9A8  41 82 00 0C */	beq lbl_807EA9B4
/* 807EA9AC  38 00 00 05 */	li r0, 5
/* 807EA9B0  48 00 00 10 */	b lbl_807EA9C0
lbl_807EA9B4:
/* 807EA9B4  38 00 00 03 */	li r0, 3
/* 807EA9B8  48 00 00 08 */	b lbl_807EA9C0
lbl_807EA9BC:
/* 807EA9BC  38 00 00 04 */	li r0, 4
lbl_807EA9C0:
/* 807EA9C0  2C 00 00 01 */	cmpwi r0, 1
/* 807EA9C4  40 82 00 10 */	bne lbl_807EA9D4
/* 807EA9C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EA9CC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EA9D0  48 00 00 08 */	b lbl_807EA9D8
lbl_807EA9D4:
/* 807EA9D4  FF E0 08 90 */	fmr f31, f1
lbl_807EA9D8:
/* 807EA9D8  80 1D 06 BC */	lwz r0, 0x6bc(r29)
/* 807EA9DC  2C 00 00 0F */	cmpwi r0, 0xf
/* 807EA9E0  41 82 08 E4 */	beq lbl_807EB2C4
/* 807EA9E4  40 80 00 5C */	bge lbl_807EAA40
/* 807EA9E8  2C 00 00 05 */	cmpwi r0, 5
/* 807EA9EC  41 82 00 A0 */	beq lbl_807EAA8C
/* 807EA9F0  40 80 00 28 */	bge lbl_807EAA18
/* 807EA9F4  2C 00 00 01 */	cmpwi r0, 1
/* 807EA9F8  41 82 01 34 */	beq lbl_807EAB2C
/* 807EA9FC  40 80 00 10 */	bge lbl_807EAA0C
/* 807EAA00  2C 00 00 00 */	cmpwi r0, 0
/* 807EAA04  40 80 00 C0 */	bge lbl_807EAAC4
/* 807EAA08  48 00 0C 10 */	b lbl_807EB618
lbl_807EAA0C:
/* 807EAA0C  2C 00 00 03 */	cmpwi r0, 3
/* 807EAA10  40 80 0C 08 */	bge lbl_807EB618
/* 807EAA14  48 00 02 2C */	b lbl_807EAC40
lbl_807EAA18:
/* 807EAA18  2C 00 00 0C */	cmpwi r0, 0xc
/* 807EAA1C  41 82 05 1C */	beq lbl_807EAF38
/* 807EAA20  40 80 00 14 */	bge lbl_807EAA34
/* 807EAA24  2C 00 00 0A */	cmpwi r0, 0xa
/* 807EAA28  41 82 03 48 */	beq lbl_807EAD70
/* 807EAA2C  40 80 03 54 */	bge lbl_807EAD80
/* 807EAA30  48 00 0B E8 */	b lbl_807EB618
lbl_807EAA34:
/* 807EAA34  2C 00 00 0E */	cmpwi r0, 0xe
/* 807EAA38  40 80 05 C8 */	bge lbl_807EB000
/* 807EAA3C  48 00 05 0C */	b lbl_807EAF48
lbl_807EAA40:
/* 807EAA40  2C 00 00 1A */	cmpwi r0, 0x1a
/* 807EAA44  41 82 0B D4 */	beq lbl_807EB618
/* 807EAA48  40 80 00 28 */	bge lbl_807EAA70
/* 807EAA4C  2C 00 00 15 */	cmpwi r0, 0x15
/* 807EAA50  41 82 09 14 */	beq lbl_807EB364
/* 807EAA54  40 80 00 10 */	bge lbl_807EAA64
/* 807EAA58  2C 00 00 14 */	cmpwi r0, 0x14
/* 807EAA5C  40 80 09 00 */	bge lbl_807EB35C
/* 807EAA60  48 00 0B B8 */	b lbl_807EB618
lbl_807EAA64:
/* 807EAA64  2C 00 00 19 */	cmpwi r0, 0x19
/* 807EAA68  40 80 09 C8 */	bge lbl_807EB430
/* 807EAA6C  48 00 0B AC */	b lbl_807EB618
lbl_807EAA70:
/* 807EAA70  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 807EAA74  41 82 02 5C */	beq lbl_807EACD0
/* 807EAA78  40 80 0B A0 */	bge lbl_807EB618
/* 807EAA7C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 807EAA80  41 82 0B 0C */	beq lbl_807EB58C
/* 807EAA84  40 80 0B 94 */	bge lbl_807EB618
/* 807EAA88  48 00 0A 88 */	b lbl_807EB510
lbl_807EAA8C:
/* 807EAA8C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807EAA90  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807EAA94  EC 01 00 2A */	fadds f0, f1, f0
/* 807EAA98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EAA9C  40 81 00 28 */	ble lbl_807EAAC4
/* 807EAAA0  38 00 00 0A */	li r0, 0xa
/* 807EAAA4  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAAA8  7F A3 EB 78 */	mr r3, r29
/* 807EAAAC  38 80 00 0F */	li r4, 0xf
/* 807EAAB0  38 A0 00 02 */	li r5, 2
/* 807EAAB4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAAB8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EAABC  4B FF D0 21 */	bl setBck__8daE_WW_cFiUcff
/* 807EAAC0  48 00 0B 70 */	b lbl_807EB630
lbl_807EAAC4:
/* 807EAAC4  7F A3 EB 78 */	mr r3, r29
/* 807EAAC8  38 80 00 0B */	li r4, 0xb
/* 807EAACC  38 A0 00 02 */	li r5, 2
/* 807EAAD0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAAD4  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAAD8  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807EAADC  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807EAAE0  4B FF CF FD */	bl setBck__8daE_WW_cFiUcff
/* 807EAAE4  38 00 00 01 */	li r0, 1
/* 807EAAE8  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAAEC  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAAF0  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EAAF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EAAF8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807EAAFC  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 807EAB00  4B A7 CE 8D */	bl cM_rndFX__Ff
/* 807EAB04  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAB08  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EAB0C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807EAB10  EC 00 08 2A */	fadds f0, f0, f1
/* 807EAB14  FC 00 00 1E */	fctiwz f0, f0
/* 807EAB18  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807EAB1C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807EAB20  90 1D 07 34 */	stw r0, 0x734(r29)
/* 807EAB24  38 00 00 96 */	li r0, 0x96
/* 807EAB28  90 1D 07 28 */	stw r0, 0x728(r29)
lbl_807EAB2C:
/* 807EAB2C  7F A3 EB 78 */	mr r3, r29
/* 807EAB30  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EAB34  4B 82 FB DD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EAB38  7C 65 1B 78 */	mr r5, r3
/* 807EAB3C  7F A3 EB 78 */	mr r3, r29
/* 807EAB40  38 81 00 08 */	addi r4, r1, 8
/* 807EAB44  38 05 80 00 */	addi r0, r5, -32768
/* 807EAB48  7C 05 07 34 */	extsh r5, r0
/* 807EAB4C  48 00 33 41 */	bl calcMoveDir__8daE_WW_cFPss
/* 807EAB50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EAB54  41 82 00 20 */	beq lbl_807EAB74
/* 807EAB58  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EAB5C  A8 81 00 08 */	lha r4, 8(r1)
/* 807EAB60  38 A0 00 04 */	li r5, 4
/* 807EAB64  38 C0 08 00 */	li r6, 0x800
/* 807EAB68  38 E0 01 00 */	li r7, 0x100
/* 807EAB6C  4B A8 59 D5 */	bl cLib_addCalcAngleS__FPsssss
/* 807EAB70  48 00 00 1C */	b lbl_807EAB8C
lbl_807EAB74:
/* 807EAB74  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EAB78  A8 81 00 08 */	lha r4, 8(r1)
/* 807EAB7C  38 A0 00 08 */	li r5, 8
/* 807EAB80  38 C0 02 00 */	li r6, 0x200
/* 807EAB84  38 E0 00 80 */	li r7, 0x80
/* 807EAB88  4B A8 59 B9 */	bl cLib_addCalcAngleS__FPsssss
lbl_807EAB8C:
/* 807EAB8C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EAB90  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EAB94  38 80 00 00 */	li r4, 0
/* 807EAB98  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807EAB9C  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807EABA0  EC 21 00 2A */	fadds f1, f1, f0
/* 807EABA4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807EABA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807EABAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EABB0  40 81 00 08 */	ble lbl_807EABB8
/* 807EABB4  38 80 00 01 */	li r4, 1
lbl_807EABB8:
/* 807EABB8  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EABBC  28 00 00 00 */	cmplwi r0, 0
/* 807EABC0  40 82 00 28 */	bne lbl_807EABE8
/* 807EABC4  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807EABC8  2C 00 00 00 */	cmpwi r0, 0
/* 807EABCC  40 82 00 1C */	bne lbl_807EABE8
/* 807EABD0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807EABD4  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807EABD8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EABDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EABE0  40 82 00 08 */	bne lbl_807EABE8
/* 807EABE4  38 80 00 01 */	li r4, 1
lbl_807EABE8:
/* 807EABE8  2C 04 00 00 */	cmpwi r4, 0
/* 807EABEC  41 82 0A 2C */	beq lbl_807EB618
/* 807EABF0  38 00 00 02 */	li r0, 2
/* 807EABF4  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EABF8  7F A3 EB 78 */	mr r3, r29
/* 807EABFC  38 80 00 0E */	li r4, 0xe
/* 807EAC00  38 A0 00 00 */	li r5, 0
/* 807EAC04  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAC08  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EAC0C  4B FF CE D1 */	bl setBck__8daE_WW_cFiUcff
/* 807EAC10  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EAC14  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EAC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 807EAC1C  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EAC20  38 81 00 24 */	addi r4, r1, 0x24
/* 807EAC24  38 A0 00 00 */	li r5, 0
/* 807EAC28  38 C0 FF FF */	li r6, -1
/* 807EAC2C  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807EAC30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EAC34  7D 89 03 A6 */	mtctr r12
/* 807EAC38  4E 80 04 21 */	bctrl 
/* 807EAC3C  48 00 09 DC */	b lbl_807EB618
lbl_807EAC40:
/* 807EAC40  38 00 00 01 */	li r0, 1
/* 807EAC44  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807EAC48  7F A3 EB 78 */	mr r3, r29
/* 807EAC4C  4B FF D3 81 */	bl getNearPlayerAngle__8daE_WW_cFv
/* 807EAC50  7C 64 1B 78 */	mr r4, r3
/* 807EAC54  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EAC58  38 A0 00 08 */	li r5, 8
/* 807EAC5C  38 C0 08 00 */	li r6, 0x800
/* 807EAC60  38 E0 01 00 */	li r7, 0x100
/* 807EAC64  4B A8 58 DD */	bl cLib_addCalcAngleS__FPsssss
/* 807EAC68  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807EAC6C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EAC70  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 807EAC74  4B A8 5A CD */	bl cLib_chaseF__FPfff
/* 807EAC78  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807EAC7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EAC80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EAC84  40 82 09 94 */	bne lbl_807EB618
/* 807EAC88  7F A3 EB 78 */	mr r3, r29
/* 807EAC8C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EAC90  4B 82 FA 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EAC94  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EAC98  7C 03 00 50 */	subf r0, r3, r0
/* 807EAC9C  7C 03 07 34 */	extsh r3, r0
/* 807EACA0  4B B7 A4 31 */	bl abs
/* 807EACA4  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807EACA8  40 80 09 70 */	bge lbl_807EB618
/* 807EACAC  38 00 00 0A */	li r0, 0xa
/* 807EACB0  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EACB4  7F A3 EB 78 */	mr r3, r29
/* 807EACB8  38 80 00 0F */	li r4, 0xf
/* 807EACBC  38 A0 00 02 */	li r5, 2
/* 807EACC0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EACC4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EACC8  4B FF CE 15 */	bl setBck__8daE_WW_cFiUcff
/* 807EACCC  48 00 09 4C */	b lbl_807EB618
lbl_807EACD0:
/* 807EACD0  38 00 00 01 */	li r0, 1
/* 807EACD4  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807EACD8  7F A3 EB 78 */	mr r3, r29
/* 807EACDC  4B FF D2 F1 */	bl getNearPlayerAngle__8daE_WW_cFv
/* 807EACE0  7C 64 1B 78 */	mr r4, r3
/* 807EACE4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EACE8  38 A0 00 08 */	li r5, 8
/* 807EACEC  38 C0 08 00 */	li r6, 0x800
/* 807EACF0  38 E0 01 00 */	li r7, 0x100
/* 807EACF4  4B A8 58 4D */	bl cLib_addCalcAngleS__FPsssss
/* 807EACF8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807EACFC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EAD00  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 807EAD04  4B A8 5A 3D */	bl cLib_chaseF__FPfff
/* 807EAD08  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807EAD0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EAD10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EAD14  40 82 09 04 */	bne lbl_807EB618
/* 807EAD18  7F A3 EB 78 */	mr r3, r29
/* 807EAD1C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EAD20  4B 82 F9 F1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EAD24  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EAD28  7C 03 00 50 */	subf r0, r3, r0
/* 807EAD2C  7C 03 07 34 */	extsh r3, r0
/* 807EAD30  4B B7 A3 A1 */	bl abs
/* 807EAD34  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807EAD38  40 80 08 E0 */	bge lbl_807EB618
/* 807EAD3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EAD40  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807EAD44  7F A3 EB 78 */	mr r3, r29
/* 807EAD48  38 80 00 05 */	li r4, 5
/* 807EAD4C  38 A0 00 0A */	li r5, 0xa
/* 807EAD50  4B FF CE 8D */	bl setActionMode__8daE_WW_cFii
/* 807EAD54  7F A3 EB 78 */	mr r3, r29
/* 807EAD58  38 80 00 0F */	li r4, 0xf
/* 807EAD5C  38 A0 00 02 */	li r5, 2
/* 807EAD60  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAD64  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EAD68  4B FF CD 75 */	bl setBck__8daE_WW_cFiUcff
/* 807EAD6C  48 00 08 AC */	b lbl_807EB618
lbl_807EAD70:
/* 807EAD70  38 00 00 0B */	li r0, 0xb
/* 807EAD74  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAD78  38 00 00 1E */	li r0, 0x1e
/* 807EAD7C  90 1D 07 40 */	stw r0, 0x740(r29)
lbl_807EAD80:
/* 807EAD80  38 00 00 01 */	li r0, 1
/* 807EAD84  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807EAD88  7F A3 EB 78 */	mr r3, r29
/* 807EAD8C  4B FF D2 41 */	bl getNearPlayerAngle__8daE_WW_cFv
/* 807EAD90  7C 64 1B 78 */	mr r4, r3
/* 807EAD94  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EAD98  38 A0 00 04 */	li r5, 4
/* 807EAD9C  38 C0 08 00 */	li r6, 0x800
/* 807EADA0  38 E0 01 00 */	li r7, 0x100
/* 807EADA4  4B A8 57 9D */	bl cLib_addCalcAngleS__FPsssss
/* 807EADA8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EADAC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EADB0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807EADB4  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807EADB8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EADBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EADC0  41 82 01 20 */	beq lbl_807EAEE0
/* 807EADC4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807EADC8  C0 3D 06 B0 */	lfs f1, 0x6b0(r29)
/* 807EADCC  EC 00 08 2A */	fadds f0, f0, f1
/* 807EADD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EADD4  40 80 00 BC */	bge lbl_807EAE90
/* 807EADD8  80 1D 07 30 */	lwz r0, 0x730(r29)
/* 807EADDC  2C 00 00 00 */	cmpwi r0, 0
/* 807EADE0  40 82 00 14 */	bne lbl_807EADF4
/* 807EADE4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 807EADE8  EC 00 08 2A */	fadds f0, f0, f1
/* 807EADEC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EADF0  40 80 00 30 */	bge lbl_807EAE20
lbl_807EADF4:
/* 807EADF4  38 00 00 0C */	li r0, 0xc
/* 807EADF8  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EADFC  7F A3 EB 78 */	mr r3, r29
/* 807EAE00  38 80 00 0B */	li r4, 0xb
/* 807EAE04  38 A0 00 02 */	li r5, 2
/* 807EAE08  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAE0C  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAE10  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807EAE14  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807EAE18  4B FF CC C5 */	bl setBck__8daE_WW_cFiUcff
/* 807EAE1C  48 00 00 C4 */	b lbl_807EAEE0
lbl_807EAE20:
/* 807EAE20  7F A3 EB 78 */	mr r3, r29
/* 807EAE24  38 80 00 05 */	li r4, 5
/* 807EAE28  38 A0 00 00 */	li r5, 0
/* 807EAE2C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAE30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EAE34  4B FF CC A9 */	bl setBck__8daE_WW_cFiUcff
/* 807EAE38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EAE3C  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EAE40  90 01 00 20 */	stw r0, 0x20(r1)
/* 807EAE44  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EAE48  38 81 00 20 */	addi r4, r1, 0x20
/* 807EAE4C  38 A0 00 00 */	li r5, 0
/* 807EAE50  38 C0 FF FF */	li r6, -1
/* 807EAE54  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807EAE58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EAE5C  7D 89 03 A6 */	mtctr r12
/* 807EAE60  4E 80 04 21 */	bctrl 
/* 807EAE64  38 00 00 0F */	li r0, 0xf
/* 807EAE68  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAE6C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 807EAE70  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807EAE74  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807EAE78  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807EAE7C  38 00 00 01 */	li r0, 1
/* 807EAE80  98 1D 07 5B */	stb r0, 0x75b(r29)
/* 807EAE84  38 00 00 3C */	li r0, 0x3c
/* 807EAE88  90 1D 07 30 */	stw r0, 0x730(r29)
/* 807EAE8C  48 00 00 54 */	b lbl_807EAEE0
lbl_807EAE90:
/* 807EAE90  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 807EAE94  EC 00 08 2A */	fadds f0, f0, f1
/* 807EAE98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EAE9C  40 81 00 44 */	ble lbl_807EAEE0
/* 807EAEA0  7F A3 EB 78 */	mr r3, r29
/* 807EAEA4  38 80 00 0B */	li r4, 0xb
/* 807EAEA8  38 A0 00 02 */	li r5, 2
/* 807EAEAC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EAEB0  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAEB4  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807EAEB8  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807EAEBC  4B FF CC 21 */	bl setBck__8daE_WW_cFiUcff
/* 807EAEC0  38 00 00 14 */	li r0, 0x14
/* 807EAEC4  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAEC8  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAECC  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EAED0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 807EAED4  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807EAED8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807EAEDC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807EAEE0:
/* 807EAEE0  7F A3 EB 78 */	mr r3, r29
/* 807EAEE4  4B FF DD 71 */	bl checkSideStep__8daE_WW_cFv
/* 807EAEE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EAEEC  41 82 00 18 */	beq lbl_807EAF04
/* 807EAEF0  38 00 00 19 */	li r0, 0x19
/* 807EAEF4  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAEF8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EAEFC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807EAF00  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807EAF04:
/* 807EAF04  7F A3 EB 78 */	mr r3, r29
/* 807EAF08  48 00 1A 39 */	bl checkWalkStart__8daE_WW_cFv
/* 807EAF0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EAF10  40 82 07 20 */	bne lbl_807EB630
/* 807EAF14  7F A3 EB 78 */	mr r3, r29
/* 807EAF18  4B FF F5 5D */	bl checkAttackStart__8daE_WW_cFv
/* 807EAF1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EAF20  40 82 07 10 */	bne lbl_807EB630
/* 807EAF24  7F A3 EB 78 */	mr r3, r29
/* 807EAF28  48 00 0A 3D */	bl checkMoveOut__8daE_WW_cFv
/* 807EAF2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EAF30  41 82 06 E8 */	beq lbl_807EB618
/* 807EAF34  48 00 06 FC */	b lbl_807EB630
lbl_807EAF38:
/* 807EAF38  38 00 00 1E */	li r0, 0x1e
/* 807EAF3C  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807EAF40  38 00 00 0D */	li r0, 0xd
/* 807EAF44  90 1D 06 BC */	stw r0, 0x6bc(r29)
lbl_807EAF48:
/* 807EAF48  48 00 47 FD */	bl checkNowWolf__9daPy_py_cFv
/* 807EAF4C  28 03 00 00 */	cmplwi r3, 0
/* 807EAF50  41 82 00 18 */	beq lbl_807EAF68
/* 807EAF54  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAF58  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EAF5C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807EAF60  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807EAF64  48 00 00 14 */	b lbl_807EAF78
lbl_807EAF68:
/* 807EAF68  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EAF6C  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EAF70  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 807EAF74  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807EAF78:
/* 807EAF78  7F A3 EB 78 */	mr r3, r29
/* 807EAF7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EAF80  4B 82 F7 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EAF84  7C 65 1B 78 */	mr r5, r3
/* 807EAF88  7F A3 EB 78 */	mr r3, r29
/* 807EAF8C  38 81 00 08 */	addi r4, r1, 8
/* 807EAF90  38 05 80 00 */	addi r0, r5, -32768
/* 807EAF94  7C 05 07 34 */	extsh r5, r0
/* 807EAF98  48 00 2E F5 */	bl calcMoveDir__8daE_WW_cFPss
/* 807EAF9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EAFA0  41 82 00 20 */	beq lbl_807EAFC0
/* 807EAFA4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EAFA8  A8 81 00 08 */	lha r4, 8(r1)
/* 807EAFAC  38 A0 00 04 */	li r5, 4
/* 807EAFB0  38 C0 08 00 */	li r6, 0x800
/* 807EAFB4  38 E0 02 00 */	li r7, 0x200
/* 807EAFB8  4B A8 55 89 */	bl cLib_addCalcAngleS__FPsssss
/* 807EAFBC  48 00 00 1C */	b lbl_807EAFD8
lbl_807EAFC0:
/* 807EAFC0  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EAFC4  A8 81 00 08 */	lha r4, 8(r1)
/* 807EAFC8  38 A0 00 08 */	li r5, 8
/* 807EAFCC  38 C0 02 00 */	li r6, 0x200
/* 807EAFD0  38 E0 00 80 */	li r7, 0x80
/* 807EAFD4  4B A8 55 6D */	bl cLib_addCalcAngleS__FPsssss
lbl_807EAFD8:
/* 807EAFD8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EAFDC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EAFE0  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807EAFE4  2C 00 00 00 */	cmpwi r0, 0
/* 807EAFE8  40 82 06 30 */	bne lbl_807EB618
/* 807EAFEC  38 00 00 0E */	li r0, 0xe
/* 807EAFF0  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EAFF4  38 00 00 96 */	li r0, 0x96
/* 807EAFF8  90 1D 07 28 */	stw r0, 0x728(r29)
/* 807EAFFC  48 00 06 1C */	b lbl_807EB618
lbl_807EB000:
/* 807EB000  48 00 47 45 */	bl checkNowWolf__9daPy_py_cFv
/* 807EB004  28 03 00 00 */	cmplwi r3, 0
/* 807EB008  41 82 00 20 */	beq lbl_807EB028
/* 807EB00C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807EB010  3C 80 80 7F */	lis r4, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EB014  38 84 FB CC */	addi r4, r4, l_HIO@l /* 0x807EFBCC@l */
/* 807EB018  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 807EB01C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB020  4B A8 57 21 */	bl cLib_chaseF__FPfff
/* 807EB024  48 00 00 1C */	b lbl_807EB040
lbl_807EB028:
/* 807EB028  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807EB02C  3C 80 80 7F */	lis r4, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EB030  38 84 FB CC */	addi r4, r4, l_HIO@l /* 0x807EFBCC@l */
/* 807EB034  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 807EB038  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB03C  4B A8 57 05 */	bl cLib_chaseF__FPfff
lbl_807EB040:
/* 807EB040  7F A3 EB 78 */	mr r3, r29
/* 807EB044  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EB048  4B 82 F6 C9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EB04C  7C 65 1B 78 */	mr r5, r3
/* 807EB050  7F A3 EB 78 */	mr r3, r29
/* 807EB054  38 81 00 08 */	addi r4, r1, 8
/* 807EB058  38 05 80 00 */	addi r0, r5, -32768
/* 807EB05C  7C 05 07 34 */	extsh r5, r0
/* 807EB060  48 00 2E 2D */	bl calcMoveDir__8daE_WW_cFPss
/* 807EB064  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EB068  41 82 00 20 */	beq lbl_807EB088
/* 807EB06C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EB070  A8 81 00 08 */	lha r4, 8(r1)
/* 807EB074  38 A0 00 04 */	li r5, 4
/* 807EB078  38 C0 08 00 */	li r6, 0x800
/* 807EB07C  38 E0 02 00 */	li r7, 0x200
/* 807EB080  4B A8 54 C1 */	bl cLib_addCalcAngleS__FPsssss
/* 807EB084  48 00 00 1C */	b lbl_807EB0A0
lbl_807EB088:
/* 807EB088  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EB08C  A8 81 00 08 */	lha r4, 8(r1)
/* 807EB090  38 A0 00 08 */	li r5, 8
/* 807EB094  38 C0 02 00 */	li r6, 0x200
/* 807EB098  38 E0 00 80 */	li r7, 0x80
/* 807EB09C  4B A8 54 A5 */	bl cLib_addCalcAngleS__FPsssss
lbl_807EB0A0:
/* 807EB0A0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EB0A4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EB0A8  C0 5D 06 70 */	lfs f2, 0x670(r29)
/* 807EB0AC  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 807EB0B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807EB0B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EB0B8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807EB0BC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807EB0C0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807EB0C4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807EB0C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807EB0CC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807EB0D0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807EB0D4  38 61 00 28 */	addi r3, r1, 0x28
/* 807EB0D8  38 81 00 34 */	addi r4, r1, 0x34
/* 807EB0DC  4B B5 C2 C1 */	bl PSVECSquareDistance
/* 807EB0E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EB0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EB0E8  40 81 00 58 */	ble lbl_807EB140
/* 807EB0EC  FC 00 08 34 */	frsqrte f0, f1
/* 807EB0F0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807EB0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EB0F8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807EB0FC  FC 00 00 32 */	fmul f0, f0, f0
/* 807EB100  FC 01 00 32 */	fmul f0, f1, f0
/* 807EB104  FC 03 00 28 */	fsub f0, f3, f0
/* 807EB108  FC 02 00 32 */	fmul f0, f2, f0
/* 807EB10C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EB110  FC 00 00 32 */	fmul f0, f0, f0
/* 807EB114  FC 01 00 32 */	fmul f0, f1, f0
/* 807EB118  FC 03 00 28 */	fsub f0, f3, f0
/* 807EB11C  FC 02 00 32 */	fmul f0, f2, f0
/* 807EB120  FC 44 00 32 */	fmul f2, f4, f0
/* 807EB124  FC 00 00 32 */	fmul f0, f0, f0
/* 807EB128  FC 01 00 32 */	fmul f0, f1, f0
/* 807EB12C  FC 03 00 28 */	fsub f0, f3, f0
/* 807EB130  FC 02 00 32 */	fmul f0, f2, f0
/* 807EB134  FC 21 00 32 */	fmul f1, f1, f0
/* 807EB138  FC 20 08 18 */	frsp f1, f1
/* 807EB13C  48 00 00 88 */	b lbl_807EB1C4
lbl_807EB140:
/* 807EB140  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807EB144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EB148  40 80 00 10 */	bge lbl_807EB158
/* 807EB14C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EB150  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EB154  48 00 00 70 */	b lbl_807EB1C4
lbl_807EB158:
/* 807EB158  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807EB15C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807EB160  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EB164  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EB168  7C 03 00 00 */	cmpw r3, r0
/* 807EB16C  41 82 00 14 */	beq lbl_807EB180
/* 807EB170  40 80 00 40 */	bge lbl_807EB1B0
/* 807EB174  2C 03 00 00 */	cmpwi r3, 0
/* 807EB178  41 82 00 20 */	beq lbl_807EB198
/* 807EB17C  48 00 00 34 */	b lbl_807EB1B0
lbl_807EB180:
/* 807EB180  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EB184  41 82 00 0C */	beq lbl_807EB190
/* 807EB188  38 00 00 01 */	li r0, 1
/* 807EB18C  48 00 00 28 */	b lbl_807EB1B4
lbl_807EB190:
/* 807EB190  38 00 00 02 */	li r0, 2
/* 807EB194  48 00 00 20 */	b lbl_807EB1B4
lbl_807EB198:
/* 807EB198  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EB19C  41 82 00 0C */	beq lbl_807EB1A8
/* 807EB1A0  38 00 00 05 */	li r0, 5
/* 807EB1A4  48 00 00 10 */	b lbl_807EB1B4
lbl_807EB1A8:
/* 807EB1A8  38 00 00 03 */	li r0, 3
/* 807EB1AC  48 00 00 08 */	b lbl_807EB1B4
lbl_807EB1B0:
/* 807EB1B0  38 00 00 04 */	li r0, 4
lbl_807EB1B4:
/* 807EB1B4  2C 00 00 01 */	cmpwi r0, 1
/* 807EB1B8  40 82 00 0C */	bne lbl_807EB1C4
/* 807EB1BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EB1C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EB1C4:
/* 807EB1C4  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 807EB1C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EB1CC  40 81 00 54 */	ble lbl_807EB220
/* 807EB1D0  38 00 00 C8 */	li r0, 0xc8
/* 807EB1D4  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EB1D8  7F A3 EB 78 */	mr r3, r29
/* 807EB1DC  38 80 00 0E */	li r4, 0xe
/* 807EB1E0  38 A0 00 00 */	li r5, 0
/* 807EB1E4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB1E8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB1EC  4B FF C8 F1 */	bl setBck__8daE_WW_cFiUcff
/* 807EB1F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EB1F4  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EB1F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807EB1FC  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EB200  38 81 00 1C */	addi r4, r1, 0x1c
/* 807EB204  38 A0 00 00 */	li r5, 0
/* 807EB208  38 C0 FF FF */	li r6, -1
/* 807EB20C  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807EB210  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EB214  7D 89 03 A6 */	mtctr r12
/* 807EB218  4E 80 04 21 */	bctrl 
/* 807EB21C  48 00 04 14 */	b lbl_807EB630
lbl_807EB220:
/* 807EB220  38 80 00 00 */	li r4, 0
/* 807EB224  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807EB228  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807EB22C  EC 01 00 2A */	fadds f0, f1, f0
/* 807EB230  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EB234  40 81 00 08 */	ble lbl_807EB23C
/* 807EB238  38 80 00 01 */	li r4, 1
lbl_807EB23C:
/* 807EB23C  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EB240  28 00 00 00 */	cmplwi r0, 0
/* 807EB244  40 82 00 28 */	bne lbl_807EB26C
/* 807EB248  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 807EB24C  2C 00 00 00 */	cmpwi r0, 0
/* 807EB250  40 82 00 1C */	bne lbl_807EB26C
/* 807EB254  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807EB258  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807EB25C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EB260  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EB264  40 82 00 08 */	bne lbl_807EB26C
/* 807EB268  38 80 00 01 */	li r4, 1
lbl_807EB26C:
/* 807EB26C  2C 04 00 00 */	cmpwi r4, 0
/* 807EB270  41 82 03 A8 */	beq lbl_807EB618
/* 807EB274  38 00 00 02 */	li r0, 2
/* 807EB278  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EB27C  7F A3 EB 78 */	mr r3, r29
/* 807EB280  38 80 00 0E */	li r4, 0xe
/* 807EB284  38 A0 00 00 */	li r5, 0
/* 807EB288  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB28C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB290  4B FF C8 4D */	bl setBck__8daE_WW_cFiUcff
/* 807EB294  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EB298  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EB29C  90 01 00 18 */	stw r0, 0x18(r1)
/* 807EB2A0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EB2A4  38 81 00 18 */	addi r4, r1, 0x18
/* 807EB2A8  38 A0 00 00 */	li r5, 0
/* 807EB2AC  38 C0 FF FF */	li r6, -1
/* 807EB2B0  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807EB2B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EB2B8  7D 89 03 A6 */	mtctr r12
/* 807EB2BC  4E 80 04 21 */	bctrl 
/* 807EB2C0  48 00 03 58 */	b lbl_807EB618
lbl_807EB2C4:
/* 807EB2C4  38 80 00 01 */	li r4, 1
/* 807EB2C8  98 9D 07 5A */	stb r4, 0x75a(r29)
/* 807EB2CC  80 1D 07 CC */	lwz r0, 0x7cc(r29)
/* 807EB2D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB2D4  40 82 00 34 */	bne lbl_807EB308
/* 807EB2D8  7F A3 EB 78 */	mr r3, r29
/* 807EB2DC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EB2E0  4B 82 F4 31 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EB2E4  7C 64 1B 78 */	mr r4, r3
/* 807EB2E8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EB2EC  38 A0 00 04 */	li r5, 4
/* 807EB2F0  38 C0 08 00 */	li r6, 0x800
/* 807EB2F4  38 E0 01 00 */	li r7, 0x100
/* 807EB2F8  4B A8 52 49 */	bl cLib_addCalcAngleS__FPsssss
/* 807EB2FC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EB300  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EB304  48 00 03 14 */	b lbl_807EB618
lbl_807EB308:
/* 807EB308  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EB30C  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 807EB310  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807EB314  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EB318  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EB31C  40 82 00 14 */	bne lbl_807EB330
/* 807EB320  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EB324  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EB328  41 82 00 08 */	beq lbl_807EB330
/* 807EB32C  38 80 00 00 */	li r4, 0
lbl_807EB330:
/* 807EB330  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EB334  41 82 02 E4 */	beq lbl_807EB618
/* 807EB338  7F A3 EB 78 */	mr r3, r29
/* 807EB33C  38 80 00 0F */	li r4, 0xf
/* 807EB340  38 A0 00 02 */	li r5, 2
/* 807EB344  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB348  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB34C  4B FF C7 91 */	bl setBck__8daE_WW_cFiUcff
/* 807EB350  38 00 00 0A */	li r0, 0xa
/* 807EB354  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EB358  48 00 02 C0 */	b lbl_807EB618
lbl_807EB35C:
/* 807EB35C  38 00 00 00 */	li r0, 0
/* 807EB360  90 1D 07 3C */	stw r0, 0x73c(r29)
lbl_807EB364:
/* 807EB364  38 00 00 01 */	li r0, 1
/* 807EB368  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807EB36C  7F A3 EB 78 */	mr r3, r29
/* 807EB370  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EB374  4B 82 F3 9D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EB378  7C 64 1B 78 */	mr r4, r3
/* 807EB37C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EB380  38 A0 00 04 */	li r5, 4
/* 807EB384  38 C0 08 00 */	li r6, 0x800
/* 807EB388  38 E0 01 00 */	li r7, 0x100
/* 807EB38C  4B A8 51 B5 */	bl cLib_addCalcAngleS__FPsssss
/* 807EB390  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807EB394  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EB398  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807EB39C  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807EB3A0  EC 01 00 2A */	fadds f0, f1, f0
/* 807EB3A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EB3A8  40 80 00 2C */	bge lbl_807EB3D4
/* 807EB3AC  7F A3 EB 78 */	mr r3, r29
/* 807EB3B0  38 80 00 0F */	li r4, 0xf
/* 807EB3B4  38 A0 00 02 */	li r5, 2
/* 807EB3B8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB3BC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB3C0  4B FF C7 1D */	bl setBck__8daE_WW_cFiUcff
/* 807EB3C4  38 00 00 0A */	li r0, 0xa
/* 807EB3C8  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EB3CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EB3D0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807EB3D4:
/* 807EB3D4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807EB3D8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807EB3DC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807EB3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EB3E4  4C 40 13 82 */	cror 2, 0, 2
/* 807EB3E8  40 82 02 30 */	bne lbl_807EB618
/* 807EB3EC  7F A3 EB 78 */	mr r3, r29
/* 807EB3F0  4B FF D8 65 */	bl checkSideStep__8daE_WW_cFv
/* 807EB3F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EB3F8  41 82 00 18 */	beq lbl_807EB410
/* 807EB3FC  38 00 00 19 */	li r0, 0x19
/* 807EB400  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EB404  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EB408  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807EB40C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807EB410:
/* 807EB410  80 1D 07 3C */	lwz r0, 0x73c(r29)
/* 807EB414  2C 00 00 00 */	cmpwi r0, 0
/* 807EB418  40 82 02 00 */	bne lbl_807EB618
/* 807EB41C  7F A3 EB 78 */	mr r3, r29
/* 807EB420  48 00 05 45 */	bl checkMoveOut__8daE_WW_cFv
/* 807EB424  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EB428  41 82 01 F0 */	beq lbl_807EB618
/* 807EB42C  48 00 02 04 */	b lbl_807EB630
lbl_807EB430:
/* 807EB430  7F A3 EB 78 */	mr r3, r29
/* 807EB434  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EB438  4B 82 F2 D9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EB43C  B0 7D 06 CC */	sth r3, 0x6cc(r29)
/* 807EB440  A8 1D 06 CC */	lha r0, 0x6cc(r29)
/* 807EB444  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807EB448  80 1D 06 C0 */	lwz r0, 0x6c0(r29)
/* 807EB44C  2C 00 00 00 */	cmpwi r0, 0
/* 807EB450  40 82 00 60 */	bne lbl_807EB4B0
/* 807EB454  7F A3 EB 78 */	mr r3, r29
/* 807EB458  38 80 00 0C */	li r4, 0xc
/* 807EB45C  38 A0 00 00 */	li r5, 0
/* 807EB460  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB464  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB468  4B FF C6 75 */	bl setBck__8daE_WW_cFiUcff
/* 807EB46C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807EB470  4B A7 C5 1D */	bl cM_rndFX__Ff
/* 807EB474  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807EB478  38 03 38 00 */	addi r0, r3, 0x3800
/* 807EB47C  C8 5E 00 60 */	lfd f2, 0x60(r30)
/* 807EB480  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807EB484  90 01 00 6C */	stw r0, 0x6c(r1)
/* 807EB488  3C 00 43 30 */	lis r0, 0x4330
/* 807EB48C  90 01 00 68 */	stw r0, 0x68(r1)
/* 807EB490  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 807EB494  EC 00 10 28 */	fsubs f0, f0, f2
/* 807EB498  EC 00 08 2A */	fadds f0, f0, f1
/* 807EB49C  FC 00 00 1E */	fctiwz f0, f0
/* 807EB4A0  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 807EB4A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807EB4A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807EB4AC  48 00 00 5C */	b lbl_807EB508
lbl_807EB4B0:
/* 807EB4B0  7F A3 EB 78 */	mr r3, r29
/* 807EB4B4  38 80 00 0D */	li r4, 0xd
/* 807EB4B8  38 A0 00 00 */	li r5, 0
/* 807EB4BC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB4C0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB4C4  4B FF C6 19 */	bl setBck__8daE_WW_cFiUcff
/* 807EB4C8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807EB4CC  4B A7 C4 C1 */	bl cM_rndFX__Ff
/* 807EB4D0  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807EB4D4  38 03 C8 00 */	addi r0, r3, -14336
/* 807EB4D8  C8 5E 00 60 */	lfd f2, 0x60(r30)
/* 807EB4DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807EB4E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 807EB4E4  3C 00 43 30 */	lis r0, 0x4330
/* 807EB4E8  90 01 00 70 */	stw r0, 0x70(r1)
/* 807EB4EC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 807EB4F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 807EB4F4  EC 00 08 2A */	fadds f0, f0, f1
/* 807EB4F8  FC 00 00 1E */	fctiwz f0, f0
/* 807EB4FC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807EB500  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807EB504  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_807EB508:
/* 807EB508  38 00 00 1B */	li r0, 0x1b
/* 807EB50C  90 1D 06 BC */	stw r0, 0x6bc(r29)
lbl_807EB510:
/* 807EB510  38 00 00 01 */	li r0, 1
/* 807EB514  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807EB518  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807EB51C  38 63 00 0C */	addi r3, r3, 0xc
/* 807EB520  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807EB524  4B B3 CF 09 */	bl checkPass__12J3DFrameCtrlFf
/* 807EB528  2C 03 00 00 */	cmpwi r3, 0
/* 807EB52C  41 82 00 EC */	beq lbl_807EB618
/* 807EB530  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807EB534  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807EB538  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807EB53C  4B A7 C4 51 */	bl cM_rndFX__Ff
/* 807EB540  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807EB544  EC 00 08 2A */	fadds f0, f0, f1
/* 807EB548  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807EB54C  38 00 00 01 */	li r0, 1
/* 807EB550  98 1D 07 5B */	stb r0, 0x75b(r29)
/* 807EB554  38 00 00 1C */	li r0, 0x1c
/* 807EB558  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807EB55C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EB560  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EB564  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EB568  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EB56C  38 81 00 14 */	addi r4, r1, 0x14
/* 807EB570  38 A0 00 00 */	li r5, 0
/* 807EB574  38 C0 FF FF */	li r6, -1
/* 807EB578  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807EB57C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EB580  7D 89 03 A6 */	mtctr r12
/* 807EB584  4E 80 04 21 */	bctrl 
/* 807EB588  48 00 00 90 */	b lbl_807EB618
lbl_807EB58C:
/* 807EB58C  38 00 00 01 */	li r0, 1
/* 807EB590  98 1D 07 5A */	stb r0, 0x75a(r29)
/* 807EB594  7F A3 EB 78 */	mr r3, r29
/* 807EB598  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807EB59C  4B 82 F1 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EB5A0  7C 64 1B 78 */	mr r4, r3
/* 807EB5A4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807EB5A8  38 A0 00 04 */	li r5, 4
/* 807EB5AC  38 C0 08 00 */	li r6, 0x800
/* 807EB5B0  38 E0 01 00 */	li r7, 0x100
/* 807EB5B4  4B A8 4F 8D */	bl cLib_addCalcAngleS__FPsssss
/* 807EB5B8  80 1D 07 CC */	lwz r0, 0x7cc(r29)
/* 807EB5BC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB5C0  41 82 00 58 */	beq lbl_807EB618
/* 807EB5C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807EB5C8  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 807EB5CC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807EB5D0  38 80 00 01 */	li r4, 1
/* 807EB5D4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EB5D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EB5DC  40 82 00 14 */	bne lbl_807EB5F0
/* 807EB5E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EB5E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EB5E8  41 82 00 08 */	beq lbl_807EB5F0
/* 807EB5EC  38 80 00 00 */	li r4, 0
lbl_807EB5F0:
/* 807EB5F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EB5F4  41 82 00 24 */	beq lbl_807EB618
/* 807EB5F8  7F A3 EB 78 */	mr r3, r29
/* 807EB5FC  38 80 00 0F */	li r4, 0xf
/* 807EB600  38 A0 00 02 */	li r5, 2
/* 807EB604  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807EB608  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807EB60C  4B FF C4 D1 */	bl setBck__8daE_WW_cFiUcff
/* 807EB610  38 00 00 0A */	li r0, 0xa
/* 807EB614  90 1D 06 BC */	stw r0, 0x6bc(r29)
lbl_807EB618:
/* 807EB618  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807EB61C  38 80 00 00 */	li r4, 0
/* 807EB620  38 A0 00 08 */	li r5, 8
/* 807EB624  38 C0 04 00 */	li r6, 0x400
/* 807EB628  38 E0 01 00 */	li r7, 0x100
/* 807EB62C  4B A8 4F 15 */	bl cLib_addCalcAngleS__FPsssss
lbl_807EB630:
/* 807EB630  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 807EB634  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 807EB638  39 61 00 90 */	addi r11, r1, 0x90
/* 807EB63C  4B B7 6B ED */	bl _restgpr_29
/* 807EB640  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807EB644  7C 08 03 A6 */	mtlr r0
/* 807EB648  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807EB64C  4E 80 00 20 */	blr 
