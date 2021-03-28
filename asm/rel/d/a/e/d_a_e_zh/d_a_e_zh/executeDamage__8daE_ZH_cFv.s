lbl_8082D2F0:
/* 8082D2F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082D2F4  7C 08 02 A6 */	mflr r0
/* 8082D2F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082D2FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8082D300  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8082D304  7C 7E 1B 78 */	mr r30, r3
/* 8082D308  3C 80 80 83 */	lis r4, lit_3778@ha
/* 8082D30C  3B E4 F2 08 */	addi r31, r4, lit_3778@l
/* 8082D310  80 03 07 84 */	lwz r0, 0x784(r3)
/* 8082D314  2C 00 00 03 */	cmpwi r0, 3
/* 8082D318  41 82 04 B0 */	beq lbl_8082D7C8
/* 8082D31C  40 80 00 1C */	bge lbl_8082D338
/* 8082D320  2C 00 00 01 */	cmpwi r0, 1
/* 8082D324  41 82 01 08 */	beq lbl_8082D42C
/* 8082D328  40 80 03 7C */	bge lbl_8082D6A4
/* 8082D32C  2C 00 00 00 */	cmpwi r0, 0
/* 8082D330  40 80 00 18 */	bge lbl_8082D348
/* 8082D334  48 00 06 30 */	b lbl_8082D964
lbl_8082D338:
/* 8082D338  2C 00 00 05 */	cmpwi r0, 5
/* 8082D33C  41 82 05 B0 */	beq lbl_8082D8EC
/* 8082D340  40 80 06 24 */	bge lbl_8082D964
/* 8082D344  48 00 05 30 */	b lbl_8082D874
lbl_8082D348:
/* 8082D348  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082D34C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8082D350  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8082D354  3C 80 D8 48 */	lis r4, 0xD848 /* 0xD84860BA@ha */
/* 8082D358  38 04 60 BA */	addi r0, r4, 0x60BA /* 0xD84860BA@l */
/* 8082D35C  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 8082D360  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 8082D364  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8082D368  2C 00 00 02 */	cmpwi r0, 2
/* 8082D36C  40 82 00 68 */	bne lbl_8082D3D4
/* 8082D370  38 80 00 09 */	li r4, 9
/* 8082D374  38 A0 00 00 */	li r5, 0
/* 8082D378  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082D37C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082D380  4B FF C0 29 */	bl setBck__8daE_ZH_cFiUcff
/* 8082D384  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007045A@ha */
/* 8082D388  38 03 04 5A */	addi r0, r3, 0x045A /* 0x0007045A@l */
/* 8082D38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082D390  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082D394  38 81 00 14 */	addi r4, r1, 0x14
/* 8082D398  38 A0 00 00 */	li r5, 0
/* 8082D39C  38 C0 FF FF */	li r6, -1
/* 8082D3A0  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082D3A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082D3A8  7D 89 03 A6 */	mtctr r12
/* 8082D3AC  4E 80 04 21 */	bctrl 
/* 8082D3B0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8082D3B4  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 8082D3B8  C0 1E 08 8C */	lfs f0, 0x88c(r30)
/* 8082D3BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8082D3C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8082D3C4  40 80 00 50 */	bge lbl_8082D414
/* 8082D3C8  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8082D3CC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8082D3D0  48 00 00 44 */	b lbl_8082D414
lbl_8082D3D4:
/* 8082D3D4  38 80 00 08 */	li r4, 8
/* 8082D3D8  38 A0 00 00 */	li r5, 0
/* 8082D3DC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082D3E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082D3E4  4B FF BF C5 */	bl setBck__8daE_ZH_cFiUcff
/* 8082D3E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007045E@ha */
/* 8082D3EC  38 03 04 5E */	addi r0, r3, 0x045E /* 0x0007045E@l */
/* 8082D3F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8082D3F4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082D3F8  38 81 00 10 */	addi r4, r1, 0x10
/* 8082D3FC  38 A0 00 00 */	li r5, 0
/* 8082D400  38 C0 FF FF */	li r6, -1
/* 8082D404  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082D408  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082D40C  7D 89 03 A6 */	mtctr r12
/* 8082D410  4E 80 04 21 */	bctrl 
lbl_8082D414:
/* 8082D414  38 00 00 08 */	li r0, 8
/* 8082D418  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082D41C  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082D420  38 03 00 01 */	addi r0, r3, 1
/* 8082D424  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082D428  48 00 05 3C */	b lbl_8082D964
lbl_8082D42C:
/* 8082D42C  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8082D430  2C 00 00 02 */	cmpwi r0, 2
/* 8082D434  40 82 00 DC */	bne lbl_8082D510
/* 8082D438  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 8082D43C  28 00 00 00 */	cmplwi r0, 0
/* 8082D440  41 82 00 68 */	beq lbl_8082D4A8
/* 8082D444  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082D448  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8082D44C  FC 00 00 1E */	fctiwz f0, f0
/* 8082D450  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8082D454  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8082D458  2C 00 00 01 */	cmpwi r0, 1
/* 8082D45C  40 82 00 4C */	bne lbl_8082D4A8
/* 8082D460  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082D464  28 04 00 FF */	cmplwi r4, 0xff
/* 8082D468  41 82 00 40 */	beq lbl_8082D4A8
/* 8082D46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082D470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082D474  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082D478  7C 05 07 74 */	extsb r5, r0
/* 8082D47C  4B 80 7E E4 */	b isSwitch__10dSv_info_cCFii
/* 8082D480  2C 03 00 00 */	cmpwi r3, 0
/* 8082D484  40 82 00 24 */	bne lbl_8082D4A8
/* 8082D488  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082D48C  4B 7E F7 14 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 8082D490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082D494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082D498  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082D49C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082D4A0  7C 05 07 74 */	extsb r5, r0
/* 8082D4A4  4B 80 7D 5C */	b onSwitch__10dSv_info_cFii
lbl_8082D4A8:
/* 8082D4A8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082D4AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8082D4B0  FC 00 00 1E */	fctiwz f0, f0
/* 8082D4B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8082D4B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8082D4BC  2C 00 00 01 */	cmpwi r0, 1
/* 8082D4C0  41 80 00 3C */	blt lbl_8082D4FC
/* 8082D4C4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8082D4C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8082D4CC  2C 00 00 06 */	cmpwi r0, 6
/* 8082D4D0  41 81 00 2C */	bgt lbl_8082D4FC
/* 8082D4D4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8082D4D8  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 8082D4DC  C0 1E 08 8C */	lfs f0, 0x88c(r30)
/* 8082D4E0  EC 21 00 2A */	fadds f1, f1, f0
/* 8082D4E4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8082D4E8  40 80 00 14 */	bge lbl_8082D4FC
/* 8082D4EC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8082D4F0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8082D4F4  C0 7F 01 74 */	lfs f3, 0x174(r31)
/* 8082D4F8  4B A4 25 44 */	b cLib_addCalc2__FPffff
lbl_8082D4FC:
/* 8082D4FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8082D500  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082D504  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 8082D508  4B A4 25 78 */	b cLib_addCalc0__FPfff
/* 8082D50C  48 00 00 50 */	b lbl_8082D55C
lbl_8082D510:
/* 8082D510  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082D514  28 04 00 FF */	cmplwi r4, 0xff
/* 8082D518  41 82 00 44 */	beq lbl_8082D55C
/* 8082D51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082D520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082D524  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082D528  7C 05 07 74 */	extsb r5, r0
/* 8082D52C  4B 80 7E 34 */	b isSwitch__10dSv_info_cCFii
/* 8082D530  2C 03 00 00 */	cmpwi r3, 0
/* 8082D534  40 82 00 28 */	bne lbl_8082D55C
/* 8082D538  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082D53C  28 03 00 00 */	cmplwi r3, 0
/* 8082D540  41 82 00 1C */	beq lbl_8082D55C
/* 8082D544  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 8082D548  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082D54C  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8082D550  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082D554  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8082D558  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8082D55C:
/* 8082D55C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082D560  38 80 00 01 */	li r4, 1
/* 8082D564  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082D568  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8082D56C  40 82 00 18 */	bne lbl_8082D584
/* 8082D570  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082D574  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082D578  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082D57C  41 82 00 08 */	beq lbl_8082D584
/* 8082D580  38 80 00 00 */	li r4, 0
lbl_8082D584:
/* 8082D584  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082D588  40 82 00 40 */	bne lbl_8082D5C8
/* 8082D58C  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082D590  2C 00 00 00 */	cmpwi r0, 0
/* 8082D594  41 82 00 1C */	beq lbl_8082D5B0
/* 8082D598  7F C3 F3 78 */	mr r3, r30
/* 8082D59C  38 80 00 00 */	li r4, 0
/* 8082D5A0  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 8082D5A4  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8082D5A8  4B FF C4 51 */	bl mColorSet__8daE_ZH_cFbff
/* 8082D5AC  48 00 03 B8 */	b lbl_8082D964
lbl_8082D5B0:
/* 8082D5B0  7F C3 F3 78 */	mr r3, r30
/* 8082D5B4  38 80 00 01 */	li r4, 1
/* 8082D5B8  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 8082D5BC  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8082D5C0  4B FF C4 39 */	bl mColorSet__8daE_ZH_cFbff
/* 8082D5C4  48 00 03 A0 */	b lbl_8082D964
lbl_8082D5C8:
/* 8082D5C8  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 8082D5CC  28 00 00 00 */	cmplwi r0, 0
/* 8082D5D0  41 82 00 B8 */	beq lbl_8082D688
/* 8082D5D4  80 7E 07 8C */	lwz r3, 0x78c(r30)
/* 8082D5D8  38 03 00 01 */	addi r0, r3, 1
/* 8082D5DC  90 1E 07 8C */	stw r0, 0x78c(r30)
/* 8082D5E0  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8082D5E4  2C 00 00 03 */	cmpwi r0, 3
/* 8082D5E8  40 80 00 68 */	bge lbl_8082D650
/* 8082D5EC  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082D5F0  28 04 00 FF */	cmplwi r4, 0xff
/* 8082D5F4  41 82 00 3C */	beq lbl_8082D630
/* 8082D5F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082D5FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082D600  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082D604  7C 05 07 74 */	extsb r5, r0
/* 8082D608  4B 80 7D 58 */	b isSwitch__10dSv_info_cCFii
/* 8082D60C  2C 03 00 00 */	cmpwi r3, 0
/* 8082D610  40 82 00 20 */	bne lbl_8082D630
/* 8082D614  38 00 00 00 */	li r0, 0
/* 8082D618  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082D61C  7F C3 F3 78 */	mr r3, r30
/* 8082D620  38 80 00 07 */	li r4, 7
/* 8082D624  38 A0 00 00 */	li r5, 0
/* 8082D628  4B FF BE 2D */	bl setActionMode__8daE_ZH_cFii
/* 8082D62C  48 00 03 38 */	b lbl_8082D964
lbl_8082D630:
/* 8082D630  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082D634  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8082D638  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8082D63C  7F C3 F3 78 */	mr r3, r30
/* 8082D640  38 80 00 04 */	li r4, 4
/* 8082D644  38 A0 00 00 */	li r5, 0
/* 8082D648  4B FF BE 0D */	bl setActionMode__8daE_ZH_cFii
/* 8082D64C  48 00 03 18 */	b lbl_8082D964
lbl_8082D650:
/* 8082D650  7F C3 F3 78 */	mr r3, r30
/* 8082D654  38 80 00 0C */	li r4, 0xc
/* 8082D658  38 A0 00 02 */	li r5, 2
/* 8082D65C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082D660  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082D664  4B FF BD 45 */	bl setBck__8daE_ZH_cFiUcff
/* 8082D668  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082D66C  38 63 F7 34 */	addi r3, r3, l_HIO@l
/* 8082D670  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8082D674  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082D678  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082D67C  38 03 00 01 */	addi r0, r3, 1
/* 8082D680  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082D684  48 00 02 E0 */	b lbl_8082D964
lbl_8082D688:
/* 8082D688  38 00 00 00 */	li r0, 0
/* 8082D68C  90 1E 07 8C */	stw r0, 0x78c(r30)
/* 8082D690  7F C3 F3 78 */	mr r3, r30
/* 8082D694  38 80 00 08 */	li r4, 8
/* 8082D698  38 A0 00 00 */	li r5, 0
/* 8082D69C  4B FF BD B9 */	bl setActionMode__8daE_ZH_cFii
/* 8082D6A0  48 00 02 C4 */	b lbl_8082D964
lbl_8082D6A4:
/* 8082D6A4  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082D6A8  2C 00 00 00 */	cmpwi r0, 0
/* 8082D6AC  41 82 00 E4 */	beq lbl_8082D790
/* 8082D6B0  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8082D6B4  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8082D6B8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8082D6BC  3C A0 43 30 */	lis r5, 0x4330
/* 8082D6C0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8082D6C4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8082D6C8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8082D6CC  3C 80 80 83 */	lis r4, l_HIO@ha
/* 8082D6D0  38 84 F7 34 */	addi r4, r4, l_HIO@l
/* 8082D6D4  A8 04 00 16 */	lha r0, 0x16(r4)
/* 8082D6D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8082D6DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8082D6E0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8082D6E4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8082D6E8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8082D6EC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8082D6F0  EC 21 00 24 */	fdivs f1, f1, f0
/* 8082D6F4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8082D6F8  40 81 00 18 */	ble lbl_8082D710
/* 8082D6FC  38 80 00 00 */	li r4, 0
/* 8082D700  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082D704  FC 40 08 90 */	fmr f2, f1
/* 8082D708  4B FF C2 F1 */	bl mColorSet__8daE_ZH_cFbff
/* 8082D70C  48 00 02 58 */	b lbl_8082D964
lbl_8082D710:
/* 8082D710  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8082D714  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8082D718  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8082D71C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8082D720  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082D724  40 82 00 30 */	bne lbl_8082D754
/* 8082D728  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007045C@ha */
/* 8082D72C  38 03 04 5C */	addi r0, r3, 0x045C /* 0x0007045C@l */
/* 8082D730  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082D734  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082D738  38 81 00 0C */	addi r4, r1, 0xc
/* 8082D73C  38 A0 00 00 */	li r5, 0
/* 8082D740  38 C0 FF FF */	li r6, -1
/* 8082D744  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082D748  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082D74C  7D 89 03 A6 */	mtctr r12
/* 8082D750  4E 80 04 21 */	bctrl 
lbl_8082D754:
/* 8082D754  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082D758  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8082D75C  40 82 00 1C */	bne lbl_8082D778
/* 8082D760  7F C3 F3 78 */	mr r3, r30
/* 8082D764  38 80 00 01 */	li r4, 1
/* 8082D768  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082D76C  FC 40 08 90 */	fmr f2, f1
/* 8082D770  4B FF C2 89 */	bl mColorSet__8daE_ZH_cFbff
/* 8082D774  48 00 01 F0 */	b lbl_8082D964
lbl_8082D778:
/* 8082D778  7F C3 F3 78 */	mr r3, r30
/* 8082D77C  38 80 00 00 */	li r4, 0
/* 8082D780  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082D784  FC 40 08 90 */	fmr f2, f1
/* 8082D788  4B FF C2 71 */	bl mColorSet__8daE_ZH_cFbff
/* 8082D78C  48 00 01 D8 */	b lbl_8082D964
lbl_8082D790:
/* 8082D790  38 80 00 01 */	li r4, 1
/* 8082D794  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082D798  FC 40 08 90 */	fmr f2, f1
/* 8082D79C  4B FF C2 5D */	bl mColorSet__8daE_ZH_cFbff
/* 8082D7A0  7F C3 F3 78 */	mr r3, r30
/* 8082D7A4  38 80 00 01 */	li r4, 1
/* 8082D7A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082D7AC  FC 40 08 90 */	fmr f2, f1
/* 8082D7B0  4B FF C2 49 */	bl mColorSet__8daE_ZH_cFbff
/* 8082D7B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082D7B8  41 82 01 AC */	beq lbl_8082D964
/* 8082D7BC  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082D7C0  38 03 00 01 */	addi r0, r3, 1
/* 8082D7C4  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082D7C8:
/* 8082D7C8  38 7E 07 64 */	addi r3, r30, 0x764
/* 8082D7CC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8082D7D0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D7D4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D7D8  4B A4 22 64 */	b cLib_addCalc2__FPffff
/* 8082D7DC  38 7E 07 68 */	addi r3, r30, 0x768
/* 8082D7E0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8082D7E4  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D7E8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D7EC  4B A4 22 50 */	b cLib_addCalc2__FPffff
/* 8082D7F0  38 7E 07 6C */	addi r3, r30, 0x76c
/* 8082D7F4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8082D7F8  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D7FC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D800  4B A4 22 3C */	b cLib_addCalc2__FPffff
/* 8082D804  C0 3E 07 68 */	lfs f1, 0x768(r30)
/* 8082D808  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8082D80C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082D810  41 81 01 54 */	bgt lbl_8082D964
/* 8082D814  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8082D818  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 8082D81C  D0 1E 07 68 */	stfs f0, 0x768(r30)
/* 8082D820  D0 1E 07 64 */	stfs f0, 0x764(r30)
/* 8082D824  7F C3 F3 78 */	mr r3, r30
/* 8082D828  38 80 00 10 */	li r4, 0x10
/* 8082D82C  38 A0 00 00 */	li r5, 0
/* 8082D830  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082D834  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082D838  4B FF BB 71 */	bl setBck__8daE_ZH_cFiUcff
/* 8082D83C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007045D@ha */
/* 8082D840  38 03 04 5D */	addi r0, r3, 0x045D /* 0x0007045D@l */
/* 8082D844  90 01 00 08 */	stw r0, 8(r1)
/* 8082D848  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082D84C  38 81 00 08 */	addi r4, r1, 8
/* 8082D850  38 A0 00 00 */	li r5, 0
/* 8082D854  38 C0 FF FF */	li r6, -1
/* 8082D858  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082D85C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082D860  7D 89 03 A6 */	mtctr r12
/* 8082D864  4E 80 04 21 */	bctrl 
/* 8082D868  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082D86C  38 03 00 01 */	addi r0, r3, 1
/* 8082D870  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082D874:
/* 8082D874  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082D878  38 80 00 01 */	li r4, 1
/* 8082D87C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082D880  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8082D884  40 82 00 18 */	bne lbl_8082D89C
/* 8082D888  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082D88C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082D890  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082D894  41 82 00 08 */	beq lbl_8082D89C
/* 8082D898  38 80 00 00 */	li r4, 0
lbl_8082D89C:
/* 8082D89C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082D8A0  40 82 00 40 */	bne lbl_8082D8E0
/* 8082D8A4  38 7E 07 64 */	addi r3, r30, 0x764
/* 8082D8A8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8082D8AC  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D8B0  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D8B4  4B A4 21 88 */	b cLib_addCalc2__FPffff
/* 8082D8B8  38 7E 07 68 */	addi r3, r30, 0x768
/* 8082D8BC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082D8C0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8082D8C4  4B A4 21 BC */	b cLib_addCalc0__FPfff
/* 8082D8C8  38 7E 07 6C */	addi r3, r30, 0x76c
/* 8082D8CC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8082D8D0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D8D4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D8D8  4B A4 21 64 */	b cLib_addCalc2__FPffff
/* 8082D8DC  48 00 00 88 */	b lbl_8082D964
lbl_8082D8E0:
/* 8082D8E0  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082D8E4  38 03 00 01 */	addi r0, r3, 1
/* 8082D8E8  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082D8EC:
/* 8082D8EC  38 7E 07 64 */	addi r3, r30, 0x764
/* 8082D8F0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8082D8F4  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D8F8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D8FC  4B A4 21 40 */	b cLib_addCalc2__FPffff
/* 8082D900  38 7E 07 68 */	addi r3, r30, 0x768
/* 8082D904  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082D908  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8082D90C  4B A4 21 74 */	b cLib_addCalc0__FPfff
/* 8082D910  38 7E 07 6C */	addi r3, r30, 0x76c
/* 8082D914  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8082D918  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8082D91C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D920  4B A4 21 1C */	b cLib_addCalc2__FPffff
/* 8082D924  C0 3E 07 68 */	lfs f1, 0x768(r30)
/* 8082D928  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8082D92C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082D930  41 81 00 34 */	bgt lbl_8082D964
/* 8082D934  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8082D938  D0 1E 07 64 */	stfs f0, 0x764(r30)
/* 8082D93C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082D940  D0 1E 07 68 */	stfs f0, 0x768(r30)
/* 8082D944  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082D948  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 8082D94C  38 00 00 00 */	li r0, 0
/* 8082D950  90 1E 07 8C */	stw r0, 0x78c(r30)
/* 8082D954  7F C3 F3 78 */	mr r3, r30
/* 8082D958  38 80 00 04 */	li r4, 4
/* 8082D95C  38 A0 00 00 */	li r5, 0
/* 8082D960  4B FF BA F5 */	bl setActionMode__8daE_ZH_cFii
lbl_8082D964:
/* 8082D964  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8082D968  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8082D96C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8082D970  7C 08 03 A6 */	mtlr r0
/* 8082D974  38 21 00 30 */	addi r1, r1, 0x30
/* 8082D978  4E 80 00 20 */	blr 
