lbl_807EBAE0:
/* 807EBAE0  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807EBAE4  7C 08 02 A6 */	mflr r0
/* 807EBAE8  90 01 01 24 */	stw r0, 0x124(r1)
/* 807EBAEC  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 807EBAF0  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 807EBAF4  39 61 01 10 */	addi r11, r1, 0x110
/* 807EBAF8  4B B7 66 E5 */	bl _savegpr_29
/* 807EBAFC  7C 7E 1B 78 */	mr r30, r3
/* 807EBB00  3C 80 80 7F */	lis r4, lit_3905@ha /* 0x807EF770@ha */
/* 807EBB04  3B E4 F7 70 */	addi r31, r4, lit_3905@l /* 0x807EF770@l */
/* 807EBB08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EBB0C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EBB10  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807EBB14  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 807EBB18  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807EBB1C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807EBB20  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807EBB24  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 807EBB28  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807EBB2C  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807EBB30  28 00 00 1C */	cmplwi r0, 0x1c
/* 807EBB34  41 81 0D EC */	bgt lbl_807EC920
/* 807EBB38  3C A0 80 7F */	lis r5, lit_6010@ha /* 0x807EF9F0@ha */
/* 807EBB3C  38 A5 F9 F0 */	addi r5, r5, lit_6010@l /* 0x807EF9F0@l */
/* 807EBB40  54 00 10 3A */	slwi r0, r0, 2
/* 807EBB44  7C 05 00 2E */	lwzx r0, r5, r0
/* 807EBB48  7C 09 03 A6 */	mtctr r0
/* 807EBB4C  4E 80 04 20 */	bctr 
lbl_807EBB50:
/* 807EBB50  38 00 00 1E */	li r0, 0x1e
/* 807EBB54  90 1E 07 28 */	stw r0, 0x728(r30)
/* 807EBB58  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807EBB5C  4B A7 BE 31 */	bl cM_rndFX__Ff
/* 807EBB60  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EBB64  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EBB68  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807EBB6C  EC 00 08 2A */	fadds f0, f0, f1
/* 807EBB70  FC 00 00 1E */	fctiwz f0, f0
/* 807EBB74  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 807EBB78  80 01 00 EC */	lwz r0, 0xec(r1)
/* 807EBB7C  90 1E 07 34 */	stw r0, 0x734(r30)
lbl_807EBB80:
/* 807EBB80  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807EBB84  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807EBB88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EBB8C  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 807EBB90  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 807EBB94  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807EBB98  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EBB9C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EBBA0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807EBBA4  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 807EBBA8  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 807EBBAC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 807EBBB0  38 81 00 CC */	addi r4, r1, 0xcc
/* 807EBBB4  4B B5 B7 E9 */	bl PSVECSquareDistance
/* 807EBBB8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EBBBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBBC0  40 81 00 58 */	ble lbl_807EBC18
/* 807EBBC4  FC 00 08 34 */	frsqrte f0, f1
/* 807EBBC8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EBBCC  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBBD0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EBBD4  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBBD8  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBBDC  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBBE0  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBBE4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBBE8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBBEC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBBF0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBBF4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBBF8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBBFC  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBC00  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBC04  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBC08  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBC0C  FF E1 00 32 */	fmul f31, f1, f0
/* 807EBC10  FF E0 F8 18 */	frsp f31, f31
/* 807EBC14  48 00 00 90 */	b lbl_807EBCA4
lbl_807EBC18:
/* 807EBC18  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EBC1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBC20  40 80 00 10 */	bge lbl_807EBC30
/* 807EBC24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBC28  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EBC2C  48 00 00 78 */	b lbl_807EBCA4
lbl_807EBC30:
/* 807EBC30  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807EBC34  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807EBC38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EBC3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EBC40  7C 03 00 00 */	cmpw r3, r0
/* 807EBC44  41 82 00 14 */	beq lbl_807EBC58
/* 807EBC48  40 80 00 40 */	bge lbl_807EBC88
/* 807EBC4C  2C 03 00 00 */	cmpwi r3, 0
/* 807EBC50  41 82 00 20 */	beq lbl_807EBC70
/* 807EBC54  48 00 00 34 */	b lbl_807EBC88
lbl_807EBC58:
/* 807EBC58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBC5C  41 82 00 0C */	beq lbl_807EBC68
/* 807EBC60  38 00 00 01 */	li r0, 1
/* 807EBC64  48 00 00 28 */	b lbl_807EBC8C
lbl_807EBC68:
/* 807EBC68  38 00 00 02 */	li r0, 2
/* 807EBC6C  48 00 00 20 */	b lbl_807EBC8C
lbl_807EBC70:
/* 807EBC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBC74  41 82 00 0C */	beq lbl_807EBC80
/* 807EBC78  38 00 00 05 */	li r0, 5
/* 807EBC7C  48 00 00 10 */	b lbl_807EBC8C
lbl_807EBC80:
/* 807EBC80  38 00 00 03 */	li r0, 3
/* 807EBC84  48 00 00 08 */	b lbl_807EBC8C
lbl_807EBC88:
/* 807EBC88  38 00 00 04 */	li r0, 4
lbl_807EBC8C:
/* 807EBC8C  2C 00 00 01 */	cmpwi r0, 1
/* 807EBC90  40 82 00 10 */	bne lbl_807EBCA0
/* 807EBC94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBC98  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EBC9C  48 00 00 08 */	b lbl_807EBCA4
lbl_807EBCA0:
/* 807EBCA0  FF E0 08 90 */	fmr f31, f1
lbl_807EBCA4:
/* 807EBCA4  38 00 00 01 */	li r0, 1
/* 807EBCA8  98 1E 07 5A */	stb r0, 0x75a(r30)
/* 807EBCAC  7F C3 F3 78 */	mr r3, r30
/* 807EBCB0  4B FF C3 1D */	bl getNearPlayerAngle__8daE_WW_cFv
/* 807EBCB4  7C 64 1B 78 */	mr r4, r3
/* 807EBCB8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807EBCBC  38 A0 00 04 */	li r5, 4
/* 807EBCC0  38 C0 08 00 */	li r6, 0x800
/* 807EBCC4  38 E0 01 00 */	li r7, 0x100
/* 807EBCC8  4B A8 48 79 */	bl cLib_addCalcAngleS__FPsssss
/* 807EBCCC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807EBCD0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807EBCD4  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807EBCD8  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 807EBCDC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807EBCE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EBCE4  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 807EBCE8  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 807EBCEC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807EBCF0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807EBCF4  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 807EBCF8  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 807EBCFC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807EBD00  38 61 00 A8 */	addi r3, r1, 0xa8
/* 807EBD04  38 81 00 B4 */	addi r4, r1, 0xb4
/* 807EBD08  4B B5 B6 95 */	bl PSVECSquareDistance
/* 807EBD0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EBD10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBD14  40 81 00 58 */	ble lbl_807EBD6C
/* 807EBD18  FC 00 08 34 */	frsqrte f0, f1
/* 807EBD1C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EBD20  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBD24  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EBD28  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBD2C  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBD30  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBD34  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBD38  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBD3C  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBD40  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBD44  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBD48  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBD4C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBD50  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBD54  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBD58  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBD5C  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBD60  FC 21 00 32 */	fmul f1, f1, f0
/* 807EBD64  FC 20 08 18 */	frsp f1, f1
/* 807EBD68  48 00 00 88 */	b lbl_807EBDF0
lbl_807EBD6C:
/* 807EBD6C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EBD70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBD74  40 80 00 10 */	bge lbl_807EBD84
/* 807EBD78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBD7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EBD80  48 00 00 70 */	b lbl_807EBDF0
lbl_807EBD84:
/* 807EBD84  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807EBD88  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 807EBD8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EBD90  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EBD94  7C 03 00 00 */	cmpw r3, r0
/* 807EBD98  41 82 00 14 */	beq lbl_807EBDAC
/* 807EBD9C  40 80 00 40 */	bge lbl_807EBDDC
/* 807EBDA0  2C 03 00 00 */	cmpwi r3, 0
/* 807EBDA4  41 82 00 20 */	beq lbl_807EBDC4
/* 807EBDA8  48 00 00 34 */	b lbl_807EBDDC
lbl_807EBDAC:
/* 807EBDAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBDB0  41 82 00 0C */	beq lbl_807EBDBC
/* 807EBDB4  38 00 00 01 */	li r0, 1
/* 807EBDB8  48 00 00 28 */	b lbl_807EBDE0
lbl_807EBDBC:
/* 807EBDBC  38 00 00 02 */	li r0, 2
/* 807EBDC0  48 00 00 20 */	b lbl_807EBDE0
lbl_807EBDC4:
/* 807EBDC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBDC8  41 82 00 0C */	beq lbl_807EBDD4
/* 807EBDCC  38 00 00 05 */	li r0, 5
/* 807EBDD0  48 00 00 10 */	b lbl_807EBDE0
lbl_807EBDD4:
/* 807EBDD4  38 00 00 03 */	li r0, 3
/* 807EBDD8  48 00 00 08 */	b lbl_807EBDE0
lbl_807EBDDC:
/* 807EBDDC  38 00 00 04 */	li r0, 4
lbl_807EBDE0:
/* 807EBDE0  2C 00 00 01 */	cmpwi r0, 1
/* 807EBDE4  40 82 00 0C */	bne lbl_807EBDF0
/* 807EBDE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBDEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EBDF0:
/* 807EBDF0  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 807EBDF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBDF8  40 81 01 A0 */	ble lbl_807EBF98
/* 807EBDFC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807EBE00  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 807EBE04  EC 00 08 2A */	fadds f0, f0, f1
/* 807EBE08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EBE0C  40 80 00 1C */	bge lbl_807EBE28
/* 807EBE10  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 807EBE14  2C 00 00 00 */	cmpwi r0, 0
/* 807EBE18  40 82 02 34 */	bne lbl_807EC04C
/* 807EBE1C  38 00 00 0B */	li r0, 0xb
/* 807EBE20  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EBE24  48 00 02 28 */	b lbl_807EC04C
lbl_807EBE28:
/* 807EBE28  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807EBE2C  EC 00 08 2A */	fadds f0, f0, f1
/* 807EBE30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EBE34  40 81 00 1C */	ble lbl_807EBE50
/* 807EBE38  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807EBE3C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807EBE40  41 82 02 0C */	beq lbl_807EC04C
/* 807EBE44  7F C3 F3 78 */	mr r3, r30
/* 807EBE48  4B 82 DE 35 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807EBE4C  48 00 0A D4 */	b lbl_807EC920
lbl_807EBE50:
/* 807EBE50  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807EBE54  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 807EBE58  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807EBE5C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EBE60  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 807EBE64  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 807EBE68  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EBE6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EBE70  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807EBE74  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 807EBE78  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 807EBE7C  38 61 00 90 */	addi r3, r1, 0x90
/* 807EBE80  38 81 00 9C */	addi r4, r1, 0x9c
/* 807EBE84  4B B5 B5 19 */	bl PSVECSquareDistance
/* 807EBE88  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EBE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBE90  40 81 00 58 */	ble lbl_807EBEE8
/* 807EBE94  FC 00 08 34 */	frsqrte f0, f1
/* 807EBE98  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EBE9C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBEA0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EBEA4  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBEA8  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBEAC  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBEB0  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBEB4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBEB8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBEBC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBEC0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBEC4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBEC8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBECC  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBED0  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBED4  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBED8  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBEDC  FC 21 00 32 */	fmul f1, f1, f0
/* 807EBEE0  FC 20 08 18 */	frsp f1, f1
/* 807EBEE4  48 00 00 88 */	b lbl_807EBF6C
lbl_807EBEE8:
/* 807EBEE8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EBEEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBEF0  40 80 00 10 */	bge lbl_807EBF00
/* 807EBEF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBEF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EBEFC  48 00 00 70 */	b lbl_807EBF6C
lbl_807EBF00:
/* 807EBF00  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807EBF04  80 81 00 18 */	lwz r4, 0x18(r1)
/* 807EBF08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EBF0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EBF10  7C 03 00 00 */	cmpw r3, r0
/* 807EBF14  41 82 00 14 */	beq lbl_807EBF28
/* 807EBF18  40 80 00 40 */	bge lbl_807EBF58
/* 807EBF1C  2C 03 00 00 */	cmpwi r3, 0
/* 807EBF20  41 82 00 20 */	beq lbl_807EBF40
/* 807EBF24  48 00 00 34 */	b lbl_807EBF58
lbl_807EBF28:
/* 807EBF28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBF2C  41 82 00 0C */	beq lbl_807EBF38
/* 807EBF30  38 00 00 01 */	li r0, 1
/* 807EBF34  48 00 00 28 */	b lbl_807EBF5C
lbl_807EBF38:
/* 807EBF38  38 00 00 02 */	li r0, 2
/* 807EBF3C  48 00 00 20 */	b lbl_807EBF5C
lbl_807EBF40:
/* 807EBF40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBF44  41 82 00 0C */	beq lbl_807EBF50
/* 807EBF48  38 00 00 05 */	li r0, 5
/* 807EBF4C  48 00 00 10 */	b lbl_807EBF5C
lbl_807EBF50:
/* 807EBF50  38 00 00 03 */	li r0, 3
/* 807EBF54  48 00 00 08 */	b lbl_807EBF5C
lbl_807EBF58:
/* 807EBF58  38 00 00 04 */	li r0, 4
lbl_807EBF5C:
/* 807EBF5C  2C 00 00 01 */	cmpwi r0, 1
/* 807EBF60  40 82 00 0C */	bne lbl_807EBF6C
/* 807EBF64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBF68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EBF6C:
/* 807EBF6C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807EBF70  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 807EBF74  EC 02 00 2A */	fadds f0, f2, f0
/* 807EBF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBF7C  40 81 00 D0 */	ble lbl_807EC04C
/* 807EBF80  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 807EBF84  2C 00 00 00 */	cmpwi r0, 0
/* 807EBF88  40 82 00 C4 */	bne lbl_807EC04C
/* 807EBF8C  38 00 00 0B */	li r0, 0xb
/* 807EBF90  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EBF94  48 00 00 B8 */	b lbl_807EC04C
lbl_807EBF98:
/* 807EBF98  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 807EBF9C  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 807EBFA0  EC 01 00 2A */	fadds f0, f1, f0
/* 807EBFA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EBFA8  40 80 00 1C */	bge lbl_807EBFC4
/* 807EBFAC  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 807EBFB0  2C 00 00 00 */	cmpwi r0, 0
/* 807EBFB4  40 82 00 98 */	bne lbl_807EC04C
/* 807EBFB8  38 00 00 0F */	li r0, 0xf
/* 807EBFBC  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EBFC0  48 00 00 8C */	b lbl_807EC04C
lbl_807EBFC4:
/* 807EBFC4  7F C3 F3 78 */	mr r3, r30
/* 807EBFC8  4B FF E4 AD */	bl checkAttackStart__8daE_WW_cFv
/* 807EBFCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EBFD0  40 82 09 50 */	bne lbl_807EC920
/* 807EBFD4  7F C3 F3 78 */	mr r3, r30
/* 807EBFD8  48 00 09 69 */	bl checkWalkStart__8daE_WW_cFv
/* 807EBFDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EBFE0  40 82 09 40 */	bne lbl_807EC920
/* 807EBFE4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 807EBFE8  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 807EBFEC  EC 01 00 2A */	fadds f0, f1, f0
/* 807EBFF0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807EBFF4  40 81 00 58 */	ble lbl_807EC04C
/* 807EBFF8  7F C3 F3 78 */	mr r3, r30
/* 807EBFFC  38 80 00 0B */	li r4, 0xb
/* 807EC000  38 A0 00 02 */	li r5, 2
/* 807EC004  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC008  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EC00C  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807EC010  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807EC014  4B FF BA C9 */	bl setBck__8daE_WW_cFiUcff
/* 807EC018  7F C3 F3 78 */	mr r3, r30
/* 807EC01C  38 80 00 03 */	li r4, 3
/* 807EC020  38 A0 00 15 */	li r5, 0x15
/* 807EC024  4B FF BB B9 */	bl setActionMode__8daE_WW_cFii
/* 807EC028  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EC02C  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EC030  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 807EC034  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 807EC038  EC 01 00 28 */	fsubs f0, f1, f0
/* 807EC03C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EC040  38 00 00 1E */	li r0, 0x1e
/* 807EC044  90 1E 07 3C */	stw r0, 0x73c(r30)
/* 807EC048  48 00 08 D8 */	b lbl_807EC920
lbl_807EC04C:
/* 807EC04C  7F C3 F3 78 */	mr r3, r30
/* 807EC050  4B FF CC 05 */	bl checkSideStep__8daE_WW_cFv
/* 807EC054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EC058  41 82 00 18 */	beq lbl_807EC070
/* 807EC05C  38 00 00 19 */	li r0, 0x19
/* 807EC060  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EC064  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EC068  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807EC06C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807EC070:
/* 807EC070  80 1E 06 BC */	lwz r0, 0x6bc(r30)
/* 807EC074  2C 00 00 00 */	cmpwi r0, 0
/* 807EC078  40 82 08 A8 */	bne lbl_807EC920
/* 807EC07C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EC080  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EC084  7F C3 F3 78 */	mr r3, r30
/* 807EC088  38 80 00 0F */	li r4, 0xf
/* 807EC08C  38 A0 00 02 */	li r5, 2
/* 807EC090  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC094  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EC098  4B FF BA 45 */	bl setBck__8daE_WW_cFiUcff
/* 807EC09C  38 00 00 0A */	li r0, 0xa
/* 807EC0A0  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EC0A4  48 00 08 7C */	b lbl_807EC920
lbl_807EC0A8:
/* 807EC0A8  38 80 00 0B */	li r4, 0xb
/* 807EC0AC  38 A0 00 02 */	li r5, 2
/* 807EC0B0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC0B4  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EC0B8  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807EC0BC  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807EC0C0  4B FF BA 1D */	bl setBck__8daE_WW_cFiUcff
/* 807EC0C4  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EC0C8  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EC0CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EC0D0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EC0D4  38 00 00 0C */	li r0, 0xc
/* 807EC0D8  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EC0DC  38 00 00 3C */	li r0, 0x3c
/* 807EC0E0  90 1E 07 28 */	stw r0, 0x728(r30)
lbl_807EC0E4:
/* 807EC0E4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807EC0E8  38 9E 06 68 */	addi r4, r30, 0x668
/* 807EC0EC  4B A8 4B 19 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807EC0F0  7C 64 1B 78 */	mr r4, r3
/* 807EC0F4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807EC0F8  38 A0 00 04 */	li r5, 4
/* 807EC0FC  38 C0 08 00 */	li r6, 0x800
/* 807EC100  38 E0 01 00 */	li r7, 0x100
/* 807EC104  4B A8 44 3D */	bl cLib_addCalcAngleS__FPsssss
/* 807EC108  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807EC10C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807EC110  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807EC114  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 807EC118  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807EC11C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EC120  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 807EC124  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807EC128  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EC12C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EC130  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807EC134  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 807EC138  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 807EC13C  38 61 00 78 */	addi r3, r1, 0x78
/* 807EC140  38 81 00 84 */	addi r4, r1, 0x84
/* 807EC144  4B B5 B2 59 */	bl PSVECSquareDistance
/* 807EC148  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EC14C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC150  40 81 00 58 */	ble lbl_807EC1A8
/* 807EC154  FC 00 08 34 */	frsqrte f0, f1
/* 807EC158  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EC15C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC160  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EC164  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC168  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC16C  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC170  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC174  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC178  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC17C  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC180  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC184  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC188  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC18C  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC190  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC194  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC198  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC19C  FC 21 00 32 */	fmul f1, f1, f0
/* 807EC1A0  FC 20 08 18 */	frsp f1, f1
/* 807EC1A4  48 00 00 88 */	b lbl_807EC22C
lbl_807EC1A8:
/* 807EC1A8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EC1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC1B0  40 80 00 10 */	bge lbl_807EC1C0
/* 807EC1B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC1B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EC1BC  48 00 00 70 */	b lbl_807EC22C
lbl_807EC1C0:
/* 807EC1C0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807EC1C4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807EC1C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EC1CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EC1D0  7C 03 00 00 */	cmpw r3, r0
/* 807EC1D4  41 82 00 14 */	beq lbl_807EC1E8
/* 807EC1D8  40 80 00 40 */	bge lbl_807EC218
/* 807EC1DC  2C 03 00 00 */	cmpwi r3, 0
/* 807EC1E0  41 82 00 20 */	beq lbl_807EC200
/* 807EC1E4  48 00 00 34 */	b lbl_807EC218
lbl_807EC1E8:
/* 807EC1E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC1EC  41 82 00 0C */	beq lbl_807EC1F8
/* 807EC1F0  38 00 00 01 */	li r0, 1
/* 807EC1F4  48 00 00 28 */	b lbl_807EC21C
lbl_807EC1F8:
/* 807EC1F8  38 00 00 02 */	li r0, 2
/* 807EC1FC  48 00 00 20 */	b lbl_807EC21C
lbl_807EC200:
/* 807EC200  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC204  41 82 00 0C */	beq lbl_807EC210
/* 807EC208  38 00 00 05 */	li r0, 5
/* 807EC20C  48 00 00 10 */	b lbl_807EC21C
lbl_807EC210:
/* 807EC210  38 00 00 03 */	li r0, 3
/* 807EC214  48 00 00 08 */	b lbl_807EC21C
lbl_807EC218:
/* 807EC218  38 00 00 04 */	li r0, 4
lbl_807EC21C:
/* 807EC21C  2C 00 00 01 */	cmpwi r0, 1
/* 807EC220  40 82 00 0C */	bne lbl_807EC22C
/* 807EC224  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC228  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EC22C:
/* 807EC22C  C0 5E 06 A8 */	lfs f2, 0x6a8(r30)
/* 807EC230  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807EC234  EC 02 00 28 */	fsubs f0, f2, f0
/* 807EC238  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC23C  40 80 06 E4 */	bge lbl_807EC920
/* 807EC240  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 807EC244  2C 00 00 00 */	cmpwi r0, 0
/* 807EC248  41 82 01 34 */	beq lbl_807EC37C
/* 807EC24C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807EC250  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807EC254  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EC258  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807EC25C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 807EC260  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807EC264  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EC268  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EC26C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807EC270  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807EC274  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 807EC278  38 61 00 60 */	addi r3, r1, 0x60
/* 807EC27C  38 81 00 6C */	addi r4, r1, 0x6c
/* 807EC280  4B B5 B1 1D */	bl PSVECSquareDistance
/* 807EC284  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EC288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC28C  40 81 00 58 */	ble lbl_807EC2E4
/* 807EC290  FC 00 08 34 */	frsqrte f0, f1
/* 807EC294  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EC298  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC29C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EC2A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC2A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC2A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC2AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC2B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC2B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC2B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC2BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC2C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC2C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC2C8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC2CC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC2D0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC2D4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC2D8  FC 21 00 32 */	fmul f1, f1, f0
/* 807EC2DC  FC 20 08 18 */	frsp f1, f1
/* 807EC2E0  48 00 00 88 */	b lbl_807EC368
lbl_807EC2E4:
/* 807EC2E4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EC2E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC2EC  40 80 00 10 */	bge lbl_807EC2FC
/* 807EC2F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC2F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EC2F8  48 00 00 70 */	b lbl_807EC368
lbl_807EC2FC:
/* 807EC2FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807EC300  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807EC304  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EC308  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EC30C  7C 03 00 00 */	cmpw r3, r0
/* 807EC310  41 82 00 14 */	beq lbl_807EC324
/* 807EC314  40 80 00 40 */	bge lbl_807EC354
/* 807EC318  2C 03 00 00 */	cmpwi r3, 0
/* 807EC31C  41 82 00 20 */	beq lbl_807EC33C
/* 807EC320  48 00 00 34 */	b lbl_807EC354
lbl_807EC324:
/* 807EC324  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC328  41 82 00 0C */	beq lbl_807EC334
/* 807EC32C  38 00 00 01 */	li r0, 1
/* 807EC330  48 00 00 28 */	b lbl_807EC358
lbl_807EC334:
/* 807EC334  38 00 00 02 */	li r0, 2
/* 807EC338  48 00 00 20 */	b lbl_807EC358
lbl_807EC33C:
/* 807EC33C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC340  41 82 00 0C */	beq lbl_807EC34C
/* 807EC344  38 00 00 05 */	li r0, 5
/* 807EC348  48 00 00 10 */	b lbl_807EC358
lbl_807EC34C:
/* 807EC34C  38 00 00 03 */	li r0, 3
/* 807EC350  48 00 00 08 */	b lbl_807EC358
lbl_807EC354:
/* 807EC354  38 00 00 04 */	li r0, 4
lbl_807EC358:
/* 807EC358  2C 00 00 01 */	cmpwi r0, 1
/* 807EC35C  40 82 00 0C */	bne lbl_807EC368
/* 807EC360  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC364  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EC368:
/* 807EC368  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807EC36C  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 807EC370  EC 02 00 2A */	fadds f0, f2, f0
/* 807EC374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC378  40 81 05 A8 */	ble lbl_807EC920
lbl_807EC37C:
/* 807EC37C  7F C3 F3 78 */	mr r3, r30
/* 807EC380  38 80 00 03 */	li r4, 3
/* 807EC384  38 A0 00 02 */	li r5, 2
/* 807EC388  4B FF B8 55 */	bl setActionMode__8daE_WW_cFii
/* 807EC38C  7F C3 F3 78 */	mr r3, r30
/* 807EC390  38 80 00 0E */	li r4, 0xe
/* 807EC394  38 A0 00 00 */	li r5, 0
/* 807EC398  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC39C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EC3A0  4B FF B7 3D */	bl setBck__8daE_WW_cFiUcff
/* 807EC3A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EC3A8  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EC3AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807EC3B0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EC3B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807EC3B8  38 A0 00 00 */	li r5, 0
/* 807EC3BC  38 C0 FF FF */	li r6, -1
/* 807EC3C0  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807EC3C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EC3C8  7D 89 03 A6 */	mtctr r12
/* 807EC3CC  4E 80 04 21 */	bctrl 
/* 807EC3D0  48 00 05 50 */	b lbl_807EC920
lbl_807EC3D4:
/* 807EC3D4  38 80 00 0B */	li r4, 0xb
/* 807EC3D8  38 A0 00 02 */	li r5, 2
/* 807EC3DC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC3E0  3C C0 80 7F */	lis r6, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EC3E4  38 C6 FB CC */	addi r6, r6, l_HIO@l /* 0x807EFBCC@l */
/* 807EC3E8  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 807EC3EC  4B FF B6 F1 */	bl setBck__8daE_WW_cFiUcff
/* 807EC3F0  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EC3F4  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EC3F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EC3FC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EC400  38 00 00 10 */	li r0, 0x10
/* 807EC404  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EC408  38 00 00 3C */	li r0, 0x3c
/* 807EC40C  90 1E 07 28 */	stw r0, 0x728(r30)
/* 807EC410  7F C3 F3 78 */	mr r3, r30
/* 807EC414  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807EC418  4B 82 E2 F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EC41C  7C 7D 1B 78 */	mr r29, r3
/* 807EC420  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807EC424  38 9E 06 68 */	addi r4, r30, 0x668
/* 807EC428  4B A8 47 DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807EC42C  7C 1D 18 50 */	subf r0, r29, r3
/* 807EC430  7C 00 07 35 */	extsh. r0, r0
/* 807EC434  40 80 00 10 */	bge lbl_807EC444
/* 807EC438  38 00 20 00 */	li r0, 0x2000
/* 807EC43C  B0 1E 06 CC */	sth r0, 0x6cc(r30)
/* 807EC440  48 00 00 0C */	b lbl_807EC44C
lbl_807EC444:
/* 807EC444  38 00 E0 00 */	li r0, -8192
/* 807EC448  B0 1E 06 CC */	sth r0, 0x6cc(r30)
lbl_807EC44C:
/* 807EC44C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807EC450  38 9E 06 68 */	addi r4, r30, 0x668
/* 807EC454  4B A8 47 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807EC458  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 807EC45C  7C 00 1A 14 */	add r0, r0, r3
/* 807EC460  7C 04 07 34 */	extsh r4, r0
/* 807EC464  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807EC468  38 A0 00 04 */	li r5, 4
/* 807EC46C  38 C0 08 00 */	li r6, 0x800
/* 807EC470  38 E0 01 00 */	li r7, 0x100
/* 807EC474  4B A8 40 CD */	bl cLib_addCalcAngleS__FPsssss
/* 807EC478  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807EC47C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807EC480  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807EC484  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 807EC488  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807EC48C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EC490  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 807EC494  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 807EC498  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EC49C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EC4A0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807EC4A4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 807EC4A8  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 807EC4AC  38 61 00 48 */	addi r3, r1, 0x48
/* 807EC4B0  38 81 00 54 */	addi r4, r1, 0x54
/* 807EC4B4  4B B5 AE E9 */	bl PSVECSquareDistance
/* 807EC4B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EC4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC4C0  40 81 00 58 */	ble lbl_807EC518
/* 807EC4C4  FC 00 08 34 */	frsqrte f0, f1
/* 807EC4C8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EC4CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC4D0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EC4D4  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC4D8  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC4DC  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC4E0  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC4E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC4E8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC4EC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC4F0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC4F4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC4F8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC4FC  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC500  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC504  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC508  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC50C  FC 21 00 32 */	fmul f1, f1, f0
/* 807EC510  FC 20 08 18 */	frsp f1, f1
/* 807EC514  48 00 00 88 */	b lbl_807EC59C
lbl_807EC518:
/* 807EC518  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EC51C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC520  40 80 00 10 */	bge lbl_807EC530
/* 807EC524  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC528  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EC52C  48 00 00 70 */	b lbl_807EC59C
lbl_807EC530:
/* 807EC530  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807EC534  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807EC538  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EC53C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EC540  7C 03 00 00 */	cmpw r3, r0
/* 807EC544  41 82 00 14 */	beq lbl_807EC558
/* 807EC548  40 80 00 40 */	bge lbl_807EC588
/* 807EC54C  2C 03 00 00 */	cmpwi r3, 0
/* 807EC550  41 82 00 20 */	beq lbl_807EC570
/* 807EC554  48 00 00 34 */	b lbl_807EC588
lbl_807EC558:
/* 807EC558  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC55C  41 82 00 0C */	beq lbl_807EC568
/* 807EC560  38 00 00 01 */	li r0, 1
/* 807EC564  48 00 00 28 */	b lbl_807EC58C
lbl_807EC568:
/* 807EC568  38 00 00 02 */	li r0, 2
/* 807EC56C  48 00 00 20 */	b lbl_807EC58C
lbl_807EC570:
/* 807EC570  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC574  41 82 00 0C */	beq lbl_807EC580
/* 807EC578  38 00 00 05 */	li r0, 5
/* 807EC57C  48 00 00 10 */	b lbl_807EC58C
lbl_807EC580:
/* 807EC580  38 00 00 03 */	li r0, 3
/* 807EC584  48 00 00 08 */	b lbl_807EC58C
lbl_807EC588:
/* 807EC588  38 00 00 04 */	li r0, 4
lbl_807EC58C:
/* 807EC58C  2C 00 00 01 */	cmpwi r0, 1
/* 807EC590  40 82 00 0C */	bne lbl_807EC59C
/* 807EC594  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC598  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EC59C:
/* 807EC59C  C0 5E 06 A8 */	lfs f2, 0x6a8(r30)
/* 807EC5A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807EC5A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 807EC5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC5AC  40 80 03 74 */	bge lbl_807EC920
/* 807EC5B0  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 807EC5B4  2C 00 00 00 */	cmpwi r0, 0
/* 807EC5B8  41 82 01 34 */	beq lbl_807EC6EC
/* 807EC5BC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807EC5C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807EC5C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EC5C8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807EC5CC  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 807EC5D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807EC5D4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EC5D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EC5DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807EC5E0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807EC5E4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 807EC5E8  38 61 00 30 */	addi r3, r1, 0x30
/* 807EC5EC  38 81 00 3C */	addi r4, r1, 0x3c
/* 807EC5F0  4B B5 AD AD */	bl PSVECSquareDistance
/* 807EC5F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EC5F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC5FC  40 81 00 58 */	ble lbl_807EC654
/* 807EC600  FC 00 08 34 */	frsqrte f0, f1
/* 807EC604  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EC608  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC60C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EC610  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC614  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC618  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC61C  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC620  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC624  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC628  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC62C  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC630  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC634  FC 44 00 32 */	fmul f2, f4, f0
/* 807EC638  FC 00 00 32 */	fmul f0, f0, f0
/* 807EC63C  FC 01 00 32 */	fmul f0, f1, f0
/* 807EC640  FC 03 00 28 */	fsub f0, f3, f0
/* 807EC644  FC 02 00 32 */	fmul f0, f2, f0
/* 807EC648  FC 21 00 32 */	fmul f1, f1, f0
/* 807EC64C  FC 20 08 18 */	frsp f1, f1
/* 807EC650  48 00 00 88 */	b lbl_807EC6D8
lbl_807EC654:
/* 807EC654  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EC658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC65C  40 80 00 10 */	bge lbl_807EC66C
/* 807EC660  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC664  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EC668  48 00 00 70 */	b lbl_807EC6D8
lbl_807EC66C:
/* 807EC66C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807EC670  80 81 00 08 */	lwz r4, 8(r1)
/* 807EC674  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EC678  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EC67C  7C 03 00 00 */	cmpw r3, r0
/* 807EC680  41 82 00 14 */	beq lbl_807EC694
/* 807EC684  40 80 00 40 */	bge lbl_807EC6C4
/* 807EC688  2C 03 00 00 */	cmpwi r3, 0
/* 807EC68C  41 82 00 20 */	beq lbl_807EC6AC
/* 807EC690  48 00 00 34 */	b lbl_807EC6C4
lbl_807EC694:
/* 807EC694  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC698  41 82 00 0C */	beq lbl_807EC6A4
/* 807EC69C  38 00 00 01 */	li r0, 1
/* 807EC6A0  48 00 00 28 */	b lbl_807EC6C8
lbl_807EC6A4:
/* 807EC6A4  38 00 00 02 */	li r0, 2
/* 807EC6A8  48 00 00 20 */	b lbl_807EC6C8
lbl_807EC6AC:
/* 807EC6AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EC6B0  41 82 00 0C */	beq lbl_807EC6BC
/* 807EC6B4  38 00 00 05 */	li r0, 5
/* 807EC6B8  48 00 00 10 */	b lbl_807EC6C8
lbl_807EC6BC:
/* 807EC6BC  38 00 00 03 */	li r0, 3
/* 807EC6C0  48 00 00 08 */	b lbl_807EC6C8
lbl_807EC6C4:
/* 807EC6C4  38 00 00 04 */	li r0, 4
lbl_807EC6C8:
/* 807EC6C8  2C 00 00 01 */	cmpwi r0, 1
/* 807EC6CC  40 82 00 0C */	bne lbl_807EC6D8
/* 807EC6D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EC6D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EC6D8:
/* 807EC6D8  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807EC6DC  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 807EC6E0  EC 02 00 2A */	fadds f0, f2, f0
/* 807EC6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC6E8  40 81 02 38 */	ble lbl_807EC920
lbl_807EC6EC:
/* 807EC6EC  7F C3 F3 78 */	mr r3, r30
/* 807EC6F0  38 80 00 03 */	li r4, 3
/* 807EC6F4  38 A0 00 02 */	li r5, 2
/* 807EC6F8  4B FF B4 E5 */	bl setActionMode__8daE_WW_cFii
/* 807EC6FC  7F C3 F3 78 */	mr r3, r30
/* 807EC700  38 80 00 0E */	li r4, 0xe
/* 807EC704  38 A0 00 00 */	li r5, 0
/* 807EC708  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC70C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EC710  4B FF B3 CD */	bl setBck__8daE_WW_cFiUcff
/* 807EC714  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EC718  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EC71C  90 01 00 28 */	stw r0, 0x28(r1)
/* 807EC720  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EC724  38 81 00 28 */	addi r4, r1, 0x28
/* 807EC728  38 A0 00 00 */	li r5, 0
/* 807EC72C  38 C0 FF FF */	li r6, -1
/* 807EC730  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807EC734  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EC738  7D 89 03 A6 */	mtctr r12
/* 807EC73C  4E 80 04 21 */	bctrl 
/* 807EC740  48 00 01 E0 */	b lbl_807EC920
lbl_807EC744:
/* 807EC744  4B 82 DF CD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EC748  B0 7E 06 CC */	sth r3, 0x6cc(r30)
/* 807EC74C  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 807EC750  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807EC754  80 1E 06 C0 */	lwz r0, 0x6c0(r30)
/* 807EC758  2C 00 00 00 */	cmpwi r0, 0
/* 807EC75C  40 82 00 60 */	bne lbl_807EC7BC
/* 807EC760  7F C3 F3 78 */	mr r3, r30
/* 807EC764  38 80 00 0C */	li r4, 0xc
/* 807EC768  38 A0 00 00 */	li r5, 0
/* 807EC76C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC770  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EC774  4B FF B3 69 */	bl setBck__8daE_WW_cFiUcff
/* 807EC778  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807EC77C  4B A7 B2 11 */	bl cM_rndFX__Ff
/* 807EC780  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 807EC784  38 03 38 00 */	addi r0, r3, 0x3800
/* 807EC788  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 807EC78C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807EC790  90 01 00 EC */	stw r0, 0xec(r1)
/* 807EC794  3C 00 43 30 */	lis r0, 0x4330
/* 807EC798  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 807EC79C  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 807EC7A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 807EC7A4  EC 00 08 2A */	fadds f0, f0, f1
/* 807EC7A8  FC 00 00 1E */	fctiwz f0, f0
/* 807EC7AC  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 807EC7B0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 807EC7B4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807EC7B8  48 00 00 5C */	b lbl_807EC814
lbl_807EC7BC:
/* 807EC7BC  7F C3 F3 78 */	mr r3, r30
/* 807EC7C0  38 80 00 0D */	li r4, 0xd
/* 807EC7C4  38 A0 00 00 */	li r5, 0
/* 807EC7C8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC7CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EC7D0  4B FF B3 0D */	bl setBck__8daE_WW_cFiUcff
/* 807EC7D4  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807EC7D8  4B A7 B1 B5 */	bl cM_rndFX__Ff
/* 807EC7DC  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 807EC7E0  38 03 C8 00 */	addi r0, r3, -14336
/* 807EC7E4  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 807EC7E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807EC7EC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807EC7F0  3C 00 43 30 */	lis r0, 0x4330
/* 807EC7F4  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 807EC7F8  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 807EC7FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 807EC800  EC 00 08 2A */	fadds f0, f0, f1
/* 807EC804  FC 00 00 1E */	fctiwz f0, f0
/* 807EC808  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 807EC80C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 807EC810  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807EC814:
/* 807EC814  38 00 00 1B */	li r0, 0x1b
/* 807EC818  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_807EC81C:
/* 807EC81C  38 00 00 01 */	li r0, 1
/* 807EC820  98 1E 07 5A */	stb r0, 0x75a(r30)
/* 807EC824  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EC828  38 63 00 0C */	addi r3, r3, 0xc
/* 807EC82C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807EC830  4B B3 BB FD */	bl checkPass__12J3DFrameCtrlFf
/* 807EC834  2C 03 00 00 */	cmpwi r3, 0
/* 807EC838  41 82 00 E8 */	beq lbl_807EC920
/* 807EC83C  38 00 00 01 */	li r0, 1
/* 807EC840  98 1E 07 5B */	stb r0, 0x75b(r30)
/* 807EC844  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807EC848  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807EC84C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807EC850  4B A7 B1 3D */	bl cM_rndFX__Ff
/* 807EC854  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807EC858  EC 00 08 2A */	fadds f0, f0, f1
/* 807EC85C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EC860  38 00 00 1C */	li r0, 0x1c
/* 807EC864  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EC868  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038B@ha */
/* 807EC86C  38 03 03 8B */	addi r0, r3, 0x038B /* 0x0007038B@l */
/* 807EC870  90 01 00 24 */	stw r0, 0x24(r1)
/* 807EC874  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EC878  38 81 00 24 */	addi r4, r1, 0x24
/* 807EC87C  38 A0 00 00 */	li r5, 0
/* 807EC880  38 C0 FF FF */	li r6, -1
/* 807EC884  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807EC888  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EC88C  7D 89 03 A6 */	mtctr r12
/* 807EC890  4E 80 04 21 */	bctrl 
/* 807EC894  48 00 00 8C */	b lbl_807EC920
lbl_807EC898:
/* 807EC898  38 00 00 01 */	li r0, 1
/* 807EC89C  98 1E 07 5A */	stb r0, 0x75a(r30)
/* 807EC8A0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807EC8A4  4B 82 DE 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EC8A8  7C 64 1B 78 */	mr r4, r3
/* 807EC8AC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807EC8B0  38 A0 00 04 */	li r5, 4
/* 807EC8B4  38 C0 08 00 */	li r6, 0x800
/* 807EC8B8  38 E0 01 00 */	li r7, 0x100
/* 807EC8BC  4B A8 3C 85 */	bl cLib_addCalcAngleS__FPsssss
/* 807EC8C0  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 807EC8C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EC8C8  41 82 00 58 */	beq lbl_807EC920
/* 807EC8CC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EC8D0  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 807EC8D4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EC8D8  38 80 00 01 */	li r4, 1
/* 807EC8DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EC8E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EC8E4  40 82 00 14 */	bne lbl_807EC8F8
/* 807EC8E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EC8EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EC8F0  41 82 00 08 */	beq lbl_807EC8F8
/* 807EC8F4  38 80 00 00 */	li r4, 0
lbl_807EC8F8:
/* 807EC8F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EC8FC  41 82 00 24 */	beq lbl_807EC920
/* 807EC900  7F C3 F3 78 */	mr r3, r30
/* 807EC904  38 80 00 0F */	li r4, 0xf
/* 807EC908  38 A0 00 02 */	li r5, 2
/* 807EC90C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EC910  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EC914  4B FF B1 C9 */	bl setBck__8daE_WW_cFiUcff
/* 807EC918  38 00 00 0A */	li r0, 0xa
/* 807EC91C  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_807EC920:
/* 807EC920  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 807EC924  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 807EC928  39 61 01 10 */	addi r11, r1, 0x110
/* 807EC92C  4B B7 58 FD */	bl _restgpr_29
/* 807EC930  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807EC934  7C 08 03 A6 */	mtlr r0
/* 807EC938  38 21 01 20 */	addi r1, r1, 0x120
/* 807EC93C  4E 80 00 20 */	blr 
