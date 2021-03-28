lbl_8070B268:
/* 8070B268  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8070B26C  7C 08 02 A6 */	mflr r0
/* 8070B270  90 01 00 94 */	stw r0, 0x94(r1)
/* 8070B274  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8070B278  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8070B27C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8070B280  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8070B284  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8070B288  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8070B28C  39 61 00 60 */	addi r11, r1, 0x60
/* 8070B290  4B C5 6F 3C */	b _savegpr_25
/* 8070B294  7C 79 1B 78 */	mr r25, r3
/* 8070B298  7C 9A 23 78 */	mr r26, r4
/* 8070B29C  3C 60 80 71 */	lis r3, lit_3828@ha
/* 8070B2A0  3B A3 39 74 */	addi r29, r3, lit_3828@l
/* 8070B2A4  38 A0 00 00 */	li r5, 0
/* 8070B2A8  3C 60 80 71 */	lis r3, target_info_count@ha
/* 8070B2AC  90 A3 3F C0 */	stw r5, target_info_count@l(r3)
/* 8070B2B0  7C A3 2B 78 */	mr r3, r5
/* 8070B2B4  3C 80 80 71 */	lis r4, target_info@ha
/* 8070B2B8  38 84 3F 98 */	addi r4, r4, target_info@l
/* 8070B2BC  38 00 00 0A */	li r0, 0xa
/* 8070B2C0  7C 09 03 A6 */	mtctr r0
lbl_8070B2C4:
/* 8070B2C4  7C A4 19 2E */	stwx r5, r4, r3
/* 8070B2C8  38 63 00 04 */	addi r3, r3, 4
/* 8070B2CC  42 00 FF F8 */	bdnz lbl_8070B2C4
/* 8070B2D0  3C 60 80 71 */	lis r3, s_b_sub__FPvPv@ha
/* 8070B2D4  38 63 B1 EC */	addi r3, r3, s_b_sub__FPvPv@l
/* 8070B2D8  7F 24 CB 78 */	mr r4, r25
/* 8070B2DC  4B 91 60 5C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8070B2E0  C3 BD 00 44 */	lfs f29, 0x44(r29)
/* 8070B2E4  3C 60 80 71 */	lis r3, target_info_count@ha
/* 8070B2E8  3B C3 3F C0 */	addi r30, r3, target_info_count@l
/* 8070B2EC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8070B2F0  2C 00 00 00 */	cmpwi r0, 0
/* 8070B2F4  41 82 03 B0 */	beq lbl_8070B6A4
/* 8070B2F8  3B 60 00 00 */	li r27, 0
/* 8070B2FC  48 00 03 88 */	b lbl_8070B684
lbl_8070B300:
/* 8070B300  57 60 10 3A */	slwi r0, r27, 2
/* 8070B304  7F 9F 00 2E */	lwzx r28, r31, r0
/* 8070B308  C0 7C 04 D0 */	lfs f3, 0x4d0(r28)
/* 8070B30C  C0 19 05 38 */	lfs f0, 0x538(r25)
/* 8070B310  EC 03 00 28 */	fsubs f0, f3, f0
/* 8070B314  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070B318  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8070B31C  EC 3E 10 2A */	fadds f1, f30, f2
/* 8070B320  C0 19 05 3C */	lfs f0, 0x53c(r25)
/* 8070B324  EC 01 00 28 */	fsubs f0, f1, f0
/* 8070B328  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8070B32C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8070B330  C0 19 05 40 */	lfs f0, 0x540(r25)
/* 8070B334  EC 01 00 28 */	fsubs f0, f1, f0
/* 8070B338  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8070B33C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 8070B340  EC 03 00 28 */	fsubs f0, f3, f0
/* 8070B344  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070B348  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8070B34C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8070B350  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070B354  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 8070B358  EC 01 00 28 */	fsubs f0, f1, f0
/* 8070B35C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070B360  38 61 00 28 */	addi r3, r1, 0x28
/* 8070B364  4B C3 BD D4 */	b PSVECSquareMag
/* 8070B368  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8070B36C  40 81 00 58 */	ble lbl_8070B3C4
/* 8070B370  FC 00 08 34 */	frsqrte f0, f1
/* 8070B374  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 8070B378  FC 44 00 32 */	fmul f2, f4, f0
/* 8070B37C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 8070B380  FC 00 00 32 */	fmul f0, f0, f0
/* 8070B384  FC 01 00 32 */	fmul f0, f1, f0
/* 8070B388  FC 03 00 28 */	fsub f0, f3, f0
/* 8070B38C  FC 02 00 32 */	fmul f0, f2, f0
/* 8070B390  FC 44 00 32 */	fmul f2, f4, f0
/* 8070B394  FC 00 00 32 */	fmul f0, f0, f0
/* 8070B398  FC 01 00 32 */	fmul f0, f1, f0
/* 8070B39C  FC 03 00 28 */	fsub f0, f3, f0
/* 8070B3A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8070B3A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8070B3A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8070B3AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8070B3B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8070B3B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8070B3B8  FC 21 00 32 */	fmul f1, f1, f0
/* 8070B3BC  FC 20 08 18 */	frsp f1, f1
/* 8070B3C0  48 00 00 88 */	b lbl_8070B448
lbl_8070B3C4:
/* 8070B3C4  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 8070B3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070B3CC  40 80 00 10 */	bge lbl_8070B3DC
/* 8070B3D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8070B3D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8070B3D8  48 00 00 70 */	b lbl_8070B448
lbl_8070B3DC:
/* 8070B3DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070B3E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8070B3E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8070B3E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8070B3EC  7C 03 00 00 */	cmpw r3, r0
/* 8070B3F0  41 82 00 14 */	beq lbl_8070B404
/* 8070B3F4  40 80 00 40 */	bge lbl_8070B434
/* 8070B3F8  2C 03 00 00 */	cmpwi r3, 0
/* 8070B3FC  41 82 00 20 */	beq lbl_8070B41C
/* 8070B400  48 00 00 34 */	b lbl_8070B434
lbl_8070B404:
/* 8070B404  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070B408  41 82 00 0C */	beq lbl_8070B414
/* 8070B40C  38 00 00 01 */	li r0, 1
/* 8070B410  48 00 00 28 */	b lbl_8070B438
lbl_8070B414:
/* 8070B414  38 00 00 02 */	li r0, 2
/* 8070B418  48 00 00 20 */	b lbl_8070B438
lbl_8070B41C:
/* 8070B41C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070B420  41 82 00 0C */	beq lbl_8070B42C
/* 8070B424  38 00 00 05 */	li r0, 5
/* 8070B428  48 00 00 10 */	b lbl_8070B438
lbl_8070B42C:
/* 8070B42C  38 00 00 03 */	li r0, 3
/* 8070B430  48 00 00 08 */	b lbl_8070B438
lbl_8070B434:
/* 8070B434  38 00 00 04 */	li r0, 4
lbl_8070B438:
/* 8070B438  2C 00 00 01 */	cmpwi r0, 1
/* 8070B43C  40 82 00 0C */	bne lbl_8070B448
/* 8070B440  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8070B444  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8070B448:
/* 8070B448  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8070B44C  40 80 02 08 */	bge lbl_8070B654
/* 8070B450  38 61 00 1C */	addi r3, r1, 0x1c
/* 8070B454  4B C3 BC E4 */	b PSVECSquareMag
/* 8070B458  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8070B45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070B460  40 81 00 58 */	ble lbl_8070B4B8
/* 8070B464  FC 00 08 34 */	frsqrte f0, f1
/* 8070B468  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 8070B46C  FC 44 00 32 */	fmul f2, f4, f0
/* 8070B470  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 8070B474  FC 00 00 32 */	fmul f0, f0, f0
/* 8070B478  FC 01 00 32 */	fmul f0, f1, f0
/* 8070B47C  FC 03 00 28 */	fsub f0, f3, f0
/* 8070B480  FC 02 00 32 */	fmul f0, f2, f0
/* 8070B484  FC 44 00 32 */	fmul f2, f4, f0
/* 8070B488  FC 00 00 32 */	fmul f0, f0, f0
/* 8070B48C  FC 01 00 32 */	fmul f0, f1, f0
/* 8070B490  FC 03 00 28 */	fsub f0, f3, f0
/* 8070B494  FC 02 00 32 */	fmul f0, f2, f0
/* 8070B498  FC 44 00 32 */	fmul f2, f4, f0
/* 8070B49C  FC 00 00 32 */	fmul f0, f0, f0
/* 8070B4A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8070B4A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8070B4A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8070B4AC  FC 21 00 32 */	fmul f1, f1, f0
/* 8070B4B0  FC 20 08 18 */	frsp f1, f1
/* 8070B4B4  48 00 00 88 */	b lbl_8070B53C
lbl_8070B4B8:
/* 8070B4B8  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 8070B4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070B4C0  40 80 00 10 */	bge lbl_8070B4D0
/* 8070B4C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8070B4C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8070B4CC  48 00 00 70 */	b lbl_8070B53C
lbl_8070B4D0:
/* 8070B4D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8070B4D4  80 81 00 08 */	lwz r4, 8(r1)
/* 8070B4D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8070B4DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8070B4E0  7C 03 00 00 */	cmpw r3, r0
/* 8070B4E4  41 82 00 14 */	beq lbl_8070B4F8
/* 8070B4E8  40 80 00 40 */	bge lbl_8070B528
/* 8070B4EC  2C 03 00 00 */	cmpwi r3, 0
/* 8070B4F0  41 82 00 20 */	beq lbl_8070B510
/* 8070B4F4  48 00 00 34 */	b lbl_8070B528
lbl_8070B4F8:
/* 8070B4F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070B4FC  41 82 00 0C */	beq lbl_8070B508
/* 8070B500  38 00 00 01 */	li r0, 1
/* 8070B504  48 00 00 28 */	b lbl_8070B52C
lbl_8070B508:
/* 8070B508  38 00 00 02 */	li r0, 2
/* 8070B50C  48 00 00 20 */	b lbl_8070B52C
lbl_8070B510:
/* 8070B510  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070B514  41 82 00 0C */	beq lbl_8070B520
/* 8070B518  38 00 00 05 */	li r0, 5
/* 8070B51C  48 00 00 10 */	b lbl_8070B52C
lbl_8070B520:
/* 8070B520  38 00 00 03 */	li r0, 3
/* 8070B524  48 00 00 08 */	b lbl_8070B52C
lbl_8070B528:
/* 8070B528  38 00 00 04 */	li r0, 4
lbl_8070B52C:
/* 8070B52C  2C 00 00 01 */	cmpwi r0, 1
/* 8070B530  40 82 00 0C */	bne lbl_8070B53C
/* 8070B534  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8070B538  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8070B53C:
/* 8070B53C  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 8070B540  C0 19 06 B0 */	lfs f0, 0x6b0(r25)
/* 8070B544  EC 02 00 2A */	fadds f0, f2, f0
/* 8070B548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070B54C  41 81 01 08 */	bgt lbl_8070B654
/* 8070B550  7F 23 CB 78 */	mr r3, r25
/* 8070B554  7F 84 E3 78 */	mr r4, r28
/* 8070B558  4B FF FA E5 */	bl other_bg_check__FP10e_mf_classP10fopAc_ac_c
/* 8070B55C  2C 03 00 00 */	cmpwi r3, 0
/* 8070B560  41 82 00 0C */	beq lbl_8070B56C
/* 8070B564  2C 1A 00 00 */	cmpwi r26, 0
/* 8070B568  40 82 00 EC */	bne lbl_8070B654
lbl_8070B56C:
/* 8070B56C  2C 1A 00 00 */	cmpwi r26, 0
/* 8070B570  41 82 00 DC */	beq lbl_8070B64C
/* 8070B574  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 8070B578  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8070B57C  EC 21 00 2A */	fadds f1, f1, f0
/* 8070B580  C0 19 05 3C */	lfs f0, 0x53c(r25)
/* 8070B584  EC 01 00 28 */	fsubs f0, f1, f0
/* 8070B588  FC 00 02 10 */	fabs f0, f0
/* 8070B58C  FC 20 00 18 */	frsp f1, f0
/* 8070B590  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8070B594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070B598  4C 40 13 82 */	cror 2, 0, 2
/* 8070B59C  40 82 00 B8 */	bne lbl_8070B654
/* 8070B5A0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8070B5A4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8070B5A8  4B B5 C0 CC */	b cM_atan2s__Fff
/* 8070B5AC  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 8070B5B0  7C 03 20 50 */	subf r0, r3, r4
/* 8070B5B4  7C 00 07 35 */	extsh. r0, r0
/* 8070B5B8  40 80 00 0C */	bge lbl_8070B5C4
/* 8070B5BC  7C 00 00 D0 */	neg r0, r0
/* 8070B5C0  7C 00 07 34 */	extsh r0, r0
lbl_8070B5C4:
/* 8070B5C4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8070B5C8  28 00 4E 20 */	cmplwi r0, 0x4e20
/* 8070B5CC  40 80 00 0C */	bge lbl_8070B5D8
/* 8070B5D0  7F 83 E3 78 */	mr r3, r28
/* 8070B5D4  48 00 00 DC */	b lbl_8070B6B0
lbl_8070B5D8:
/* 8070B5D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8070B5DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8070B5E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070B5E4  7C 04 00 D0 */	neg r0, r4
/* 8070B5E8  7C 04 07 34 */	extsh r4, r0
/* 8070B5EC  4B 90 0D F0 */	b mDoMtx_YrotS__FPA4_fs
/* 8070B5F0  38 61 00 28 */	addi r3, r1, 0x28
/* 8070B5F4  38 81 00 10 */	addi r4, r1, 0x10
/* 8070B5F8  4B B6 58 F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070B5FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070B600  FC 00 02 10 */	fabs f0, f0
/* 8070B604  FC 00 00 18 */	frsp f0, f0
/* 8070B608  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8070B60C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8070B610  40 80 00 44 */	bge lbl_8070B654
/* 8070B614  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8070B618  FC 00 02 10 */	fabs f0, f0
/* 8070B61C  FC 40 00 18 */	frsp f2, f0
/* 8070B620  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8070B624  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070B628  40 80 00 2C */	bge lbl_8070B654
/* 8070B62C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8070B630  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8070B634  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070B638  40 81 00 1C */	ble lbl_8070B654
/* 8070B63C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8070B640  40 80 00 14 */	bge lbl_8070B654
/* 8070B644  7F 83 E3 78 */	mr r3, r28
/* 8070B648  48 00 00 68 */	b lbl_8070B6B0
lbl_8070B64C:
/* 8070B64C  7F 83 E3 78 */	mr r3, r28
/* 8070B650  48 00 00 60 */	b lbl_8070B6B0
lbl_8070B654:
/* 8070B654  80 1E 00 00 */	lwz r0, 0(r30)
/* 8070B658  3B 7B 00 01 */	addi r27, r27, 1
/* 8070B65C  7C 1B 00 00 */	cmpw r27, r0
/* 8070B660  40 82 00 34 */	bne lbl_8070B694
/* 8070B664  3B 60 00 00 */	li r27, 0
/* 8070B668  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 8070B66C  EF BD 00 2A */	fadds f29, f29, f0
/* 8070B670  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8070B674  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8070B678  40 81 00 1C */	ble lbl_8070B694
/* 8070B67C  38 60 00 00 */	li r3, 0
/* 8070B680  48 00 00 30 */	b lbl_8070B6B0
lbl_8070B684:
/* 8070B684  3C 60 80 71 */	lis r3, target_info@ha
/* 8070B688  3B E3 3F 98 */	addi r31, r3, target_info@l
/* 8070B68C  FF C0 E8 90 */	fmr f30, f29
/* 8070B690  C3 FD 00 04 */	lfs f31, 4(r29)
lbl_8070B694:
/* 8070B694  80 1E 00 00 */	lwz r0, 0(r30)
/* 8070B698  7C 1B 00 00 */	cmpw r27, r0
/* 8070B69C  41 80 FC 64 */	blt lbl_8070B300
/* 8070B6A0  48 00 00 0C */	b lbl_8070B6AC
lbl_8070B6A4:
/* 8070B6A4  38 60 00 00 */	li r3, 0
/* 8070B6A8  48 00 00 08 */	b lbl_8070B6B0
lbl_8070B6AC:
/* 8070B6AC  38 60 00 00 */	li r3, 0
lbl_8070B6B0:
/* 8070B6B0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8070B6B4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8070B6B8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8070B6BC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8070B6C0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8070B6C4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8070B6C8  39 61 00 60 */	addi r11, r1, 0x60
/* 8070B6CC  4B C5 6B 4C */	b _restgpr_25
/* 8070B6D0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8070B6D4  7C 08 03 A6 */	mtlr r0
/* 8070B6D8  38 21 00 90 */	addi r1, r1, 0x90
/* 8070B6DC  4E 80 00 20 */	blr 
