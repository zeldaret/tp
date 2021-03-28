lbl_806D4EF4:
/* 806D4EF4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806D4EF8  7C 08 02 A6 */	mflr r0
/* 806D4EFC  90 01 00 84 */	stw r0, 0x84(r1)
/* 806D4F00  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806D4F04  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806D4F08  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 806D4F0C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 806D4F10  39 61 00 60 */	addi r11, r1, 0x60
/* 806D4F14  4B C8 D2 C8 */	b _savegpr_29
/* 806D4F18  7C 7E 1B 78 */	mr r30, r3
/* 806D4F1C  3C 80 80 6D */	lis r4, lit_3906@ha
/* 806D4F20  3B E4 79 A0 */	addi r31, r4, lit_3906@l
/* 806D4F24  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D4F28  2C 00 00 00 */	cmpwi r0, 0
/* 806D4F2C  40 82 00 8C */	bne lbl_806D4FB8
/* 806D4F30  38 00 00 01 */	li r0, 1
/* 806D4F34  98 1E 0A 69 */	stb r0, 0xa69(r30)
/* 806D4F38  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D4F3C  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D4F40  38 80 00 08 */	li r4, 8
/* 806D4F44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D4F48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D4F4C  3C A5 00 02 */	addis r5, r5, 2
/* 806D4F50  38 C0 00 80 */	li r6, 0x80
/* 806D4F54  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D4F58  4B 96 73 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D4F5C  7C 64 1B 78 */	mr r4, r3
/* 806D4F60  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D4F64  38 A0 00 02 */	li r5, 2
/* 806D4F68  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D4F6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D4F70  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D4F74  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D4F78  4B 93 BE F8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D4F7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D4F80  D0 1E 0A 4C */	stfs f0, 0xa4c(r30)
/* 806D4F84  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D4F88  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806D4F8C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D4F90  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 806D4F94  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806D4F98  B0 1E 0A 1E */	sth r0, 0xa1e(r30)
/* 806D4F9C  38 00 00 00 */	li r0, 0
/* 806D4FA0  98 1E 0A 6E */	stb r0, 0xa6e(r30)
/* 806D4FA4  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 806D4FA8  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 806D4FAC  38 03 00 01 */	addi r0, r3, 1
/* 806D4FB0  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D4FB4  48 00 04 80 */	b lbl_806D5434
lbl_806D4FB8:
/* 806D4FB8  2C 00 FF FF */	cmpwi r0, -1
/* 806D4FBC  41 82 04 78 */	beq lbl_806D5434
/* 806D4FC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D4FC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D4FC8  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 806D4FCC  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 806D4FD0  4B 94 56 FC */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D4FD4  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 806D4FD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D4FDC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D4FE0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D4FE4  4B 9A 1A C8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D4FE8  7F C3 F3 78 */	mr r3, r30
/* 806D4FEC  4B FF FD 31 */	bl chaseCheck__8daE_GM_cFv
/* 806D4FF0  2C 03 00 00 */	cmpwi r3, 0
/* 806D4FF4  41 82 00 34 */	beq lbl_806D5028
/* 806D4FF8  3C 60 80 6D */	lis r3, lit_5469@ha
/* 806D4FFC  38 83 7D 0C */	addi r4, r3, lit_5469@l
/* 806D5000  80 64 00 00 */	lwz r3, 0(r4)
/* 806D5004  80 04 00 04 */	lwz r0, 4(r4)
/* 806D5008  90 61 00 28 */	stw r3, 0x28(r1)
/* 806D500C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D5010  80 04 00 08 */	lwz r0, 8(r4)
/* 806D5014  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D5018  7F C3 F3 78 */	mr r3, r30
/* 806D501C  38 81 00 28 */	addi r4, r1, 0x28
/* 806D5020  4B FF C2 A9 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D5024  48 00 04 10 */	b lbl_806D5434
lbl_806D5028:
/* 806D5028  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806D502C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806D5030  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806D5034  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D5038  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806D503C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806D5040  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806D5044  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806D5048  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D504C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806D5050  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 806D5054  38 61 00 10 */	addi r3, r1, 0x10
/* 806D5058  38 81 00 1C */	addi r4, r1, 0x1c
/* 806D505C  4B C7 23 40 */	b PSVECSquareDistance
/* 806D5060  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D5068  40 81 00 58 */	ble lbl_806D50C0
/* 806D506C  FC 00 08 34 */	frsqrte f0, f1
/* 806D5070  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D5074  FC 44 00 32 */	fmul f2, f4, f0
/* 806D5078  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D507C  FC 00 00 32 */	fmul f0, f0, f0
/* 806D5080  FC 01 00 32 */	fmul f0, f1, f0
/* 806D5084  FC 03 00 28 */	fsub f0, f3, f0
/* 806D5088  FC 02 00 32 */	fmul f0, f2, f0
/* 806D508C  FC 44 00 32 */	fmul f2, f4, f0
/* 806D5090  FC 00 00 32 */	fmul f0, f0, f0
/* 806D5094  FC 01 00 32 */	fmul f0, f1, f0
/* 806D5098  FC 03 00 28 */	fsub f0, f3, f0
/* 806D509C  FC 02 00 32 */	fmul f0, f2, f0
/* 806D50A0  FC 44 00 32 */	fmul f2, f4, f0
/* 806D50A4  FC 00 00 32 */	fmul f0, f0, f0
/* 806D50A8  FC 01 00 32 */	fmul f0, f1, f0
/* 806D50AC  FC 03 00 28 */	fsub f0, f3, f0
/* 806D50B0  FC 02 00 32 */	fmul f0, f2, f0
/* 806D50B4  FF E1 00 32 */	fmul f31, f1, f0
/* 806D50B8  FF E0 F8 18 */	frsp f31, f31
/* 806D50BC  48 00 00 90 */	b lbl_806D514C
lbl_806D50C0:
/* 806D50C0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D50C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D50C8  40 80 00 10 */	bge lbl_806D50D8
/* 806D50CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D50D0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806D50D4  48 00 00 78 */	b lbl_806D514C
lbl_806D50D8:
/* 806D50D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806D50DC  80 81 00 08 */	lwz r4, 8(r1)
/* 806D50E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D50E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D50E8  7C 03 00 00 */	cmpw r3, r0
/* 806D50EC  41 82 00 14 */	beq lbl_806D5100
/* 806D50F0  40 80 00 40 */	bge lbl_806D5130
/* 806D50F4  2C 03 00 00 */	cmpwi r3, 0
/* 806D50F8  41 82 00 20 */	beq lbl_806D5118
/* 806D50FC  48 00 00 34 */	b lbl_806D5130
lbl_806D5100:
/* 806D5100  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D5104  41 82 00 0C */	beq lbl_806D5110
/* 806D5108  38 00 00 01 */	li r0, 1
/* 806D510C  48 00 00 28 */	b lbl_806D5134
lbl_806D5110:
/* 806D5110  38 00 00 02 */	li r0, 2
/* 806D5114  48 00 00 20 */	b lbl_806D5134
lbl_806D5118:
/* 806D5118  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D511C  41 82 00 0C */	beq lbl_806D5128
/* 806D5120  38 00 00 05 */	li r0, 5
/* 806D5124  48 00 00 10 */	b lbl_806D5134
lbl_806D5128:
/* 806D5128  38 00 00 03 */	li r0, 3
/* 806D512C  48 00 00 08 */	b lbl_806D5134
lbl_806D5130:
/* 806D5130  38 00 00 04 */	li r0, 4
lbl_806D5134:
/* 806D5134  2C 00 00 01 */	cmpwi r0, 1
/* 806D5138  40 82 00 10 */	bne lbl_806D5148
/* 806D513C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D5140  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806D5144  48 00 00 08 */	b lbl_806D514C
lbl_806D5148:
/* 806D5148  FF E0 08 90 */	fmr f31, f1
lbl_806D514C:
/* 806D514C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806D5150  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806D5154  EC 01 00 28 */	fsubs f0, f1, f0
/* 806D5158  FC 00 02 10 */	fabs f0, f0
/* 806D515C  FF C0 00 18 */	frsp f30, f0
/* 806D5160  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806D5164  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D5168  4B B9 BA 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D516C  3C 80 80 6D */	lis r4, l_HIO@ha
/* 806D5170  38 84 7E C4 */	addi r4, r4, l_HIO@l
/* 806D5174  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 806D5178  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 806D517C  40 80 00 30 */	bge lbl_806D51AC
/* 806D5180  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806D5184  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806D5188  40 80 00 24 */	bge lbl_806D51AC
/* 806D518C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 806D5190  D0 1E 0A 4C */	stfs f0, 0xa4c(r30)
/* 806D5194  38 80 04 00 */	li r4, 0x400
/* 806D5198  B0 9E 0A 5C */	sth r4, 0xa5c(r30)
/* 806D519C  38 03 80 00 */	addi r0, r3, -32768
/* 806D51A0  B0 1E 0A 1E */	sth r0, 0xa1e(r30)
/* 806D51A4  90 9E 08 18 */	stw r4, 0x818(r30)
/* 806D51A8  48 00 00 94 */	b lbl_806D523C
lbl_806D51AC:
/* 806D51AC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806D51B0  D0 1E 0A 4C */	stfs f0, 0xa4c(r30)
/* 806D51B4  38 00 02 00 */	li r0, 0x200
/* 806D51B8  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 806D51BC  88 1E 0A 6B */	lbz r0, 0xa6b(r30)
/* 806D51C0  28 00 00 00 */	cmplwi r0, 0
/* 806D51C4  40 82 00 70 */	bne lbl_806D5234
/* 806D51C8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D51CC  4B B9 27 88 */	b cM_rndF__Ff
/* 806D51D0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D51D4  EC 00 08 2A */	fadds f0, f0, f1
/* 806D51D8  FC 00 00 1E */	fctiwz f0, f0
/* 806D51DC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D51E0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D51E4  98 1E 0A 6B */	stb r0, 0xa6b(r30)
/* 806D51E8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806D51EC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806D51F0  4B B9 BA 14 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D51F4  7C 7D 1B 78 */	mr r29, r3
/* 806D51F8  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 806D51FC  4B B9 27 90 */	b cM_rndFX__Ff
/* 806D5200  7F A0 07 34 */	extsh r0, r29
/* 806D5204  C8 5F 01 18 */	lfd f2, 0x118(r31)
/* 806D5208  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806D520C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D5210  3C 00 43 30 */	lis r0, 0x4330
/* 806D5214  90 01 00 40 */	stw r0, 0x40(r1)
/* 806D5218  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 806D521C  EC 00 10 28 */	fsubs f0, f0, f2
/* 806D5220  EC 00 08 2A */	fadds f0, f0, f1
/* 806D5224  FC 00 00 1E */	fctiwz f0, f0
/* 806D5228  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806D522C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806D5230  B0 1E 0A 1E */	sth r0, 0xa1e(r30)
lbl_806D5234:
/* 806D5234  38 00 00 00 */	li r0, 0
/* 806D5238  90 1E 08 18 */	stw r0, 0x818(r30)
lbl_806D523C:
/* 806D523C  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 806D5240  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806D5244  41 82 00 14 */	beq lbl_806D5258
/* 806D5248  38 00 02 00 */	li r0, 0x200
/* 806D524C  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 806D5250  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 806D5254  B0 1E 0A 1E */	sth r0, 0xa1e(r30)
lbl_806D5258:
/* 806D5258  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806D525C  C0 3E 0A 4C */	lfs f1, 0xa4c(r30)
/* 806D5260  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D5264  4B B9 B4 DC */	b cLib_chaseF__FPfff
/* 806D5268  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806D526C  A8 9E 0A 1E */	lha r4, 0xa1e(r30)
/* 806D5270  38 A0 00 10 */	li r5, 0x10
/* 806D5274  38 C0 08 00 */	li r6, 0x800
/* 806D5278  A8 FE 0A 5C */	lha r7, 0xa5c(r30)
/* 806D527C  4B B9 B2 C4 */	b cLib_addCalcAngleS__FPsssss
/* 806D5280  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 806D5284  38 80 00 00 */	li r4, 0
/* 806D5288  38 A0 00 04 */	li r5, 4
/* 806D528C  38 C0 40 00 */	li r6, 0x4000
/* 806D5290  38 E0 10 00 */	li r7, 0x1000
/* 806D5294  4B B9 B2 AC */	b cLib_addCalcAngleS__FPsssss
/* 806D5298  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 806D529C  38 80 00 00 */	li r4, 0
/* 806D52A0  38 A0 00 04 */	li r5, 4
/* 806D52A4  38 C0 40 00 */	li r6, 0x4000
/* 806D52A8  38 E0 10 00 */	li r7, 0x1000
/* 806D52AC  4B B9 B2 94 */	b cLib_addCalcAngleS__FPsssss
/* 806D52B0  80 1E 0A 3C */	lwz r0, 0xa3c(r30)
/* 806D52B4  2C 00 00 01 */	cmpwi r0, 1
/* 806D52B8  40 82 00 A0 */	bne lbl_806D5358
/* 806D52BC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806D52C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D52C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D52C8  41 82 00 18 */	beq lbl_806D52E0
/* 806D52CC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 806D52D0  EC 01 00 24 */	fdivs f0, f1, f0
/* 806D52D4  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D52D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D52DC  48 00 00 F8 */	b lbl_806D53D4
lbl_806D52E0:
/* 806D52E0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806D52E4  A8 1E 0A 1E */	lha r0, 0xa1e(r30)
/* 806D52E8  7C 63 00 50 */	subf r3, r3, r0
/* 806D52EC  4B C8 FD E4 */	b abs
/* 806D52F0  2C 03 04 00 */	cmpwi r3, 0x400
/* 806D52F4  40 80 00 54 */	bge lbl_806D5348
/* 806D52F8  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D52FC  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D5300  38 80 00 09 */	li r4, 9
/* 806D5304  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D5308  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D530C  3C A5 00 02 */	addis r5, r5, 2
/* 806D5310  38 C0 00 80 */	li r6, 0x80
/* 806D5314  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D5318  4B 96 6F D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D531C  7C 64 1B 78 */	mr r4, r3
/* 806D5320  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5324  38 A0 00 02 */	li r5, 2
/* 806D5328  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D532C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D5330  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D5334  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D5338  4B 93 BB 38 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D533C  38 00 00 02 */	li r0, 2
/* 806D5340  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D5344  48 00 00 90 */	b lbl_806D53D4
lbl_806D5348:
/* 806D5348  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806D534C  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5350  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D5354  48 00 00 80 */	b lbl_806D53D4
lbl_806D5358:
/* 806D5358  2C 00 00 02 */	cmpwi r0, 2
/* 806D535C  40 82 00 78 */	bne lbl_806D53D4
/* 806D5360  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806D5364  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5368  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D536C  40 82 00 1C */	bne lbl_806D5388
/* 806D5370  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806D5374  A8 1E 0A 1E */	lha r0, 0xa1e(r30)
/* 806D5378  7C 63 00 50 */	subf r3, r3, r0
/* 806D537C  4B C8 FD 54 */	b abs
/* 806D5380  2C 03 04 00 */	cmpwi r3, 0x400
/* 806D5384  40 81 00 50 */	ble lbl_806D53D4
lbl_806D5388:
/* 806D5388  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D538C  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D5390  38 80 00 08 */	li r4, 8
/* 806D5394  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D5398  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D539C  3C A5 00 02 */	addis r5, r5, 2
/* 806D53A0  38 C0 00 80 */	li r6, 0x80
/* 806D53A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D53A8  4B 96 6F 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D53AC  7C 64 1B 78 */	mr r4, r3
/* 806D53B0  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D53B4  38 A0 00 02 */	li r5, 2
/* 806D53B8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D53BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D53C0  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D53C4  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D53C8  4B 93 BA A8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D53CC  38 00 00 01 */	li r0, 1
/* 806D53D0  90 1E 0A 3C */	stw r0, 0xa3c(r30)
lbl_806D53D4:
/* 806D53D4  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D53D8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D53DC  88 7E 0A 6E */	lbz r3, 0xa6e(r30)
/* 806D53E0  FC 00 00 1E */	fctiwz f0, f0
/* 806D53E4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806D53E8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806D53EC  7C 03 02 14 */	add r0, r3, r0
/* 806D53F0  98 1E 0A 6E */	stb r0, 0xa6e(r30)
/* 806D53F4  88 1E 0A 6E */	lbz r0, 0xa6e(r30)
/* 806D53F8  28 00 00 04 */	cmplwi r0, 4
/* 806D53FC  41 80 00 38 */	blt lbl_806D5434
/* 806D5400  38 00 00 00 */	li r0, 0
/* 806D5404  98 1E 0A 6E */	stb r0, 0xa6e(r30)
/* 806D5408  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044D@ha */
/* 806D540C  38 03 04 4D */	addi r0, r3, 0x044D /* 0x0007044D@l */
/* 806D5410  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D5414  38 7E 09 6C */	addi r3, r30, 0x96c
/* 806D5418  38 81 00 0C */	addi r4, r1, 0xc
/* 806D541C  38 A0 00 00 */	li r5, 0
/* 806D5420  38 C0 FF FF */	li r6, -1
/* 806D5424  81 9E 09 6C */	lwz r12, 0x96c(r30)
/* 806D5428  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D542C  7D 89 03 A6 */	mtctr r12
/* 806D5430  4E 80 04 21 */	bctrl 
lbl_806D5434:
/* 806D5434  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806D5438  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806D543C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 806D5440  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 806D5444  39 61 00 60 */	addi r11, r1, 0x60
/* 806D5448  4B C8 CD E0 */	b _restgpr_29
/* 806D544C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806D5450  7C 08 03 A6 */	mtlr r0
/* 806D5454  38 21 00 80 */	addi r1, r1, 0x80
/* 806D5458  4E 80 00 20 */	blr 
