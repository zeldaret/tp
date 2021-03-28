lbl_807AA050:
/* 807AA050  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807AA054  7C 08 02 A6 */	mflr r0
/* 807AA058  90 01 00 84 */	stw r0, 0x84(r1)
/* 807AA05C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 807AA060  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 807AA064  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 807AA068  93 C1 00 68 */	stw r30, 0x68(r1)
/* 807AA06C  7C 7E 1B 78 */	mr r30, r3
/* 807AA070  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807AA074  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807AA078  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807AA07C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807AA080  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807AA084  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 807AA088  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807AA08C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807AA090  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807AA094  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 807AA098  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807AA09C  4B FF D8 19 */	bl setSmokeEffect__8daE_SW_cFv
/* 807AA0A0  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807AA0A4  2C 00 00 01 */	cmpwi r0, 1
/* 807AA0A8  41 82 00 38 */	beq lbl_807AA0E0
/* 807AA0AC  40 80 00 10 */	bge lbl_807AA0BC
/* 807AA0B0  2C 00 00 00 */	cmpwi r0, 0
/* 807AA0B4  40 80 00 14 */	bge lbl_807AA0C8
/* 807AA0B8  48 00 03 74 */	b lbl_807AA42C
lbl_807AA0BC:
/* 807AA0BC  2C 00 00 03 */	cmpwi r0, 3
/* 807AA0C0  40 80 03 6C */	bge lbl_807AA42C
/* 807AA0C4  48 00 00 A0 */	b lbl_807AA164
lbl_807AA0C8:
/* 807AA0C8  7F C3 F3 78 */	mr r3, r30
/* 807AA0CC  38 80 00 0C */	li r4, 0xc
/* 807AA0D0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AA0D4  38 A0 00 02 */	li r5, 2
/* 807AA0D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AA0DC  4B FF D3 85 */	bl bckSet__8daE_SW_cFifUcf
lbl_807AA0E0:
/* 807AA0E0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807AA0E4  4B AB D8 A8 */	b cM_rndFX__Ff
/* 807AA0E8  FF E0 08 90 */	fmr f31, f1
/* 807AA0EC  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 807AA0F0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807AA0F4  4B AC 6B 10 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807AA0F8  7C 60 07 34 */	extsh r0, r3
/* 807AA0FC  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 807AA100  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807AA104  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807AA108  3C 00 43 30 */	lis r0, 0x4330
/* 807AA10C  90 01 00 58 */	stw r0, 0x58(r1)
/* 807AA110  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 807AA114  EC 00 08 28 */	fsubs f0, f0, f1
/* 807AA118  EC 00 F8 2A */	fadds f0, f0, f31
/* 807AA11C  FC 00 00 1E */	fctiwz f0, f0
/* 807AA120  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 807AA124  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 807AA128  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 807AA12C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807AA130  EC 21 00 28 */	fsubs f1, f1, f0
/* 807AA134  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA138  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807AA13C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807AA140  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807AA144  38 7E 06 68 */	addi r3, r30, 0x668
/* 807AA148  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807AA14C  38 C1 00 40 */	addi r6, r1, 0x40
/* 807AA150  4B AC 6C 70 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807AA154  38 00 00 1E */	li r0, 0x1e
/* 807AA158  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AA15C  38 00 00 02 */	li r0, 2
/* 807AA160  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AA164:
/* 807AA164  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AA168  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AA16C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AA170  4B AC 65 D0 */	b cLib_chaseF__FPfff
/* 807AA174  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807AA178  38 9E 06 68 */	addi r4, r30, 0x668
/* 807AA17C  4B AC 6A 88 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807AA180  7C 64 1B 78 */	mr r4, r3
/* 807AA184  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807AA188  38 A0 00 08 */	li r5, 8
/* 807AA18C  38 C0 04 00 */	li r6, 0x400
/* 807AA190  4B AC 64 78 */	b cLib_addCalcAngleS2__FPssss
/* 807AA194  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807AA198  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807AA19C  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AA1A0  2C 00 00 00 */	cmpwi r0, 0
/* 807AA1A4  40 82 00 0C */	bne lbl_807AA1B0
/* 807AA1A8  38 00 00 01 */	li r0, 1
/* 807AA1AC  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AA1B0:
/* 807AA1B0  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 807AA1B4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807AA1B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807AA1BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AA1C0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807AA1C4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807AA1C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807AA1CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807AA1D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807AA1D4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807AA1D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807AA1DC  38 61 00 28 */	addi r3, r1, 0x28
/* 807AA1E0  38 81 00 34 */	addi r4, r1, 0x34
/* 807AA1E4  4B B9 D1 B8 */	b PSVECSquareDistance
/* 807AA1E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA1F0  40 81 00 58 */	ble lbl_807AA248
/* 807AA1F4  FC 00 08 34 */	frsqrte f0, f1
/* 807AA1F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AA1FC  FC 44 00 32 */	fmul f2, f4, f0
/* 807AA200  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AA204  FC 00 00 32 */	fmul f0, f0, f0
/* 807AA208  FC 01 00 32 */	fmul f0, f1, f0
/* 807AA20C  FC 03 00 28 */	fsub f0, f3, f0
/* 807AA210  FC 02 00 32 */	fmul f0, f2, f0
/* 807AA214  FC 44 00 32 */	fmul f2, f4, f0
/* 807AA218  FC 00 00 32 */	fmul f0, f0, f0
/* 807AA21C  FC 01 00 32 */	fmul f0, f1, f0
/* 807AA220  FC 03 00 28 */	fsub f0, f3, f0
/* 807AA224  FC 02 00 32 */	fmul f0, f2, f0
/* 807AA228  FC 44 00 32 */	fmul f2, f4, f0
/* 807AA22C  FC 00 00 32 */	fmul f0, f0, f0
/* 807AA230  FC 01 00 32 */	fmul f0, f1, f0
/* 807AA234  FC 03 00 28 */	fsub f0, f3, f0
/* 807AA238  FC 02 00 32 */	fmul f0, f2, f0
/* 807AA23C  FC 21 00 32 */	fmul f1, f1, f0
/* 807AA240  FC 20 08 18 */	frsp f1, f1
/* 807AA244  48 00 00 88 */	b lbl_807AA2CC
lbl_807AA248:
/* 807AA248  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AA24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA250  40 80 00 10 */	bge lbl_807AA260
/* 807AA254  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AA258  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807AA25C  48 00 00 70 */	b lbl_807AA2CC
lbl_807AA260:
/* 807AA260  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807AA264  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807AA268  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AA26C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AA270  7C 03 00 00 */	cmpw r3, r0
/* 807AA274  41 82 00 14 */	beq lbl_807AA288
/* 807AA278  40 80 00 40 */	bge lbl_807AA2B8
/* 807AA27C  2C 03 00 00 */	cmpwi r3, 0
/* 807AA280  41 82 00 20 */	beq lbl_807AA2A0
/* 807AA284  48 00 00 34 */	b lbl_807AA2B8
lbl_807AA288:
/* 807AA288  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AA28C  41 82 00 0C */	beq lbl_807AA298
/* 807AA290  38 00 00 01 */	li r0, 1
/* 807AA294  48 00 00 28 */	b lbl_807AA2BC
lbl_807AA298:
/* 807AA298  38 00 00 02 */	li r0, 2
/* 807AA29C  48 00 00 20 */	b lbl_807AA2BC
lbl_807AA2A0:
/* 807AA2A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AA2A4  41 82 00 0C */	beq lbl_807AA2B0
/* 807AA2A8  38 00 00 05 */	li r0, 5
/* 807AA2AC  48 00 00 10 */	b lbl_807AA2BC
lbl_807AA2B0:
/* 807AA2B0  38 00 00 03 */	li r0, 3
/* 807AA2B4  48 00 00 08 */	b lbl_807AA2BC
lbl_807AA2B8:
/* 807AA2B8  38 00 00 04 */	li r0, 4
lbl_807AA2BC:
/* 807AA2BC  2C 00 00 01 */	cmpwi r0, 1
/* 807AA2C0  40 82 00 0C */	bne lbl_807AA2CC
/* 807AA2C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AA2C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807AA2CC:
/* 807AA2CC  C0 5E 06 90 */	lfs f2, 0x690(r30)
/* 807AA2D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807AA2D4  EC 02 00 28 */	fsubs f0, f2, f0
/* 807AA2D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA2DC  40 80 00 18 */	bge lbl_807AA2F4
/* 807AA2E0  7F C3 F3 78 */	mr r3, r30
/* 807AA2E4  38 80 00 01 */	li r4, 1
/* 807AA2E8  38 A0 00 00 */	li r5, 0
/* 807AA2EC  4B FF D8 79 */	bl setActionMode__8daE_SW_cFss
/* 807AA2F0  48 00 01 3C */	b lbl_807AA42C
lbl_807AA2F4:
/* 807AA2F4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807AA2F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807AA2FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807AA300  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AA304  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807AA308  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807AA30C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807AA310  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807AA314  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807AA318  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807AA31C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807AA320  38 61 00 10 */	addi r3, r1, 0x10
/* 807AA324  38 81 00 1C */	addi r4, r1, 0x1c
/* 807AA328  4B B9 D0 74 */	b PSVECSquareDistance
/* 807AA32C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA334  40 81 00 58 */	ble lbl_807AA38C
/* 807AA338  FC 00 08 34 */	frsqrte f0, f1
/* 807AA33C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AA340  FC 44 00 32 */	fmul f2, f4, f0
/* 807AA344  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AA348  FC 00 00 32 */	fmul f0, f0, f0
/* 807AA34C  FC 01 00 32 */	fmul f0, f1, f0
/* 807AA350  FC 03 00 28 */	fsub f0, f3, f0
/* 807AA354  FC 02 00 32 */	fmul f0, f2, f0
/* 807AA358  FC 44 00 32 */	fmul f2, f4, f0
/* 807AA35C  FC 00 00 32 */	fmul f0, f0, f0
/* 807AA360  FC 01 00 32 */	fmul f0, f1, f0
/* 807AA364  FC 03 00 28 */	fsub f0, f3, f0
/* 807AA368  FC 02 00 32 */	fmul f0, f2, f0
/* 807AA36C  FC 44 00 32 */	fmul f2, f4, f0
/* 807AA370  FC 00 00 32 */	fmul f0, f0, f0
/* 807AA374  FC 01 00 32 */	fmul f0, f1, f0
/* 807AA378  FC 03 00 28 */	fsub f0, f3, f0
/* 807AA37C  FC 02 00 32 */	fmul f0, f2, f0
/* 807AA380  FC 21 00 32 */	fmul f1, f1, f0
/* 807AA384  FC 20 08 18 */	frsp f1, f1
/* 807AA388  48 00 00 88 */	b lbl_807AA410
lbl_807AA38C:
/* 807AA38C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AA390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA394  40 80 00 10 */	bge lbl_807AA3A4
/* 807AA398  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AA39C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807AA3A0  48 00 00 70 */	b lbl_807AA410
lbl_807AA3A4:
/* 807AA3A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AA3A8  80 81 00 08 */	lwz r4, 8(r1)
/* 807AA3AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AA3B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AA3B4  7C 03 00 00 */	cmpw r3, r0
/* 807AA3B8  41 82 00 14 */	beq lbl_807AA3CC
/* 807AA3BC  40 80 00 40 */	bge lbl_807AA3FC
/* 807AA3C0  2C 03 00 00 */	cmpwi r3, 0
/* 807AA3C4  41 82 00 20 */	beq lbl_807AA3E4
/* 807AA3C8  48 00 00 34 */	b lbl_807AA3FC
lbl_807AA3CC:
/* 807AA3CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AA3D0  41 82 00 0C */	beq lbl_807AA3DC
/* 807AA3D4  38 00 00 01 */	li r0, 1
/* 807AA3D8  48 00 00 28 */	b lbl_807AA400
lbl_807AA3DC:
/* 807AA3DC  38 00 00 02 */	li r0, 2
/* 807AA3E0  48 00 00 20 */	b lbl_807AA400
lbl_807AA3E4:
/* 807AA3E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AA3E8  41 82 00 0C */	beq lbl_807AA3F4
/* 807AA3EC  38 00 00 05 */	li r0, 5
/* 807AA3F0  48 00 00 10 */	b lbl_807AA400
lbl_807AA3F4:
/* 807AA3F4  38 00 00 03 */	li r0, 3
/* 807AA3F8  48 00 00 08 */	b lbl_807AA400
lbl_807AA3FC:
/* 807AA3FC  38 00 00 04 */	li r0, 4
lbl_807AA400:
/* 807AA400  2C 00 00 01 */	cmpwi r0, 1
/* 807AA404  40 82 00 0C */	bne lbl_807AA410
/* 807AA408  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AA40C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807AA410:
/* 807AA410  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807AA414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA418  40 81 00 14 */	ble lbl_807AA42C
/* 807AA41C  7F C3 F3 78 */	mr r3, r30
/* 807AA420  38 80 00 00 */	li r4, 0
/* 807AA424  38 A0 00 00 */	li r5, 0
/* 807AA428  4B FF D7 3D */	bl setActionMode__8daE_SW_cFss
lbl_807AA42C:
/* 807AA42C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 807AA430  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 807AA434  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 807AA438  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 807AA43C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807AA440  7C 08 03 A6 */	mtlr r0
/* 807AA444  38 21 00 80 */	addi r1, r1, 0x80
/* 807AA448  4E 80 00 20 */	blr 
