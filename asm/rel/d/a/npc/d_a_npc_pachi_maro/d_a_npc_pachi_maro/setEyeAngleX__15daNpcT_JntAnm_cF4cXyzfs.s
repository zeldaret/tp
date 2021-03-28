lbl_80A9B33C:
/* 80A9B33C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A9B340  7C 08 02 A6 */	mflr r0
/* 80A9B344  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A9B348  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A9B34C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A9B350  39 61 00 60 */	addi r11, r1, 0x60
/* 80A9B354  4B 8C 6E 88 */	b _savegpr_29
/* 80A9B358  7C 7F 1B 78 */	mr r31, r3
/* 80A9B35C  7C 80 23 78 */	mr r0, r4
/* 80A9B360  FF E0 08 90 */	fmr f31, f1
/* 80A9B364  7C BD 2B 78 */	mr r29, r5
/* 80A9B368  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A9B36C  3B C3 B8 8C */	addi r30, r3, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A9B370  38 A0 00 00 */	li r5, 0
/* 80A9B374  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A9B378  28 04 00 00 */	cmplwi r4, 0
/* 80A9B37C  41 82 01 40 */	beq lbl_80A9B4BC
/* 80A9B380  38 61 00 18 */	addi r3, r1, 0x18
/* 80A9B384  7C 05 03 78 */	mr r5, r0
/* 80A9B388  4B 7C B7 AC */	b __mi__4cXyzCFRC3Vec
/* 80A9B38C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A9B390  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A9B394  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A9B398  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A9B39C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A9B3A0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A9B3A4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A9B3A8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A9B3AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A9B3B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A9B3B4  38 61 00 0C */	addi r3, r1, 0xc
/* 80A9B3B8  4B 8A BD 80 */	b PSVECSquareMag
/* 80A9B3BC  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A9B3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A9B3C4  40 81 00 58 */	ble lbl_80A9B41C
/* 80A9B3C8  FC 00 08 34 */	frsqrte f0, f1
/* 80A9B3CC  C8 9E 00 D8 */	lfd f4, 0xd8(r30)
/* 80A9B3D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A9B3D4  C8 7E 00 E0 */	lfd f3, 0xe0(r30)
/* 80A9B3D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A9B3DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A9B3E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A9B3E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A9B3E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A9B3EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A9B3F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A9B3F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A9B3F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A9B3FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A9B400  FC 00 00 32 */	fmul f0, f0, f0
/* 80A9B404  FC 01 00 32 */	fmul f0, f1, f0
/* 80A9B408  FC 03 00 28 */	fsub f0, f3, f0
/* 80A9B40C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A9B410  FC 41 00 32 */	fmul f2, f1, f0
/* 80A9B414  FC 40 10 18 */	frsp f2, f2
/* 80A9B418  48 00 00 90 */	b lbl_80A9B4A8
lbl_80A9B41C:
/* 80A9B41C  C8 1E 00 E8 */	lfd f0, 0xe8(r30)
/* 80A9B420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A9B424  40 80 00 10 */	bge lbl_80A9B434
/* 80A9B428  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A9B42C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A9B430  48 00 00 78 */	b lbl_80A9B4A8
lbl_80A9B434:
/* 80A9B434  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A9B438  80 81 00 08 */	lwz r4, 8(r1)
/* 80A9B43C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A9B440  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A9B444  7C 03 00 00 */	cmpw r3, r0
/* 80A9B448  41 82 00 14 */	beq lbl_80A9B45C
/* 80A9B44C  40 80 00 40 */	bge lbl_80A9B48C
/* 80A9B450  2C 03 00 00 */	cmpwi r3, 0
/* 80A9B454  41 82 00 20 */	beq lbl_80A9B474
/* 80A9B458  48 00 00 34 */	b lbl_80A9B48C
lbl_80A9B45C:
/* 80A9B45C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A9B460  41 82 00 0C */	beq lbl_80A9B46C
/* 80A9B464  38 00 00 01 */	li r0, 1
/* 80A9B468  48 00 00 28 */	b lbl_80A9B490
lbl_80A9B46C:
/* 80A9B46C  38 00 00 02 */	li r0, 2
/* 80A9B470  48 00 00 20 */	b lbl_80A9B490
lbl_80A9B474:
/* 80A9B474  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A9B478  41 82 00 0C */	beq lbl_80A9B484
/* 80A9B47C  38 00 00 05 */	li r0, 5
/* 80A9B480  48 00 00 10 */	b lbl_80A9B490
lbl_80A9B484:
/* 80A9B484  38 00 00 03 */	li r0, 3
/* 80A9B488  48 00 00 08 */	b lbl_80A9B490
lbl_80A9B48C:
/* 80A9B48C  38 00 00 04 */	li r0, 4
lbl_80A9B490:
/* 80A9B490  2C 00 00 01 */	cmpwi r0, 1
/* 80A9B494  40 82 00 10 */	bne lbl_80A9B4A4
/* 80A9B498  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A9B49C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A9B4A0  48 00 00 08 */	b lbl_80A9B4A8
lbl_80A9B4A4:
/* 80A9B4A4  FC 40 08 90 */	fmr f2, f1
lbl_80A9B4A8:
/* 80A9B4A8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A9B4AC  4B 7C C1 C8 */	b cM_atan2s__Fff
/* 80A9B4B0  7C 03 00 D0 */	neg r0, r3
/* 80A9B4B4  7C 05 07 34 */	extsh r5, r0
/* 80A9B4B8  7C A5 EA 14 */	add r5, r5, r29
lbl_80A9B4BC:
/* 80A9B4BC  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A9B4C0  7C A5 02 14 */	add r5, r5, r0
/* 80A9B4C4  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80A9B4C8  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A9B4CC  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A9B4D0  C8 5E 00 D0 */	lfd f2, 0xd0(r30)
/* 80A9B4D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A9B4D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9B4DC  3C 60 43 30 */	lis r3, 0x4330
/* 80A9B4E0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A9B4E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A9B4E8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A9B4EC  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A9B4F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A9B4F4  7C A0 07 34 */	extsh r0, r5
/* 80A9B4F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A9B4FC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A9B500  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A9B504  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A9B508  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A9B50C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A9B510  EC 01 00 2A */	fadds f0, f1, f0
/* 80A9B514  FC 00 00 1E */	fctiwz f0, f0
/* 80A9B518  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A9B51C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A9B520  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A9B524  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A9B528  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A9B52C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A9B530  4B 8C 6C F8 */	b _restgpr_29
/* 80A9B534  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A9B538  7C 08 03 A6 */	mtlr r0
/* 80A9B53C  38 21 00 70 */	addi r1, r1, 0x70
/* 80A9B540  4E 80 00 20 */	blr 
