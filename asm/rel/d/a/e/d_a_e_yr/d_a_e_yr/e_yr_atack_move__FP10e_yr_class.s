lbl_80823D3C:
/* 80823D3C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80823D40  7C 08 02 A6 */	mflr r0
/* 80823D44  90 01 00 84 */	stw r0, 0x84(r1)
/* 80823D48  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80823D4C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80823D50  39 61 00 70 */	addi r11, r1, 0x70
/* 80823D54  4B B3 E4 7C */	b _savegpr_26
/* 80823D58  7C 7A 1B 78 */	mr r26, r3
/* 80823D5C  3C 80 80 83 */	lis r4, lit_3902@ha
/* 80823D60  3B E4 88 50 */	addi r31, r4, lit_3902@l
/* 80823D64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80823D68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80823D6C  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80823D70  7F C4 F3 78 */	mr r4, r30
/* 80823D74  4B 7F 6A 6C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80823D78  FF E0 08 90 */	fmr f31, f1
/* 80823D7C  3B A0 00 00 */	li r29, 0
/* 80823D80  3B 80 00 00 */	li r28, 0
/* 80823D84  38 00 00 01 */	li r0, 1
/* 80823D88  98 1A 0E 94 */	stb r0, 0xe94(r26)
/* 80823D8C  88 1A 0E C8 */	lbz r0, 0xec8(r26)
/* 80823D90  7C 00 07 75 */	extsb. r0, r0
/* 80823D94  41 82 00 7C */	beq lbl_80823E10
/* 80823D98  38 00 00 00 */	li r0, 0
/* 80823D9C  98 1A 0E C8 */	stb r0, 0xec8(r26)
/* 80823DA0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80823DA4  4B A4 3B B0 */	b cM_rndF__Ff
/* 80823DA8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80823DAC  EC 20 08 2A */	fadds f1, f0, f1
/* 80823DB0  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80823DB4  38 C3 8D BC */	addi r6, r3, l_e_yrHIO@l
/* 80823DB8  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 80823DBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80823DC0  FC 00 00 1E */	fctiwz f0, f0
/* 80823DC4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80823DC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80823DCC  B0 1A 06 AE */	sth r0, 0x6ae(r26)
/* 80823DD0  7F 43 D3 78 */	mr r3, r26
/* 80823DD4  38 80 00 0F */	li r4, 0xf
/* 80823DD8  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80823DDC  38 A0 00 02 */	li r5, 2
/* 80823DE0  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 80823DE4  4B FF E9 AD */	bl anm_init__FP10e_yr_classifUcf
/* 80823DE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80823DEC  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 80823DF0  D0 1A 06 94 */	stfs f0, 0x694(r26)
/* 80823DF4  38 00 00 04 */	li r0, 4
/* 80823DF8  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80823DFC  7F 43 D3 78 */	mr r3, r26
/* 80823E00  38 80 00 19 */	li r4, 0x19
/* 80823E04  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 80823E08  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 80823E0C  4B FF EA 3D */	bl kuti_open__FP10e_yr_classsUl
lbl_80823E10:
/* 80823E10  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80823E14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80823E18  FC 00 00 1E */	fctiwz f0, f0
/* 80823E1C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80823E20  83 61 00 44 */	lwz r27, 0x44(r1)
/* 80823E24  88 1A 06 7D */	lbz r0, 0x67d(r26)
/* 80823E28  7C 00 07 74 */	extsb r0, r0
/* 80823E2C  28 00 00 23 */	cmplwi r0, 0x23
/* 80823E30  41 81 0B D0 */	bgt lbl_80824A00
/* 80823E34  3C 60 80 83 */	lis r3, lit_4948@ha
/* 80823E38  38 63 8A 58 */	addi r3, r3, lit_4948@l
/* 80823E3C  54 00 10 3A */	slwi r0, r0, 2
/* 80823E40  7C 03 00 2E */	lwzx r0, r3, r0
/* 80823E44  7C 09 03 A6 */	mtctr r0
/* 80823E48  4E 80 04 20 */	bctr 
lbl_80823E4C:
/* 80823E4C  38 00 00 01 */	li r0, 1
/* 80823E50  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80823E54  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80823E58  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 80823E5C  D0 1A 06 94 */	stfs f0, 0x694(r26)
/* 80823E60  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80823E64  D0 1A 06 8C */	stfs f0, 0x68c(r26)
/* 80823E68  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80823E6C  D0 5A 06 90 */	stfs f2, 0x690(r26)
/* 80823E70  7F 43 D3 78 */	mr r3, r26
/* 80823E74  38 80 00 0C */	li r4, 0xc
/* 80823E78  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80823E7C  38 A0 00 02 */	li r5, 2
/* 80823E80  4B FF E9 11 */	bl anm_init__FP10e_yr_classifUcf
lbl_80823E84:
/* 80823E84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80823E88  D0 1A 06 80 */	stfs f0, 0x680(r26)
/* 80823E8C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80823E90  D0 1A 06 84 */	stfs f0, 0x684(r26)
/* 80823E94  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80823E98  D0 1A 06 88 */	stfs f0, 0x688(r26)
/* 80823E9C  C0 3A 06 84 */	lfs f1, 0x684(r26)
/* 80823EA0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80823EA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80823EA8  D0 1A 06 84 */	stfs f0, 0x684(r26)
/* 80823EAC  7F 43 D3 78 */	mr r3, r26
/* 80823EB0  4B FF F0 5D */	bl e_yr_pos_move__FP10e_yr_class
/* 80823EB4  38 61 00 24 */	addi r3, r1, 0x24
/* 80823EB8  38 9A 06 80 */	addi r4, r26, 0x680
/* 80823EBC  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80823EC0  4B A4 2C 74 */	b __mi__4cXyzCFRC3Vec
/* 80823EC4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80823EC8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80823ECC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80823ED0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80823ED4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80823ED8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80823EDC  38 61 00 30 */	addi r3, r1, 0x30
/* 80823EE0  4B B2 32 58 */	b PSVECSquareMag
/* 80823EE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80823EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80823EEC  40 81 00 58 */	ble lbl_80823F44
/* 80823EF0  FC 00 08 34 */	frsqrte f0, f1
/* 80823EF4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80823EF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80823EFC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80823F00  FC 00 00 32 */	fmul f0, f0, f0
/* 80823F04  FC 01 00 32 */	fmul f0, f1, f0
/* 80823F08  FC 03 00 28 */	fsub f0, f3, f0
/* 80823F0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80823F10  FC 44 00 32 */	fmul f2, f4, f0
/* 80823F14  FC 00 00 32 */	fmul f0, f0, f0
/* 80823F18  FC 01 00 32 */	fmul f0, f1, f0
/* 80823F1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80823F20  FC 02 00 32 */	fmul f0, f2, f0
/* 80823F24  FC 44 00 32 */	fmul f2, f4, f0
/* 80823F28  FC 00 00 32 */	fmul f0, f0, f0
/* 80823F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80823F30  FC 03 00 28 */	fsub f0, f3, f0
/* 80823F34  FC 02 00 32 */	fmul f0, f2, f0
/* 80823F38  FC 21 00 32 */	fmul f1, f1, f0
/* 80823F3C  FC 20 08 18 */	frsp f1, f1
/* 80823F40  48 00 00 88 */	b lbl_80823FC8
lbl_80823F44:
/* 80823F44  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80823F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80823F4C  40 80 00 10 */	bge lbl_80823F5C
/* 80823F50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80823F54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80823F58  48 00 00 70 */	b lbl_80823FC8
lbl_80823F5C:
/* 80823F5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80823F60  80 81 00 08 */	lwz r4, 8(r1)
/* 80823F64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80823F68  3C 00 7F 80 */	lis r0, 0x7f80
/* 80823F6C  7C 03 00 00 */	cmpw r3, r0
/* 80823F70  41 82 00 14 */	beq lbl_80823F84
/* 80823F74  40 80 00 40 */	bge lbl_80823FB4
/* 80823F78  2C 03 00 00 */	cmpwi r3, 0
/* 80823F7C  41 82 00 20 */	beq lbl_80823F9C
/* 80823F80  48 00 00 34 */	b lbl_80823FB4
lbl_80823F84:
/* 80823F84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80823F88  41 82 00 0C */	beq lbl_80823F94
/* 80823F8C  38 00 00 01 */	li r0, 1
/* 80823F90  48 00 00 28 */	b lbl_80823FB8
lbl_80823F94:
/* 80823F94  38 00 00 02 */	li r0, 2
/* 80823F98  48 00 00 20 */	b lbl_80823FB8
lbl_80823F9C:
/* 80823F9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80823FA0  41 82 00 0C */	beq lbl_80823FAC
/* 80823FA4  38 00 00 05 */	li r0, 5
/* 80823FA8  48 00 00 10 */	b lbl_80823FB8
lbl_80823FAC:
/* 80823FAC  38 00 00 03 */	li r0, 3
/* 80823FB0  48 00 00 08 */	b lbl_80823FB8
lbl_80823FB4:
/* 80823FB4  38 00 00 04 */	li r0, 4
lbl_80823FB8:
/* 80823FB8  2C 00 00 01 */	cmpwi r0, 1
/* 80823FBC  40 82 00 0C */	bne lbl_80823FC8
/* 80823FC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80823FC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80823FC8:
/* 80823FC8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80823FCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80823FD0  40 80 00 10 */	bge lbl_80823FE0
/* 80823FD4  38 00 00 03 */	li r0, 3
/* 80823FD8  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80823FDC  48 00 0A 24 */	b lbl_80824A00
lbl_80823FE0:
/* 80823FE0  88 1A 06 7D */	lbz r0, 0x67d(r26)
/* 80823FE4  2C 00 00 01 */	cmpwi r0, 1
/* 80823FE8  40 82 00 74 */	bne lbl_8082405C
/* 80823FEC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80823FF0  D0 1A 06 9C */	stfs f0, 0x69c(r26)
/* 80823FF4  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80823FF8  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80823FFC  A8 03 00 50 */	lha r0, 0x50(r3)
/* 80824000  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 80824004  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80824008  90 01 00 44 */	stw r0, 0x44(r1)
/* 8082400C  3C 00 43 30 */	lis r0, 0x4330
/* 80824010  90 01 00 40 */	stw r0, 0x40(r1)
/* 80824014  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80824018  EC 00 10 28 */	fsubs f0, f0, f2
/* 8082401C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824020  40 80 09 E0 */	bge lbl_80824A00
/* 80824024  38 00 00 02 */	li r0, 2
/* 80824028  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 8082402C  7F 43 D3 78 */	mr r3, r26
/* 80824030  38 80 00 0B */	li r4, 0xb
/* 80824034  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80824038  38 A0 00 00 */	li r5, 0
/* 8082403C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80824040  4B FF E7 51 */	bl anm_init__FP10e_yr_classifUcf
/* 80824044  7F 43 D3 78 */	mr r3, r26
/* 80824048  38 80 00 19 */	li r4, 0x19
/* 8082404C  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 80824050  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 80824054  4B FF E7 F5 */	bl kuti_open__FP10e_yr_classsUl
/* 80824058  48 00 09 A8 */	b lbl_80824A00
lbl_8082405C:
/* 8082405C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80824060  D0 1A 0E B0 */	stfs f0, 0xeb0(r26)
/* 80824064  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80824068  D0 1A 06 9C */	stfs f0, 0x69c(r26)
/* 8082406C  48 00 09 94 */	b lbl_80824A00
lbl_80824070:
/* 80824070  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824074  D0 1A 06 8C */	stfs f0, 0x68c(r26)
/* 80824078  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8082407C  D0 1A 06 90 */	stfs f0, 0x690(r26)
/* 80824080  7F 43 D3 78 */	mr r3, r26
/* 80824084  4B FF EE 89 */	bl e_yr_pos_move__FP10e_yr_class
/* 80824088  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 8082408C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80824090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824094  4C 40 13 82 */	cror 2, 0, 2
/* 80824098  41 82 00 10 */	beq lbl_808240A8
/* 8082409C  80 1A 07 78 */	lwz r0, 0x778(r26)
/* 808240A0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 808240A4  41 82 01 1C */	beq lbl_808241C0
lbl_808240A8:
/* 808240A8  38 00 00 04 */	li r0, 4
/* 808240AC  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 808240B0  38 00 00 00 */	li r0, 0
/* 808240B4  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 808240B8  88 1A 06 64 */	lbz r0, 0x664(r26)
/* 808240BC  28 00 00 04 */	cmplwi r0, 4
/* 808240C0  41 82 00 0C */	beq lbl_808240CC
/* 808240C4  28 00 00 07 */	cmplwi r0, 7
/* 808240C8  40 82 00 70 */	bne lbl_80824138
lbl_808240CC:
/* 808240CC  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 808240D0  3B 63 8D BC */	addi r27, r3, l_e_yrHIO@l
/* 808240D4  A8 7B 00 1C */	lha r3, 0x1c(r27)
/* 808240D8  A8 1B 00 1E */	lha r0, 0x1e(r27)
/* 808240DC  7C 03 00 50 */	subf r0, r3, r0
/* 808240E0  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 808240E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808240E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 808240EC  3C 00 43 30 */	lis r0, 0x4330
/* 808240F0  90 01 00 40 */	stw r0, 0x40(r1)
/* 808240F4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 808240F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 808240FC  4B A4 38 58 */	b cM_rndF__Ff
/* 80824100  A8 1B 00 1C */	lha r0, 0x1c(r27)
/* 80824104  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 80824108  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8082410C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80824110  3C 00 43 30 */	lis r0, 0x4330
/* 80824114  90 01 00 48 */	stw r0, 0x48(r1)
/* 80824118  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8082411C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80824120  EC 00 08 2A */	fadds f0, f0, f1
/* 80824124  FC 00 00 1E */	fctiwz f0, f0
/* 80824128  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8082412C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80824130  B0 1A 06 A6 */	sth r0, 0x6a6(r26)
/* 80824134  48 00 00 6C */	b lbl_808241A0
lbl_80824138:
/* 80824138  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 8082413C  3B 63 8D BC */	addi r27, r3, l_e_yrHIO@l
/* 80824140  A8 7B 00 18 */	lha r3, 0x18(r27)
/* 80824144  A8 1B 00 1A */	lha r0, 0x1a(r27)
/* 80824148  7C 03 00 50 */	subf r0, r3, r0
/* 8082414C  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80824150  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80824154  90 01 00 54 */	stw r0, 0x54(r1)
/* 80824158  3C 00 43 30 */	lis r0, 0x4330
/* 8082415C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80824160  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80824164  EC 20 08 28 */	fsubs f1, f0, f1
/* 80824168  4B A4 37 EC */	b cM_rndF__Ff
/* 8082416C  A8 1B 00 18 */	lha r0, 0x18(r27)
/* 80824170  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 80824174  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80824178  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8082417C  3C 00 43 30 */	lis r0, 0x4330
/* 80824180  90 01 00 48 */	stw r0, 0x48(r1)
/* 80824184  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80824188  EC 00 10 28 */	fsubs f0, f0, f2
/* 8082418C  EC 00 08 2A */	fadds f0, f0, f1
/* 80824190  FC 00 00 1E */	fctiwz f0, f0
/* 80824194  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80824198  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8082419C  B0 1A 06 A6 */	sth r0, 0x6a6(r26)
lbl_808241A0:
/* 808241A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808241A4  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 808241A8  D0 1A 06 94 */	stfs f0, 0x694(r26)
/* 808241AC  7F 43 D3 78 */	mr r3, r26
/* 808241B0  38 80 00 19 */	li r4, 0x19
/* 808241B4  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 808241B8  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 808241BC  4B FF E6 8D */	bl kuti_open__FP10e_yr_classsUl
lbl_808241C0:
/* 808241C0  88 1A 06 7D */	lbz r0, 0x67d(r26)
/* 808241C4  2C 00 00 03 */	cmpwi r0, 3
/* 808241C8  40 82 08 38 */	bne lbl_80824A00
/* 808241CC  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 808241D0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 808241D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808241D8  4C 40 13 82 */	cror 2, 0, 2
/* 808241DC  40 82 08 24 */	bne lbl_80824A00
/* 808241E0  38 00 00 23 */	li r0, 0x23
/* 808241E4  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 808241E8  7F 43 D3 78 */	mr r3, r26
/* 808241EC  38 80 00 0F */	li r4, 0xf
/* 808241F0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 808241F4  38 A0 00 02 */	li r5, 2
/* 808241F8  3C C0 80 83 */	lis r6, l_e_yrHIO@ha
/* 808241FC  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l
/* 80824200  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 80824204  4B FF E5 8D */	bl anm_init__FP10e_yr_classifUcf
/* 80824208  48 00 07 F8 */	b lbl_80824A00
lbl_8082420C:
/* 8082420C  A8 7A 06 E0 */	lha r3, 0x6e0(r26)
/* 80824210  38 03 00 01 */	addi r0, r3, 1
/* 80824214  B0 1A 06 E0 */	sth r0, 0x6e0(r26)
/* 80824218  A8 9A 06 E0 */	lha r4, 0x6e0(r26)
/* 8082421C  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 80824220  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80824224  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80824228  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8082422C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80824230  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80824234  EC 22 00 32 */	fmuls f1, f2, f0
/* 80824238  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8082423C  1C 04 04 B0 */	mulli r0, r4, 0x4b0
/* 80824240  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80824244  7C 63 04 2E */	lfsx f3, r3, r0
/* 80824248  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8082424C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80824250  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80824254  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 80824258  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8082425C  7C 63 02 14 */	add r3, r3, r0
/* 80824260  C0 03 00 04 */	lfs f0, 4(r3)
/* 80824264  EC 02 00 32 */	fmuls f0, f2, f0
/* 80824268  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082426C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80824270  C0 1A 06 80 */	lfs f0, 0x680(r26)
/* 80824274  EC 20 08 2A */	fadds f1, f0, f1
/* 80824278  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8082427C  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80824280  C0 1A 06 94 */	lfs f0, 0x694(r26)
/* 80824284  EC 63 00 32 */	fmuls f3, f3, f0
/* 80824288  4B A4 B7 B4 */	b cLib_addCalc2__FPffff
/* 8082428C  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 80824290  C0 3A 06 84 */	lfs f1, 0x684(r26)
/* 80824294  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80824298  EC 21 00 2A */	fadds f1, f1, f0
/* 8082429C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 808242A0  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 808242A4  C0 1A 06 94 */	lfs f0, 0x694(r26)
/* 808242A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 808242AC  4B A4 B7 90 */	b cLib_addCalc2__FPffff
/* 808242B0  38 7A 04 D8 */	addi r3, r26, 0x4d8
/* 808242B4  C0 3A 06 88 */	lfs f1, 0x688(r26)
/* 808242B8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 808242BC  EC 21 00 2A */	fadds f1, f1, f0
/* 808242C0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 808242C4  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 808242C8  C0 1A 06 94 */	lfs f0, 0x694(r26)
/* 808242CC  EC 63 00 32 */	fmuls f3, f3, f0
/* 808242D0  4B A4 B7 6C */	b cLib_addCalc2__FPffff
/* 808242D4  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 808242D8  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 808242DC  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 808242E0  38 7A 06 94 */	addi r3, r26, 0x694
/* 808242E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808242E8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 808242EC  EC 60 00 72 */	fmuls f3, f0, f1
/* 808242F0  4B A4 B7 4C */	b cLib_addCalc2__FPffff
/* 808242F4  38 7A 04 DE */	addi r3, r26, 0x4de
/* 808242F8  A8 9A 06 C8 */	lha r4, 0x6c8(r26)
/* 808242FC  38 A0 00 05 */	li r5, 5
/* 80824300  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80824304  C0 1A 06 98 */	lfs f0, 0x698(r26)
/* 80824308  EC 01 00 32 */	fmuls f0, f1, f0
/* 8082430C  FC 00 00 1E */	fctiwz f0, f0
/* 80824310  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80824314  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 80824318  4B A4 C2 F0 */	b cLib_addCalcAngleS2__FPssss
/* 8082431C  38 7A 04 DC */	addi r3, r26, 0x4dc
/* 80824320  A8 9A 06 CA */	lha r4, 0x6ca(r26)
/* 80824324  38 A0 00 05 */	li r5, 5
/* 80824328  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8082432C  C0 1A 06 98 */	lfs f0, 0x698(r26)
/* 80824330  EC 01 00 32 */	fmuls f0, f1, f0
/* 80824334  FC 00 00 1E */	fctiwz f0, f0
/* 80824338  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8082433C  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 80824340  4B A4 C2 C8 */	b cLib_addCalcAngleS2__FPssss
/* 80824344  38 7A 04 E0 */	addi r3, r26, 0x4e0
/* 80824348  38 80 00 00 */	li r4, 0
/* 8082434C  38 A0 00 05 */	li r5, 5
/* 80824350  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80824354  C0 1A 06 98 */	lfs f0, 0x698(r26)
/* 80824358  EC 01 00 32 */	fmuls f0, f1, f0
/* 8082435C  FC 00 00 1E */	fctiwz f0, f0
/* 80824360  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80824364  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 80824368  4B A4 C2 A0 */	b cLib_addCalcAngleS2__FPssss
/* 8082436C  38 7A 06 98 */	addi r3, r26, 0x698
/* 80824370  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80824374  FC 40 08 90 */	fmr f2, f1
/* 80824378  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 8082437C  4B A4 B6 C0 */	b cLib_addCalc2__FPffff
/* 80824380  A8 1A 06 A6 */	lha r0, 0x6a6(r26)
/* 80824384  2C 00 00 00 */	cmpwi r0, 0
/* 80824388  40 82 00 0C */	bne lbl_80824394
/* 8082438C  3B A0 00 01 */	li r29, 1
/* 80824390  48 00 01 B0 */	b lbl_80824540
lbl_80824394:
/* 80824394  A8 1A 06 A4 */	lha r0, 0x6a4(r26)
/* 80824398  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8082439C  40 82 00 2C */	bne lbl_808243C8
/* 808243A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808243A4  4B A4 35 B0 */	b cM_rndF__Ff
/* 808243A8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 808243AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808243B0  40 80 00 18 */	bge lbl_808243C8
/* 808243B4  7F 43 D3 78 */	mr r3, r26
/* 808243B8  38 80 00 19 */	li r4, 0x19
/* 808243BC  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 808243C0  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 808243C4  4B FF E4 85 */	bl kuti_open__FP10e_yr_classsUl
lbl_808243C8:
/* 808243C8  A8 1A 06 A4 */	lha r0, 0x6a4(r26)
/* 808243CC  2C 00 00 00 */	cmpwi r0, 0
/* 808243D0  40 82 00 AC */	bne lbl_8082447C
/* 808243D4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 808243D8  4B A4 35 B4 */	b cM_rndFX__Ff
/* 808243DC  FC 00 08 1E */	fctiwz f0, f1
/* 808243E0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 808243E4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 808243E8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 808243EC  7C 00 1A 14 */	add r0, r0, r3
/* 808243F0  7C 04 07 34 */	extsh r4, r0
/* 808243F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 808243F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 808243FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80824400  4B 7E 7F DC */	b mDoMtx_YrotS__FPA4_fs
/* 80824404  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824408  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082440C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80824410  4B A4 35 44 */	b cM_rndF__Ff
/* 80824414  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80824418  EC 00 08 2A */	fadds f0, f0, f1
/* 8082441C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80824420  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80824424  4B A4 35 30 */	b cM_rndF__Ff
/* 80824428  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8082442C  EC 00 08 2A */	fadds f0, f0, f1
/* 80824430  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80824434  38 61 00 30 */	addi r3, r1, 0x30
/* 80824438  38 9A 06 80 */	addi r4, r26, 0x680
/* 8082443C  4B A4 CA B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80824440  38 7A 06 80 */	addi r3, r26, 0x680
/* 80824444  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80824448  7C 65 1B 78 */	mr r5, r3
/* 8082444C  4B B2 2C 44 */	b PSVECAdd
/* 80824450  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80824454  4B A4 35 00 */	b cM_rndF__Ff
/* 80824458  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8082445C  EC 00 08 2A */	fadds f0, f0, f1
/* 80824460  FC 00 00 1E */	fctiwz f0, f0
/* 80824464  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80824468  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8082446C  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 80824470  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824474  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 80824478  D0 1A 06 94 */	stfs f0, 0x694(r26)
lbl_8082447C:
/* 8082447C  A8 1A 06 AE */	lha r0, 0x6ae(r26)
/* 80824480  2C 00 00 00 */	cmpwi r0, 0
/* 80824484  40 82 00 BC */	bne lbl_80824540
/* 80824488  C0 3A 06 CC */	lfs f1, 0x6cc(r26)
/* 8082448C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80824490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824494  40 81 00 AC */	ble lbl_80824540
/* 80824498  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8082449C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808244A0  40 80 00 A0 */	bge lbl_80824540
/* 808244A4  2C 1B 00 0E */	cmpwi r27, 0xe
/* 808244A8  41 80 00 98 */	blt lbl_80824540
/* 808244AC  38 00 00 07 */	li r0, 7
/* 808244B0  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 808244B4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 808244B8  4B A4 34 9C */	b cM_rndF__Ff
/* 808244BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 808244C0  EC 20 08 2A */	fadds f1, f0, f1
/* 808244C4  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 808244C8  38 C3 8D BC */	addi r6, r3, l_e_yrHIO@l
/* 808244CC  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 808244D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 808244D4  FC 00 00 1E */	fctiwz f0, f0
/* 808244D8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 808244DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 808244E0  B0 1A 06 AE */	sth r0, 0x6ae(r26)
/* 808244E4  7F 43 D3 78 */	mr r3, r26
/* 808244E8  38 80 00 04 */	li r4, 4
/* 808244EC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 808244F0  38 A0 00 00 */	li r5, 0
/* 808244F4  C0 46 00 30 */	lfs f2, 0x30(r6)
/* 808244F8  4B FF E2 99 */	bl anm_init__FP10e_yr_classifUcf
/* 808244FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B7@ha */
/* 80824500  38 03 01 B7 */	addi r0, r3, 0x01B7 /* 0x000701B7@l */
/* 80824504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80824508  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 8082450C  38 81 00 14 */	addi r4, r1, 0x14
/* 80824510  38 A0 FF FF */	li r5, -1
/* 80824514  81 9A 05 C0 */	lwz r12, 0x5c0(r26)
/* 80824518  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8082451C  7D 89 03 A6 */	mtctr r12
/* 80824520  4E 80 04 21 */	bctrl 
/* 80824524  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80824528  D0 3A 06 98 */	stfs f1, 0x698(r26)
/* 8082452C  D0 3A 06 94 */	stfs f1, 0x694(r26)
/* 80824530  D0 3A 06 8C */	stfs f1, 0x68c(r26)
/* 80824534  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80824538  D0 1A 06 90 */	stfs f0, 0x690(r26)
/* 8082453C  D0 3A 05 2C */	stfs f1, 0x52c(r26)
lbl_80824540:
/* 80824540  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80824544  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80824548  40 81 04 B8 */	ble lbl_80824A00
/* 8082454C  38 00 00 05 */	li r0, 5
/* 80824550  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80824554  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80824558  4B A4 33 FC */	b cM_rndF__Ff
/* 8082455C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80824560  EC 00 08 2A */	fadds f0, f0, f1
/* 80824564  FC 00 00 1E */	fctiwz f0, f0
/* 80824568  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8082456C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80824570  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 80824574  48 00 04 8C */	b lbl_80824A00
lbl_80824578:
/* 80824578  A8 1A 06 DE */	lha r0, 0x6de(r26)
/* 8082457C  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80824580  40 82 00 2C */	bne lbl_808245AC
/* 80824584  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80824588  4B A4 33 CC */	b cM_rndF__Ff
/* 8082458C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80824590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824594  40 80 00 18 */	bge lbl_808245AC
/* 80824598  7F 43 D3 78 */	mr r3, r26
/* 8082459C  38 80 00 19 */	li r4, 0x19
/* 808245A0  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 808245A4  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 808245A8  4B FF E2 A1 */	bl kuti_open__FP10e_yr_classsUl
lbl_808245AC:
/* 808245AC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 808245B0  D0 1A 06 8C */	stfs f0, 0x68c(r26)
/* 808245B4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 808245B8  D0 1A 06 90 */	stfs f0, 0x690(r26)
/* 808245BC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 808245C0  D0 1A 06 9C */	stfs f0, 0x69c(r26)
/* 808245C4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808245C8  D0 1A 06 80 */	stfs f0, 0x680(r26)
/* 808245CC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 808245D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 808245D4  EC 01 00 2A */	fadds f0, f1, f0
/* 808245D8  D0 1A 06 84 */	stfs f0, 0x684(r26)
/* 808245DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808245E0  D0 1A 06 88 */	stfs f0, 0x688(r26)
/* 808245E4  7F 43 D3 78 */	mr r3, r26
/* 808245E8  4B FF E9 25 */	bl e_yr_pos_move__FP10e_yr_class
/* 808245EC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 808245F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 808245F4  40 80 00 18 */	bge lbl_8082460C
/* 808245F8  38 00 00 04 */	li r0, 4
/* 808245FC  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80824600  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824604  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 80824608  D0 1A 06 94 */	stfs f0, 0x694(r26)
lbl_8082460C:
/* 8082460C  A8 1A 06 A4 */	lha r0, 0x6a4(r26)
/* 80824610  2C 00 00 00 */	cmpwi r0, 0
/* 80824614  40 82 00 18 */	bne lbl_8082462C
/* 80824618  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8082461C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80824620  40 81 00 0C */	ble lbl_8082462C
/* 80824624  38 00 00 00 */	li r0, 0
/* 80824628  98 1A 06 7D */	stb r0, 0x67d(r26)
lbl_8082462C:
/* 8082462C  A8 1A 06 A6 */	lha r0, 0x6a6(r26)
/* 80824630  2C 00 00 00 */	cmpwi r0, 0
/* 80824634  40 82 03 CC */	bne lbl_80824A00
/* 80824638  3B A0 00 01 */	li r29, 1
/* 8082463C  48 00 03 C4 */	b lbl_80824A00
lbl_80824640:
/* 80824640  38 00 00 00 */	li r0, 0
/* 80824644  98 1A 0E 94 */	stb r0, 0xe94(r26)
/* 80824648  2C 1B 00 03 */	cmpwi r27, 3
/* 8082464C  40 82 00 14 */	bne lbl_80824660
/* 80824650  7F 43 D3 78 */	mr r3, r26
/* 80824654  38 80 00 19 */	li r4, 0x19
/* 80824658  38 A0 00 00 */	li r5, 0
/* 8082465C  4B FF E1 ED */	bl kuti_open__FP10e_yr_classsUl
lbl_80824660:
/* 80824660  2C 1B 00 0F */	cmpwi r27, 0xf
/* 80824664  40 82 00 14 */	bne lbl_80824678
/* 80824668  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8082466C  D0 1A 06 8C */	stfs f0, 0x68c(r26)
/* 80824670  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80824674  D0 1A 06 90 */	stfs f0, 0x690(r26)
lbl_80824678:
/* 80824678  2C 1B 00 19 */	cmpwi r27, 0x19
/* 8082467C  40 82 00 14 */	bne lbl_80824690
/* 80824680  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80824684  D0 1A 06 8C */	stfs f0, 0x68c(r26)
/* 80824688  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8082468C  D0 1A 06 90 */	stfs f0, 0x690(r26)
lbl_80824690:
/* 80824690  2C 1B 00 17 */	cmpwi r27, 0x17
/* 80824694  41 81 00 30 */	bgt lbl_808246C4
/* 80824698  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8082469C  D0 1A 06 9C */	stfs f0, 0x69c(r26)
/* 808246A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808246A4  D0 1A 06 80 */	stfs f0, 0x680(r26)
/* 808246A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 808246AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 808246B0  EC 01 00 2A */	fadds f0, f1, f0
/* 808246B4  D0 1A 06 84 */	stfs f0, 0x684(r26)
/* 808246B8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808246BC  D0 1A 06 88 */	stfs f0, 0x688(r26)
/* 808246C0  48 00 00 0C */	b lbl_808246CC
lbl_808246C4:
/* 808246C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808246C8  D0 1A 06 9C */	stfs f0, 0x69c(r26)
lbl_808246CC:
/* 808246CC  7F 43 D3 78 */	mr r3, r26
/* 808246D0  4B FF E8 3D */	bl e_yr_pos_move__FP10e_yr_class
/* 808246D4  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 808246D8  38 80 00 01 */	li r4, 1
/* 808246DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 808246E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808246E4  40 82 00 18 */	bne lbl_808246FC
/* 808246E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 808246EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 808246F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 808246F4  41 82 00 08 */	beq lbl_808246FC
/* 808246F8  38 80 00 00 */	li r4, 0
lbl_808246FC:
/* 808246FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80824700  41 82 01 08 */	beq lbl_80824808
/* 80824704  38 00 00 04 */	li r0, 4
/* 80824708  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 8082470C  7F 43 D3 78 */	mr r3, r26
/* 80824710  38 80 00 0F */	li r4, 0xf
/* 80824714  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80824718  38 A0 00 02 */	li r5, 2
/* 8082471C  3C C0 80 83 */	lis r6, l_e_yrHIO@ha
/* 80824720  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l
/* 80824724  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 80824728  4B FF E0 69 */	bl anm_init__FP10e_yr_classifUcf
/* 8082472C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80824730  4B A4 32 24 */	b cM_rndF__Ff
/* 80824734  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80824738  EC 20 08 2A */	fadds f1, f0, f1
/* 8082473C  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80824740  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80824744  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80824748  EC 00 00 72 */	fmuls f0, f0, f1
/* 8082474C  FC 00 00 1E */	fctiwz f0, f0
/* 80824750  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80824754  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80824758  B0 1A 06 AE */	sth r0, 0x6ae(r26)
/* 8082475C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80824760  4B A4 32 2C */	b cM_rndFX__Ff
/* 80824764  FC 00 08 1E */	fctiwz f0, f1
/* 80824768  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8082476C  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80824770  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80824774  7C 00 1A 14 */	add r0, r0, r3
/* 80824778  7C 04 07 34 */	extsh r4, r0
/* 8082477C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80824780  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80824784  80 63 00 00 */	lwz r3, 0(r3)
/* 80824788  4B 7E 7C 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8082478C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824790  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80824794  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80824798  4B A4 31 BC */	b cM_rndF__Ff
/* 8082479C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 808247A0  EC 00 08 2A */	fadds f0, f0, f1
/* 808247A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 808247A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 808247AC  4B A4 31 A8 */	b cM_rndF__Ff
/* 808247B0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 808247B4  EC 00 08 2A */	fadds f0, f0, f1
/* 808247B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 808247BC  38 61 00 30 */	addi r3, r1, 0x30
/* 808247C0  38 9A 06 80 */	addi r4, r26, 0x680
/* 808247C4  4B A4 C7 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 808247C8  38 7A 06 80 */	addi r3, r26, 0x680
/* 808247CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 808247D0  7C 65 1B 78 */	mr r5, r3
/* 808247D4  4B B2 28 BC */	b PSVECAdd
/* 808247D8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 808247DC  4B A4 31 78 */	b cM_rndF__Ff
/* 808247E0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 808247E4  EC 00 08 2A */	fadds f0, f0, f1
/* 808247E8  FC 00 00 1E */	fctiwz f0, f0
/* 808247EC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 808247F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 808247F4  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 808247F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 808247FC  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 80824800  D0 1A 06 94 */	stfs f0, 0x694(r26)
/* 80824804  48 00 01 FC */	b lbl_80824A00
lbl_80824808:
/* 80824808  2C 1B 00 0F */	cmpwi r27, 0xf
/* 8082480C  41 80 01 F4 */	blt lbl_80824A00
/* 80824810  2C 1B 00 1B */	cmpwi r27, 0x1b
/* 80824814  41 81 01 EC */	bgt lbl_80824A00
/* 80824818  3B 80 00 01 */	li r28, 1
/* 8082481C  7F C3 F3 78 */	mr r3, r30
/* 80824820  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80824824  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80824828  7D 89 03 A6 */	mtctr r12
/* 8082482C  4E 80 04 21 */	bctrl 
/* 80824830  2C 03 00 00 */	cmpwi r3, 0
/* 80824834  41 82 01 CC */	beq lbl_80824A00
/* 80824838  38 7A 09 68 */	addi r3, r26, 0x968
/* 8082483C  4B 85 FA 84 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80824840  28 03 00 00 */	cmplwi r3, 0
/* 80824844  41 82 01 BC */	beq lbl_80824A00
/* 80824848  38 00 00 0A */	li r0, 0xa
/* 8082484C  B0 1A 06 B2 */	sth r0, 0x6b2(r26)
/* 80824850  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80824854  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80824858  38 C3 8D BC */	addi r6, r3, l_e_yrHIO@l
/* 8082485C  A8 06 00 34 */	lha r0, 0x34(r6)
/* 80824860  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 80824864  7F 43 D3 78 */	mr r3, r26
/* 80824868  38 80 00 0E */	li r4, 0xe
/* 8082486C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80824870  38 A0 00 00 */	li r5, 0
/* 80824874  C0 46 00 38 */	lfs f2, 0x38(r6)
/* 80824878  4B FF DF 19 */	bl anm_init__FP10e_yr_classifUcf
/* 8082487C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824880  D0 1A 06 8C */	stfs f0, 0x68c(r26)
/* 80824884  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80824888  D0 1A 06 90 */	stfs f0, 0x690(r26)
/* 8082488C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80824890  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80824894  3B 80 00 00 */	li r28, 0
/* 80824898  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B6@ha */
/* 8082489C  38 03 01 B6 */	addi r0, r3, 0x01B6 /* 0x000701B6@l */
/* 808248A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 808248A4  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 808248A8  38 81 00 10 */	addi r4, r1, 0x10
/* 808248AC  38 A0 FF FF */	li r5, -1
/* 808248B0  81 9A 05 C0 */	lwz r12, 0x5c0(r26)
/* 808248B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808248B8  7D 89 03 A6 */	mtctr r12
/* 808248BC  4E 80 04 21 */	bctrl 
/* 808248C0  48 00 01 40 */	b lbl_80824A00
lbl_808248C4:
/* 808248C4  38 00 00 00 */	li r0, 0
/* 808248C8  98 1A 0E 94 */	stb r0, 0xe94(r26)
/* 808248CC  7F 43 D3 78 */	mr r3, r26
/* 808248D0  4B FF E6 3D */	bl e_yr_pos_move__FP10e_yr_class
/* 808248D4  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 808248D8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808248DC  FC 00 00 1E */	fctiwz f0, f0
/* 808248E0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 808248E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 808248E8  2C 00 00 18 */	cmpwi r0, 0x18
/* 808248EC  40 82 00 2C */	bne lbl_80824918
/* 808248F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B9@ha */
/* 808248F4  38 03 01 B9 */	addi r0, r3, 0x01B9 /* 0x000701B9@l */
/* 808248F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 808248FC  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 80824900  38 81 00 0C */	addi r4, r1, 0xc
/* 80824904  38 A0 FF FF */	li r5, -1
/* 80824908  81 9A 05 C0 */	lwz r12, 0x5c0(r26)
/* 8082490C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80824910  7D 89 03 A6 */	mtctr r12
/* 80824914  4E 80 04 21 */	bctrl 
lbl_80824918:
/* 80824918  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 8082491C  38 80 00 01 */	li r4, 1
/* 80824920  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80824924  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80824928  40 82 00 18 */	bne lbl_80824940
/* 8082492C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80824930  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80824934  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80824938  41 82 00 08 */	beq lbl_80824940
/* 8082493C  38 80 00 00 */	li r4, 0
lbl_80824940:
/* 80824940  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80824944  41 82 00 38 */	beq lbl_8082497C
/* 80824948  88 1A 06 7D */	lbz r0, 0x67d(r26)
/* 8082494C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80824950  40 82 00 2C */	bne lbl_8082497C
/* 80824954  38 00 00 0B */	li r0, 0xb
/* 80824958  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 8082495C  7F 43 D3 78 */	mr r3, r26
/* 80824960  38 80 00 05 */	li r4, 5
/* 80824964  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80824968  38 A0 00 02 */	li r5, 2
/* 8082496C  3C C0 80 83 */	lis r6, l_e_yrHIO@ha
/* 80824970  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l
/* 80824974  C0 46 00 3C */	lfs f2, 0x3c(r6)
/* 80824978  4B FF DE 19 */	bl anm_init__FP10e_yr_classifUcf
lbl_8082497C:
/* 8082497C  A8 1A 06 A4 */	lha r0, 0x6a4(r26)
/* 80824980  2C 00 00 00 */	cmpwi r0, 0
/* 80824984  40 82 00 60 */	bne lbl_808249E4
/* 80824988  38 00 00 04 */	li r0, 4
/* 8082498C  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80824990  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80824994  4B A4 2F C0 */	b cM_rndF__Ff
/* 80824998  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8082499C  EC 20 08 2A */	fadds f1, f0, f1
/* 808249A0  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 808249A4  38 C3 8D BC */	addi r6, r3, l_e_yrHIO@l
/* 808249A8  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 808249AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 808249B0  FC 00 00 1E */	fctiwz f0, f0
/* 808249B4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 808249B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 808249BC  B0 1A 06 AE */	sth r0, 0x6ae(r26)
/* 808249C0  7F 43 D3 78 */	mr r3, r26
/* 808249C4  38 80 00 0F */	li r4, 0xf
/* 808249C8  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 808249CC  38 A0 00 02 */	li r5, 2
/* 808249D0  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 808249D4  4B FF DD BD */	bl anm_init__FP10e_yr_classifUcf
/* 808249D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808249DC  D0 1A 06 98 */	stfs f0, 0x698(r26)
/* 808249E0  D0 1A 06 94 */	stfs f0, 0x694(r26)
lbl_808249E4:
/* 808249E4  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 808249E8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 808249EC  C0 1A 07 E4 */	lfs f0, 0x7e4(r26)
/* 808249F0  EC 21 00 2A */	fadds f1, f1, f0
/* 808249F4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 808249F8  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 808249FC  4B A4 B0 40 */	b cLib_addCalc2__FPffff
lbl_80824A00:
/* 80824A00  88 1A 06 64 */	lbz r0, 0x664(r26)
/* 80824A04  28 00 00 03 */	cmplwi r0, 3
/* 80824A08  41 82 01 28 */	beq lbl_80824B30
/* 80824A0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80824A10  38 9A 06 80 */	addi r4, r26, 0x680
/* 80824A14  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80824A18  4B A4 21 1C */	b __mi__4cXyzCFRC3Vec
/* 80824A1C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80824A20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80824A24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80824A28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80824A2C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80824A30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80824A34  38 61 00 30 */	addi r3, r1, 0x30
/* 80824A38  4B B2 27 00 */	b PSVECSquareMag
/* 80824A3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824A44  40 81 00 08 */	ble lbl_80824A4C
/* 80824A48  48 00 00 0C */	b lbl_80824A54
lbl_80824A4C:
/* 80824A4C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80824A50  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80824A54:
/* 80824A54  7F A0 07 75 */	extsb. r0, r29
/* 80824A58  41 82 00 D8 */	beq lbl_80824B30
/* 80824A5C  88 1A 06 64 */	lbz r0, 0x664(r26)
/* 80824A60  98 1A 06 69 */	stb r0, 0x669(r26)
/* 80824A64  88 7A 06 66 */	lbz r3, 0x666(r26)
/* 80824A68  28 03 00 FF */	cmplwi r3, 0xff
/* 80824A6C  41 82 00 14 */	beq lbl_80824A80
/* 80824A70  38 03 00 01 */	addi r0, r3, 1
/* 80824A74  98 1A 06 E9 */	stb r0, 0x6e9(r26)
/* 80824A78  7F 43 D3 78 */	mr r3, r26
/* 80824A7C  4B FF E0 81 */	bl path_check__FP10e_yr_class
lbl_80824A80:
/* 80824A80  88 1A 06 69 */	lbz r0, 0x669(r26)
/* 80824A84  28 00 00 04 */	cmplwi r0, 4
/* 80824A88  41 82 00 0C */	beq lbl_80824A94
/* 80824A8C  28 00 00 07 */	cmplwi r0, 7
/* 80824A90  40 82 00 30 */	bne lbl_80824AC0
lbl_80824A94:
/* 80824A94  38 00 00 0A */	li r0, 0xa
/* 80824A98  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80824A9C  7F 43 D3 78 */	mr r3, r26
/* 80824AA0  38 80 00 08 */	li r4, 8
/* 80824AA4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80824AA8  38 A0 00 02 */	li r5, 2
/* 80824AAC  3C C0 80 83 */	lis r6, l_e_yrHIO@ha
/* 80824AB0  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l
/* 80824AB4  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80824AB8  4B FF DC D9 */	bl anm_init__FP10e_yr_classifUcf
/* 80824ABC  48 00 00 6C */	b lbl_80824B28
lbl_80824AC0:
/* 80824AC0  38 00 00 00 */	li r0, 0
/* 80824AC4  98 1A 06 7D */	stb r0, 0x67d(r26)
/* 80824AC8  B0 1A 06 A4 */	sth r0, 0x6a4(r26)
/* 80824ACC  B0 1A 06 A6 */	sth r0, 0x6a6(r26)
/* 80824AD0  38 00 00 01 */	li r0, 1
/* 80824AD4  98 1A 06 7C */	stb r0, 0x67c(r26)
/* 80824AD8  7F 43 D3 78 */	mr r3, r26
/* 80824ADC  38 80 00 0C */	li r4, 0xc
/* 80824AE0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80824AE4  38 A0 00 02 */	li r5, 2
/* 80824AE8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80824AEC  4B FF DC A5 */	bl anm_init__FP10e_yr_classifUcf
/* 80824AF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824AF4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80824AF8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80824AFC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80824B00  EC 01 00 2A */	fadds f0, f1, f0
/* 80824B04  D0 1A 06 84 */	stfs f0, 0x684(r26)
/* 80824B08  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80824B0C  4B A4 2E 48 */	b cM_rndF__Ff
/* 80824B10  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80824B14  EC 00 08 2A */	fadds f0, f0, f1
/* 80824B18  FC 00 00 1E */	fctiwz f0, f0
/* 80824B1C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80824B20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80824B24  B0 1A 06 AA */	sth r0, 0x6aa(r26)
lbl_80824B28:
/* 80824B28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824B2C  D0 1A 06 94 */	stfs f0, 0x694(r26)
lbl_80824B30:
/* 80824B30  7F 80 07 75 */	extsb. r0, r28
/* 80824B34  41 82 00 28 */	beq lbl_80824B5C
/* 80824B38  38 7A 0A 8C */	addi r3, r26, 0xa8c
/* 80824B3C  38 9A 05 38 */	addi r4, r26, 0x538
/* 80824B40  4B A4 AB 08 */	b SetC__8cM3dGSphFRC4cXyz
/* 80824B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80824B48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80824B4C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80824B50  38 9A 09 68 */	addi r4, r26, 0x968
/* 80824B54  4B A4 00 54 */	b Set__4cCcSFP8cCcD_Obj
/* 80824B58  48 00 00 18 */	b lbl_80824B70
lbl_80824B5C:
/* 80824B5C  38 7A 09 68 */	addi r3, r26, 0x968
/* 80824B60  81 9A 09 A4 */	lwz r12, 0x9a4(r26)
/* 80824B64  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80824B68  7D 89 03 A6 */	mtctr r12
/* 80824B6C  4E 80 04 21 */	bctrl 
lbl_80824B70:
/* 80824B70  A8 1A 06 DE */	lha r0, 0x6de(r26)
/* 80824B74  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80824B78  40 82 00 24 */	bne lbl_80824B9C
/* 80824B7C  7F 43 D3 78 */	mr r3, r26
/* 80824B80  4B FF E1 CD */	bl pl_horse_check__FP10e_yr_class
/* 80824B84  2C 03 00 00 */	cmpwi r3, 0
/* 80824B88  41 82 00 14 */	beq lbl_80824B9C
/* 80824B8C  38 00 00 09 */	li r0, 9
/* 80824B90  98 1A 06 69 */	stb r0, 0x669(r26)
/* 80824B94  38 00 00 00 */	li r0, 0
/* 80824B98  98 1A 06 7D */	stb r0, 0x67d(r26)
lbl_80824B9C:
/* 80824B9C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80824BA0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80824BA4  39 61 00 70 */	addi r11, r1, 0x70
/* 80824BA8  4B B3 D6 74 */	b _restgpr_26
/* 80824BAC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80824BB0  7C 08 03 A6 */	mtlr r0
/* 80824BB4  38 21 00 80 */	addi r1, r1, 0x80
/* 80824BB8  4E 80 00 20 */	blr 
