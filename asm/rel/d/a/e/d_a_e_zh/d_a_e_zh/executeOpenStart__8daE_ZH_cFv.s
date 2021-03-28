lbl_8082B284:
/* 8082B284  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8082B288  7C 08 02 A6 */	mflr r0
/* 8082B28C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8082B290  39 61 00 60 */	addi r11, r1, 0x60
/* 8082B294  4B B3 6F 48 */	b _savegpr_29
/* 8082B298  7C 7D 1B 78 */	mr r29, r3
/* 8082B29C  3C 80 80 83 */	lis r4, lit_3778@ha
/* 8082B2A0  3B E4 F2 08 */	addi r31, r4, lit_3778@l
/* 8082B2A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8082B2A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8082B2AC  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8082B2B0  7C 00 07 74 */	extsb r0, r0
/* 8082B2B4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8082B2B8  7C 84 02 14 */	add r4, r4, r0
/* 8082B2BC  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 8082B2C0  80 03 0B 6C */	lwz r0, 0xb6c(r3)
/* 8082B2C4  60 00 00 40 */	ori r0, r0, 0x40
/* 8082B2C8  90 03 0B 6C */	stw r0, 0xb6c(r3)
/* 8082B2CC  80 03 07 84 */	lwz r0, 0x784(r3)
/* 8082B2D0  28 00 00 10 */	cmplwi r0, 0x10
/* 8082B2D4  41 81 05 34 */	bgt lbl_8082B808
/* 8082B2D8  3C 80 80 83 */	lis r4, lit_4883@ha
/* 8082B2DC  38 84 F5 5C */	addi r4, r4, lit_4883@l
/* 8082B2E0  54 00 10 3A */	slwi r0, r0, 2
/* 8082B2E4  7C 04 00 2E */	lwzx r0, r4, r0
/* 8082B2E8  7C 09 03 A6 */	mtctr r0
/* 8082B2EC  4E 80 04 20 */	bctr 
lbl_8082B2F0:
/* 8082B2F0  38 80 00 0B */	li r4, 0xb
/* 8082B2F4  38 A0 00 00 */	li r5, 0
/* 8082B2F8  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082B2FC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082B300  4B FF E0 A9 */	bl setBck__8daE_ZH_cFiUcff
/* 8082B304  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 8082B308  28 03 00 00 */	cmplwi r3, 0
/* 8082B30C  41 82 00 2C */	beq lbl_8082B338
/* 8082B310  4B 7F 18 90 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 8082B314  88 9D 07 A9 */	lbz r4, 0x7a9(r29)
/* 8082B318  28 04 00 FF */	cmplwi r4, 0xff
/* 8082B31C  41 82 00 30 */	beq lbl_8082B34C
/* 8082B320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082B324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082B328  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082B32C  7C 05 07 74 */	extsb r5, r0
/* 8082B330  4B 80 9E D0 */	b onSwitch__10dSv_info_cFii
/* 8082B334  48 00 00 18 */	b lbl_8082B34C
lbl_8082B338:
/* 8082B338  7F A3 EB 78 */	mr r3, r29
/* 8082B33C  38 80 00 08 */	li r4, 8
/* 8082B340  38 A0 00 00 */	li r5, 0
/* 8082B344  4B FF E1 11 */	bl setActionMode__8daE_ZH_cFii
/* 8082B348  48 00 04 C0 */	b lbl_8082B808
lbl_8082B34C:
/* 8082B34C  38 00 00 06 */	li r0, 6
/* 8082B350  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082B354  38 00 00 01 */	li r0, 1
/* 8082B358  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082B35C  48 00 04 AC */	b lbl_8082B808
lbl_8082B360:
/* 8082B360  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8082B364  38 80 00 01 */	li r4, 1
/* 8082B368  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082B36C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8082B370  40 82 00 18 */	bne lbl_8082B388
/* 8082B374  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082B378  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082B37C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082B380  41 82 00 08 */	beq lbl_8082B388
/* 8082B384  38 80 00 00 */	li r4, 0
lbl_8082B388:
/* 8082B388  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082B38C  40 82 00 40 */	bne lbl_8082B3CC
/* 8082B390  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082B394  2C 00 00 00 */	cmpwi r0, 0
/* 8082B398  41 82 00 1C */	beq lbl_8082B3B4
/* 8082B39C  7F A3 EB 78 */	mr r3, r29
/* 8082B3A0  38 80 00 01 */	li r4, 1
/* 8082B3A4  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 8082B3A8  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 8082B3AC  4B FF E6 4D */	bl mColorSet__8daE_ZH_cFbff
/* 8082B3B0  48 00 04 58 */	b lbl_8082B808
lbl_8082B3B4:
/* 8082B3B4  7F A3 EB 78 */	mr r3, r29
/* 8082B3B8  38 80 00 00 */	li r4, 0
/* 8082B3BC  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 8082B3C0  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 8082B3C4  4B FF E6 35 */	bl mColorSet__8daE_ZH_cFbff
/* 8082B3C8  48 00 04 40 */	b lbl_8082B808
lbl_8082B3CC:
/* 8082B3CC  3C 60 80 83 */	lis r3, mStartFlag@ha
/* 8082B3D0  80 03 F7 50 */	lwz r0, mStartFlag@l(r3)
/* 8082B3D4  2C 00 00 00 */	cmpwi r0, 0
/* 8082B3D8  40 82 00 68 */	bne lbl_8082B440
/* 8082B3DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8082B3E0  2C 00 00 33 */	cmpwi r0, 0x33
/* 8082B3E4  40 82 00 24 */	bne lbl_8082B408
/* 8082B3E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082B3EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082B3F0  38 80 00 5A */	li r4, 0x5a
/* 8082B3F4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082B3F8  7C 05 07 74 */	extsb r5, r0
/* 8082B3FC  4B 80 9F 64 */	b isSwitch__10dSv_info_cCFii
/* 8082B400  2C 03 00 00 */	cmpwi r3, 0
/* 8082B404  41 82 00 30 */	beq lbl_8082B434
lbl_8082B408:
/* 8082B408  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8082B40C  2C 00 00 34 */	cmpwi r0, 0x34
/* 8082B410  40 82 00 30 */	bne lbl_8082B440
/* 8082B414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082B418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082B41C  38 80 00 5B */	li r4, 0x5b
/* 8082B420  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082B424  7C 05 07 74 */	extsb r5, r0
/* 8082B428  4B 80 9F 38 */	b isSwitch__10dSv_info_cCFii
/* 8082B42C  2C 03 00 00 */	cmpwi r3, 0
/* 8082B430  40 82 00 10 */	bne lbl_8082B440
lbl_8082B434:
/* 8082B434  38 00 00 0A */	li r0, 0xa
/* 8082B438  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082B43C  48 00 03 CC */	b lbl_8082B808
lbl_8082B440:
/* 8082B440  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082B444  38 63 F7 34 */	addi r3, r3, l_HIO@l
/* 8082B448  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8082B44C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8082B450  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082B454  38 00 00 02 */	li r0, 2
/* 8082B458  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082B45C:
/* 8082B45C  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082B460  2C 00 00 00 */	cmpwi r0, 0
/* 8082B464  40 82 03 A4 */	bne lbl_8082B808
/* 8082B468  7F A3 EB 78 */	mr r3, r29
/* 8082B46C  38 80 00 01 */	li r4, 1
/* 8082B470  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082B474  FC 40 08 90 */	fmr f2, f1
/* 8082B478  4B FF E5 81 */	bl mColorSet__8daE_ZH_cFbff
/* 8082B47C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082B480  41 82 03 88 */	beq lbl_8082B808
/* 8082B484  7F A3 EB 78 */	mr r3, r29
/* 8082B488  4B FF EF 09 */	bl mStartParticleSet__8daE_ZH_cFv
/* 8082B48C  38 00 00 03 */	li r0, 3
/* 8082B490  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082B494  48 00 03 74 */	b lbl_8082B808
lbl_8082B498:
/* 8082B498  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8082B49C  38 80 00 01 */	li r4, 1
/* 8082B4A0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082B4A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8082B4A8  40 82 00 18 */	bne lbl_8082B4C0
/* 8082B4AC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082B4B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082B4B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082B4B8  41 82 00 08 */	beq lbl_8082B4C0
/* 8082B4BC  38 80 00 00 */	li r4, 0
lbl_8082B4C0:
/* 8082B4C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082B4C4  41 82 03 44 */	beq lbl_8082B808
/* 8082B4C8  7F A3 EB 78 */	mr r3, r29
/* 8082B4CC  38 80 00 04 */	li r4, 4
/* 8082B4D0  38 A0 00 00 */	li r5, 0
/* 8082B4D4  4B FF DF 81 */	bl setActionMode__8daE_ZH_cFii
/* 8082B4D8  48 00 03 30 */	b lbl_8082B808
lbl_8082B4DC:
/* 8082B4DC  3C 80 80 83 */	lis r4, mStartFlag@ha
/* 8082B4E0  80 04 F7 50 */	lwz r0, mStartFlag@l(r4)
/* 8082B4E4  2C 00 00 00 */	cmpwi r0, 0
/* 8082B4E8  41 82 03 20 */	beq lbl_8082B808
/* 8082B4EC  4B FF E0 85 */	bl startDemoCheck__8daE_ZH_cFv
/* 8082B4F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082B4F4  41 82 03 14 */	beq lbl_8082B808
/* 8082B4F8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8082B4FC  2C 00 00 33 */	cmpwi r0, 0x33
/* 8082B500  40 82 00 20 */	bne lbl_8082B520
/* 8082B504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082B508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082B50C  38 80 00 5A */	li r4, 0x5a
/* 8082B510  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082B514  7C 05 07 74 */	extsb r5, r0
/* 8082B518  4B 80 9C E8 */	b onSwitch__10dSv_info_cFii
/* 8082B51C  48 00 00 1C */	b lbl_8082B538
lbl_8082B520:
/* 8082B520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082B524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082B528  38 80 00 5B */	li r4, 0x5b
/* 8082B52C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082B530  7C 05 07 74 */	extsb r5, r0
/* 8082B534  4B 80 9C CC */	b onSwitch__10dSv_info_cFii
lbl_8082B538:
/* 8082B538  38 00 00 02 */	li r0, 2
/* 8082B53C  3C 60 80 83 */	lis r3, mStartFlag@ha
/* 8082B540  90 03 F7 50 */	stw r0, mStartFlag@l(r3)
/* 8082B544  38 00 00 14 */	li r0, 0x14
/* 8082B548  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082B54C  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082B550  38 03 00 01 */	addi r0, r3, 1
/* 8082B554  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082B558:
/* 8082B558  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8082B55C  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082B560  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8082B564  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082B568  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 8082B56C  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082B570  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 8082B574  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 8082B578  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082B57C  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 8082B580  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8082B584  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8082B588  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 8082B58C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082B590  C0 1D 0D FC */	lfs f0, 0xdfc(r29)
/* 8082B594  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082B598  C0 1D 0E 00 */	lfs f0, 0xe00(r29)
/* 8082B59C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082B5A0  C0 1D 0D EC */	lfs f0, 0xdec(r29)
/* 8082B5A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082B5A8  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 8082B5AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8082B5B0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8082B5B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082B5B8  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B5BC  38 81 00 30 */	addi r4, r1, 0x30
/* 8082B5C0  38 A1 00 24 */	addi r5, r1, 0x24
/* 8082B5C4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8082B5C8  38 C0 00 00 */	li r6, 0
/* 8082B5CC  4B 95 55 14 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8082B5D0  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082B5D4  2C 00 00 00 */	cmpwi r0, 0
/* 8082B5D8  40 82 02 30 */	bne lbl_8082B808
/* 8082B5DC  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082B5E0  38 03 00 01 */	addi r0, r3, 1
/* 8082B5E4  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082B5E8  48 00 02 20 */	b lbl_8082B808
lbl_8082B5EC:
/* 8082B5EC  38 80 00 01 */	li r4, 1
/* 8082B5F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082B5F4  FC 40 08 90 */	fmr f2, f1
/* 8082B5F8  4B FF E4 01 */	bl mColorSet__8daE_ZH_cFbff
/* 8082B5FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082B600  41 82 02 08 */	beq lbl_8082B808
/* 8082B604  7F A3 EB 78 */	mr r3, r29
/* 8082B608  4B FF ED 89 */	bl mStartParticleSet__8daE_ZH_cFv
/* 8082B60C  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082B610  38 03 00 01 */	addi r0, r3, 1
/* 8082B614  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082B618  48 00 01 F0 */	b lbl_8082B808
lbl_8082B61C:
/* 8082B61C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8082B620  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8082B624  FC 00 00 1E */	fctiwz f0, f0
/* 8082B628  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8082B62C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8082B630  2C 00 00 54 */	cmpwi r0, 0x54
/* 8082B634  41 80 01 D4 */	blt lbl_8082B808
/* 8082B638  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8082B63C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8082B640  2C 00 00 54 */	cmpwi r0, 0x54
/* 8082B644  40 82 00 1C */	bne lbl_8082B660
/* 8082B648  4B 95 5F F8 */	b dCam_getBody__Fv
/* 8082B64C  38 80 00 32 */	li r4, 0x32
/* 8082B650  7F A5 EB 78 */	mr r5, r29
/* 8082B654  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082B658  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 8082B65C  4B 95 5B 14 */	b StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_8082B660:
/* 8082B660  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8082B664  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082B668  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8082B66C  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082B670  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 8082B674  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082B678  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 8082B67C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082B680  C0 5F 01 74 */	lfs f2, 0x174(r31)
/* 8082B684  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8082B688  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8082B68C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8082B690  38 7D 0D EC */	addi r3, r29, 0xdec
/* 8082B694  38 81 00 3C */	addi r4, r1, 0x3c
/* 8082B698  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8082B69C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082B6A0  4B A4 44 18 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082B6A4  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 8082B6A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082B6AC  C0 1D 0D FC */	lfs f0, 0xdfc(r29)
/* 8082B6B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082B6B4  C0 1D 0E 00 */	lfs f0, 0xe00(r29)
/* 8082B6B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082B6BC  C0 1D 0D EC */	lfs f0, 0xdec(r29)
/* 8082B6C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8082B6C4  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 8082B6C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082B6CC  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8082B6D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8082B6D4  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B6D8  38 81 00 18 */	addi r4, r1, 0x18
/* 8082B6DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 8082B6E0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8082B6E4  38 C0 00 00 */	li r6, 0
/* 8082B6E8  4B 95 53 F8 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8082B6EC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8082B6F0  38 80 00 01 */	li r4, 1
/* 8082B6F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082B6F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8082B6FC  40 82 00 18 */	bne lbl_8082B714
/* 8082B700  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082B704  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082B708  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082B70C  41 82 00 08 */	beq lbl_8082B714
/* 8082B710  38 80 00 00 */	li r4, 0
lbl_8082B714:
/* 8082B714  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082B718  41 82 00 F0 */	beq lbl_8082B808
/* 8082B71C  38 00 00 14 */	li r0, 0x14
/* 8082B720  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082B724  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082B728  38 03 00 01 */	addi r0, r3, 1
/* 8082B72C  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082B730:
/* 8082B730  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082B734  2C 00 00 00 */	cmpwi r0, 0
/* 8082B738  40 82 00 D0 */	bne lbl_8082B808
/* 8082B73C  38 00 00 32 */	li r0, 0x32
/* 8082B740  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082B744  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082B748  38 03 00 01 */	addi r0, r3, 1
/* 8082B74C  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082B750:
/* 8082B750  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8082B754  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 8082B758  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8082B75C  EC 01 00 2A */	fadds f0, f1, f0
/* 8082B760  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082B764  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8082B768  C0 5D 08 8C */	lfs f2, 0x88c(r29)
/* 8082B76C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8082B770  41 82 00 0C */	beq lbl_8082B77C
/* 8082B774  EC 01 10 2A */	fadds f0, f1, f2
/* 8082B778  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8082B77C:
/* 8082B77C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8082B780  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8082B784  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8082B788  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082B78C  4B A4 42 B0 */	b cLib_addCalc2__FPffff
/* 8082B790  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070456@ha */
/* 8082B794  38 03 04 56 */	addi r0, r3, 0x0456 /* 0x00070456@l */
/* 8082B798  90 01 00 08 */	stw r0, 8(r1)
/* 8082B79C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8082B7A0  38 81 00 08 */	addi r4, r1, 8
/* 8082B7A4  38 A0 00 00 */	li r5, 0
/* 8082B7A8  38 C0 FF FF */	li r6, -1
/* 8082B7AC  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8082B7B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082B7B4  7D 89 03 A6 */	mtctr r12
/* 8082B7B8  4E 80 04 21 */	bctrl 
/* 8082B7BC  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082B7C0  2C 00 00 00 */	cmpwi r0, 0
/* 8082B7C4  40 82 00 44 */	bne lbl_8082B808
/* 8082B7C8  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082B7CC  38 03 00 01 */	addi r0, r3, 1
/* 8082B7D0  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082B7D4:
/* 8082B7D4  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B7D8  4B 93 5C D4 */	b Start__9dCamera_cFv
/* 8082B7DC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B7E0  38 80 00 00 */	li r4, 0
/* 8082B7E4  4B 93 78 28 */	b SetTrimSize__9dCamera_cFl
/* 8082B7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082B7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082B7F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8082B7F4  4B 81 6C 74 */	b reset__14dEvt_control_cFv
/* 8082B7F8  7F A3 EB 78 */	mr r3, r29
/* 8082B7FC  38 80 00 04 */	li r4, 4
/* 8082B800  38 A0 00 00 */	li r5, 0
/* 8082B804  4B FF DC 51 */	bl setActionMode__8daE_ZH_cFii
lbl_8082B808:
/* 8082B808  39 61 00 60 */	addi r11, r1, 0x60
/* 8082B80C  4B B3 6A 1C */	b _restgpr_29
/* 8082B810  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8082B814  7C 08 03 A6 */	mtlr r0
/* 8082B818  38 21 00 60 */	addi r1, r1, 0x60
/* 8082B81C  4E 80 00 20 */	blr 
