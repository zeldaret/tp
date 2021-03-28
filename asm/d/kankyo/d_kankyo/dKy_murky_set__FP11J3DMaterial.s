lbl_801AC918:
/* 801AC918  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801AC91C  7C 08 02 A6 */	mflr r0
/* 801AC920  90 01 00 64 */	stw r0, 0x64(r1)
/* 801AC924  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801AC928  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 801AC92C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801AC930  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801AC934  7C 7E 1B 78 */	mr r30, r3
/* 801AC938  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AC93C  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 801AC940  80 A4 0E 78 */	lwz r5, 0xe78(r4)
/* 801AC944  80 C4 0E 74 */	lwz r6, 0xe74(r4)
/* 801AC948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC94C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC950  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 801AC954  A8 04 11 10 */	lha r0, 0x1110(r4)
/* 801AC958  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AC95C  A8 04 11 12 */	lha r0, 0x1112(r4)
/* 801AC960  B0 01 00 0E */	sth r0, 0xe(r1)
/* 801AC964  A8 04 11 14 */	lha r0, 0x1114(r4)
/* 801AC968  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801AC96C  A8 04 11 1E */	lha r0, 0x111e(r4)
/* 801AC970  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801AC974  A8 04 11 16 */	lha r0, 0x1116(r4)
/* 801AC978  98 01 00 0B */	stb r0, 0xb(r1)
/* 801AC97C  A8 04 13 00 */	lha r0, 0x1300(r4)
/* 801AC980  2C 00 FF FF */	cmpwi r0, -1
/* 801AC984  41 82 00 38 */	beq lbl_801AC9BC
/* 801AC988  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801AC98C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AC990  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AC994  3C 00 43 30 */	lis r0, 0x4330
/* 801AC998  90 01 00 18 */	stw r0, 0x18(r1)
/* 801AC99C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801AC9A0  EC 20 08 28 */	fsubs f1, f0, f1
/* 801AC9A4  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801AC9A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AC9AC  FC 00 00 1E */	fctiwz f0, f0
/* 801AC9B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801AC9B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AC9B8  98 01 00 0B */	stb r0, 0xb(r1)
lbl_801AC9BC:
/* 801AC9BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AC9C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AC9C4  A8 03 13 02 */	lha r0, 0x1302(r3)
/* 801AC9C8  2C 00 FF FF */	cmpwi r0, -1
/* 801AC9CC  41 82 00 3C */	beq lbl_801ACA08
/* 801AC9D0  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801AC9D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AC9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AC9DC  3C 00 43 30 */	lis r0, 0x4330
/* 801AC9E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 801AC9E4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801AC9E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 801AC9EC  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801AC9F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AC9F4  FC 00 00 1E */	fctiwz f0, f0
/* 801AC9F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801AC9FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801ACA00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACA04  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_801ACA08:
/* 801ACA08  28 05 00 00 */	cmplwi r5, 0
/* 801ACA0C  41 82 00 68 */	beq lbl_801ACA74
/* 801ACA10  C0 86 00 5C */	lfs f4, 0x5c(r6)
/* 801ACA14  C0 02 A3 10 */	lfs f0, lit_6042(r2)
/* 801ACA18  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 801ACA1C  40 81 00 58 */	ble lbl_801ACA74
/* 801ACA20  A8 01 00 12 */	lha r0, 0x12(r1)
/* 801ACA24  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801ACA28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801ACA2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ACA30  3C 00 43 30 */	lis r0, 0x4330
/* 801ACA34  90 01 00 20 */	stw r0, 0x20(r1)
/* 801ACA38  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801ACA3C  EC 40 08 28 */	fsubs f2, f0, f1
/* 801ACA40  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801ACA44  C0 65 00 98 */	lfs f3, 0x98(r5)
/* 801ACA48  EC 03 00 F2 */	fmuls f0, f3, f3
/* 801ACA4C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801ACA50  EC 01 00 28 */	fsubs f0, f1, f0
/* 801ACA54  EC 04 00 32 */	fmuls f0, f4, f0
/* 801ACA58  EC 01 00 28 */	fsubs f0, f1, f0
/* 801ACA5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801ACA60  FC 00 00 1E */	fctiwz f0, f0
/* 801ACA64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801ACA68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801ACA6C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACA70  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_801ACA74:
/* 801ACA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ACA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ACA7C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801ACA80  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801ACA84  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801ACA88  38 84 02 61 */	addi r4, r4, 0x261
/* 801ACA8C  48 1B BF 09 */	bl strcmp
/* 801ACA90  2C 03 00 00 */	cmpwi r3, 0
/* 801ACA94  40 82 01 E0 */	bne lbl_801ACC74
/* 801ACA98  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801ACA9C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801ACAA0  80 63 10 4C */	lwz r3, 0x104c(r3)
/* 801ACAA4  28 03 00 00 */	cmplwi r3, 0
/* 801ACAA8  41 82 00 10 */	beq lbl_801ACAB8
/* 801ACAAC  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801ACAB0  C0 03 1C 3C */	lfs f0, 0x1c3c(r3)
/* 801ACAB4  EF E1 00 28 */	fsubs f31, f1, f0
lbl_801ACAB8:
/* 801ACAB8  38 00 00 14 */	li r0, 0x14
/* 801ACABC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801ACAC0  38 C0 00 06 */	li r6, 6
/* 801ACAC4  B0 C1 00 0E */	sth r6, 0xe(r1)
/* 801ACAC8  38 A0 00 0F */	li r5, 0xf
/* 801ACACC  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 801ACAD0  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801ACAD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801ACAD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ACADC  3C 80 43 30 */	lis r4, 0x4330
/* 801ACAE0  90 81 00 20 */	stw r4, 0x20(r1)
/* 801ACAE4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801ACAE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801ACAEC  FC 00 00 50 */	fneg f0, f0
/* 801ACAF0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801ACAF4  FC 00 00 1E */	fctiwz f0, f0
/* 801ACAF8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801ACAFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801ACB00  7C 03 07 34 */	extsh r3, r0
/* 801ACB04  38 03 00 14 */	addi r0, r3, 0x14
/* 801ACB08  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACB0C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801ACB10  C0 22 A4 00 */	lfs f1, lit_10483(r2)
/* 801ACB14  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 801ACB18  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801ACB1C  90 81 00 28 */	stw r4, 0x28(r1)
/* 801ACB20  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801ACB24  EC 00 10 28 */	fsubs f0, f0, f2
/* 801ACB28  EC 01 00 28 */	fsubs f0, f1, f0
/* 801ACB2C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801ACB30  FC 00 00 1E */	fctiwz f0, f0
/* 801ACB34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801ACB38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801ACB3C  7C 03 07 34 */	extsh r3, r0
/* 801ACB40  38 03 00 06 */	addi r0, r3, 6
/* 801ACB44  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACB48  B0 01 00 0E */	sth r0, 0xe(r1)
/* 801ACB4C  C0 22 A4 04 */	lfs f1, lit_10484(r2)
/* 801ACB50  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801ACB54  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801ACB58  90 81 00 38 */	stw r4, 0x38(r1)
/* 801ACB5C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801ACB60  EC 00 10 28 */	fsubs f0, f0, f2
/* 801ACB64  EC 01 00 28 */	fsubs f0, f1, f0
/* 801ACB68  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801ACB6C  FC 00 00 1E */	fctiwz f0, f0
/* 801ACB70  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801ACB74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ACB78  7C 03 07 34 */	extsh r3, r0
/* 801ACB7C  38 03 00 0F */	addi r0, r3, 0xf
/* 801ACB80  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACB84  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801ACB88  28 1F 00 00 */	cmplwi r31, 0
/* 801ACB8C  41 82 00 5C */	beq lbl_801ACBE8
/* 801ACB90  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 801ACB94  C0 02 A1 E4 */	lfs f0, lit_4354(r2)
/* 801ACB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ACB9C  40 80 00 4C */	bge lbl_801ACBE8
/* 801ACBA0  C0 62 A2 6C */	lfs f3, lit_4732(r2)
/* 801ACBA4  C0 02 A4 08 */	lfs f0, lit_10485(r2)
/* 801ACBA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ACBAC  40 80 00 0C */	bge lbl_801ACBB8
/* 801ACBB0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801ACBB4  48 00 00 18 */	b lbl_801ACBCC
lbl_801ACBB8:
/* 801ACBB8  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801ACBBC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801ACBC0  C0 02 A2 78 */	lfs f0, lit_4852(r2)
/* 801ACBC4  EC 01 00 24 */	fdivs f0, f1, f0
/* 801ACBC8  EC 02 00 28 */	fsubs f0, f2, f0
lbl_801ACBCC:
/* 801ACBCC  EC 03 00 32 */	fmuls f0, f3, f0
/* 801ACBD0  FC 00 00 1E */	fctiwz f0, f0
/* 801ACBD4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801ACBD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ACBDC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACBE0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801ACBE4  48 00 00 0C */	b lbl_801ACBF0
lbl_801ACBE8:
/* 801ACBE8  38 00 00 00 */	li r0, 0
/* 801ACBEC  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_801ACBF0:
/* 801ACBF0  A8 81 00 12 */	lha r4, 0x12(r1)
/* 801ACBF4  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801ACBF8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801ACBFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801ACC00  3C 60 43 30 */	lis r3, 0x4330
/* 801ACC04  90 61 00 40 */	stw r3, 0x40(r1)
/* 801ACC08  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801ACC0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801ACC10  FC 00 00 50 */	fneg f0, f0
/* 801ACC14  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801ACC18  FC 00 00 1E */	fctiwz f0, f0
/* 801ACC1C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 801ACC20  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801ACC24  7C 00 07 34 */	extsh r0, r0
/* 801ACC28  7C 04 02 14 */	add r0, r4, r0
/* 801ACC2C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801ACC30  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801ACC34  38 00 00 FF */	li r0, 0xff
/* 801ACC38  98 01 00 0B */	stb r0, 0xb(r1)
/* 801ACC3C  C0 42 A4 0C */	lfs f2, lit_10486(r2)
/* 801ACC40  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801ACC44  90 01 00 34 */	stw r0, 0x34(r1)
/* 801ACC48  90 61 00 30 */	stw r3, 0x30(r1)
/* 801ACC4C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801ACC50  EC 00 08 28 */	fsubs f0, f0, f1
/* 801ACC54  EC 02 00 28 */	fsubs f0, f2, f0
/* 801ACC58  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801ACC5C  FC 00 00 1E */	fctiwz f0, f0
/* 801ACC60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801ACC64  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801ACC68  7C 03 07 34 */	extsh r3, r0
/* 801ACC6C  38 03 00 FF */	addi r0, r3, 0xff
/* 801ACC70  98 01 00 0B */	stb r0, 0xb(r1)
lbl_801ACC74:
/* 801ACC74  38 00 00 00 */	li r0, 0
/* 801ACC78  98 01 00 08 */	stb r0, 8(r1)
/* 801ACC7C  98 01 00 09 */	stb r0, 9(r1)
/* 801ACC80  98 01 00 0A */	stb r0, 0xa(r1)
/* 801ACC84  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801ACC88  38 80 00 01 */	li r4, 1
/* 801ACC8C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801ACC90  81 83 00 00 */	lwz r12, 0(r3)
/* 801ACC94  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801ACC98  7D 89 03 A6 */	mtctr r12
/* 801ACC9C  4E 80 04 21 */	bctrl 
/* 801ACCA0  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801ACCA4  38 80 00 03 */	li r4, 3
/* 801ACCA8  38 A1 00 08 */	addi r5, r1, 8
/* 801ACCAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801ACCB0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801ACCB4  7D 89 03 A6 */	mtctr r12
/* 801ACCB8  4E 80 04 21 */	bctrl 
/* 801ACCBC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 801ACCC0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801ACCC4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801ACCC8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801ACCCC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801ACCD0  7C 08 03 A6 */	mtlr r0
/* 801ACCD4  38 21 00 60 */	addi r1, r1, 0x60
/* 801ACCD8  4E 80 00 20 */	blr 
