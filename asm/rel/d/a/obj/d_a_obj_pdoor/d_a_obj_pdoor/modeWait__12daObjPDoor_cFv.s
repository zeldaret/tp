lbl_80CAA354:
/* 80CAA354  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CAA358  7C 08 02 A6 */	mflr r0
/* 80CAA35C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CAA360  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAA364  4B 6B 7E 75 */	bl _savegpr_28
/* 80CAA368  7C 7C 1B 78 */	mr r28, r3
/* 80CAA36C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA370  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA374  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 80CAA378  3B A0 00 01 */	li r29, 1
/* 80CAA37C  38 A0 FF FF */	li r5, -1
/* 80CAA380  88 1C 05 B5 */	lbz r0, 0x5b5(r28)
/* 80CAA384  28 00 00 00 */	cmplwi r0, 0
/* 80CAA388  41 82 01 94 */	beq lbl_80CAA51C
/* 80CAA38C  38 C0 00 00 */	li r6, 0
/* 80CAA390  38 00 00 02 */	li r0, 2
/* 80CAA394  7C 09 03 A6 */	mtctr r0
lbl_80CAA398:
/* 80CAA398  80 1C 05 C0 */	lwz r0, 0x5c0(r28)
/* 80CAA39C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80CAA3A0  38 00 00 23 */	li r0, 0x23
/* 80CAA3A4  38 86 05 B6 */	addi r4, r6, 0x5b6
/* 80CAA3A8  7C 7C 20 AE */	lbzx r3, r28, r4
/* 80CAA3AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CAA3B0  7C 03 00 40 */	cmplw r3, r0
/* 80CAA3B4  40 82 00 08 */	bne lbl_80CAA3BC
/* 80CAA3B8  90 DC 05 B0 */	stw r6, 0x5b0(r28)
lbl_80CAA3BC:
/* 80CAA3BC  7C 1C 20 AE */	lbzx r0, r28, r4
/* 80CAA3C0  28 00 00 00 */	cmplwi r0, 0
/* 80CAA3C4  41 82 00 08 */	beq lbl_80CAA3CC
/* 80CAA3C8  7C C5 33 78 */	mr r5, r6
lbl_80CAA3CC:
/* 80CAA3CC  38 C6 00 01 */	addi r6, r6, 1
/* 80CAA3D0  42 00 FF C8 */	bdnz lbl_80CAA398
/* 80CAA3D4  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 80CAA3D8  2C 03 00 00 */	cmpwi r3, 0
/* 80CAA3DC  40 82 00 10 */	bne lbl_80CAA3EC
/* 80CAA3E0  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA3E4  2C 00 00 01 */	cmpwi r0, 1
/* 80CAA3E8  41 82 00 1C */	beq lbl_80CAA404
lbl_80CAA3EC:
/* 80CAA3EC  2C 03 00 01 */	cmpwi r3, 1
/* 80CAA3F0  40 82 00 20 */	bne lbl_80CAA410
/* 80CAA3F4  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA3F8  7C 00 07 74 */	extsb r0, r0
/* 80CAA3FC  2C 00 FF FF */	cmpwi r0, -1
/* 80CAA400  40 82 00 10 */	bne lbl_80CAA410
lbl_80CAA404:
/* 80CAA404  38 00 FF FF */	li r0, -1
/* 80CAA408  90 1C 05 B0 */	stw r0, 0x5b0(r28)
/* 80CAA40C  48 00 00 08 */	b lbl_80CAA414
lbl_80CAA410:
/* 80CAA410  3B A0 00 00 */	li r29, 0
lbl_80CAA414:
/* 80CAA414  38 60 00 01 */	li r3, 1
/* 80CAA418  2C 05 00 00 */	cmpwi r5, 0
/* 80CAA41C  40 82 00 10 */	bne lbl_80CAA42C
/* 80CAA420  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA424  2C 00 00 01 */	cmpwi r0, 1
/* 80CAA428  41 82 00 1C */	beq lbl_80CAA444
lbl_80CAA42C:
/* 80CAA42C  2C 05 00 01 */	cmpwi r5, 1
/* 80CAA430  40 82 00 18 */	bne lbl_80CAA448
/* 80CAA434  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA438  7C 00 07 74 */	extsb r0, r0
/* 80CAA43C  2C 00 FF FF */	cmpwi r0, -1
/* 80CAA440  40 82 00 08 */	bne lbl_80CAA448
lbl_80CAA444:
/* 80CAA444  38 60 00 00 */	li r3, 0
lbl_80CAA448:
/* 80CAA448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CAA44C  41 82 00 A8 */	beq lbl_80CAA4F4
/* 80CAA450  2C 05 00 00 */	cmpwi r5, 0
/* 80CAA454  40 82 00 1C */	bne lbl_80CAA470
/* 80CAA458  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80CAA45C  38 80 01 F4 */	li r4, 0x1f4
/* 80CAA460  38 A0 00 3C */	li r5, 0x3c
/* 80CAA464  38 C0 00 05 */	li r6, 5
/* 80CAA468  4B 5C 61 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 80CAA46C  48 00 00 18 */	b lbl_80CAA484
lbl_80CAA470:
/* 80CAA470  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80CAA474  38 80 FE 0C */	li r4, -500
/* 80CAA478  38 A0 00 3C */	li r5, 0x3c
/* 80CAA47C  38 C0 00 05 */	li r6, 5
/* 80CAA480  4B 5C 61 89 */	bl cLib_addCalcAngleS2__FPssss
lbl_80CAA484:
/* 80CAA484  88 7C 05 B4 */	lbz r3, 0x5b4(r28)
/* 80CAA488  38 03 00 01 */	addi r0, r3, 1
/* 80CAA48C  98 1C 05 B4 */	stb r0, 0x5b4(r28)
/* 80CAA490  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 80CAA494  1C 00 03 E0 */	mulli r0, r0, 0x3e0
/* 80CAA498  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CAA49C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CAA4A0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CAA4A4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CAA4A8  FC 00 02 10 */	fabs f0, f0
/* 80CAA4AC  FC 60 00 18 */	frsp f3, f0
/* 80CAA4B0  3C 60 80 CB */	lis r3, lit_3942@ha /* 0x80CAAB24@ha */
/* 80CAA4B4  C0 43 AB 24 */	lfs f2, lit_3942@l(r3)  /* 0x80CAAB24@l */
/* 80CAA4B8  A8 1C 05 BC */	lha r0, 0x5bc(r28)
/* 80CAA4BC  3C 60 80 CB */	lis r3, lit_3944@ha /* 0x80CAAB28@ha */
/* 80CAA4C0  C8 23 AB 28 */	lfd f1, lit_3944@l(r3)  /* 0x80CAAB28@l */
/* 80CAA4C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAA4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAA4CC  3C 00 43 30 */	lis r0, 0x4330
/* 80CAA4D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CAA4D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CAA4D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CAA4DC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CAA4E0  EC 02 00 2A */	fadds f0, f2, f0
/* 80CAA4E4  FC 00 00 1E */	fctiwz f0, f0
/* 80CAA4E8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CAA4EC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CAA4F0  B0 1C 05 BA */	sth r0, 0x5ba(r28)
lbl_80CAA4F4:
/* 80CAA4F4  80 1C 05 B0 */	lwz r0, 0x5b0(r28)
/* 80CAA4F8  2C 00 FF FF */	cmpwi r0, -1
/* 80CAA4FC  41 82 00 44 */	beq lbl_80CAA540
/* 80CAA500  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80CAA504  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80CAA508  60 00 08 00 */	ori r0, r0, 0x800
/* 80CAA50C  90 03 05 70 */	stw r0, 0x570(r3)
/* 80CAA510  7F 83 E3 78 */	mr r3, r28
/* 80CAA514  48 00 01 85 */	bl init_modeRotate__12daObjPDoor_cFv
/* 80CAA518  48 00 00 28 */	b lbl_80CAA540
lbl_80CAA51C:
/* 80CAA51C  38 00 00 00 */	li r0, 0
/* 80CAA520  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 80CAA524  98 1C 05 B4 */	stb r0, 0x5b4(r28)
/* 80CAA528  38 7C 05 BA */	addi r3, r28, 0x5ba
/* 80CAA52C  38 80 00 00 */	li r4, 0
/* 80CAA530  38 A0 00 04 */	li r5, 4
/* 80CAA534  38 C0 00 32 */	li r6, 0x32
/* 80CAA538  38 E0 00 05 */	li r7, 5
/* 80CAA53C  4B 5C 60 05 */	bl cLib_addCalcAngleS__FPsssss
lbl_80CAA540:
/* 80CAA540  A8 BC 05 BA */	lha r5, 0x5ba(r28)
/* 80CAA544  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80CAA548  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA54C  7C 00 07 74 */	extsb r0, r0
/* 80CAA550  54 03 70 22 */	slwi r3, r0, 0xe
/* 80CAA554  38 00 00 03 */	li r0, 3
/* 80CAA558  7C 03 03 D6 */	divw r0, r3, r0
/* 80CAA55C  7C 00 2A 14 */	add r0, r0, r5
/* 80CAA560  7C 04 02 14 */	add r0, r4, r0
/* 80CAA564  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80CAA568  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80CAA56C  41 82 00 2C */	beq lbl_80CAA598
/* 80CAA570  38 80 00 00 */	li r4, 0
/* 80CAA574  38 60 00 00 */	li r3, 0
/* 80CAA578  38 00 00 02 */	li r0, 2
/* 80CAA57C  7C 09 03 A6 */	mtctr r0
lbl_80CAA580:
/* 80CAA580  38 04 05 B6 */	addi r0, r4, 0x5b6
/* 80CAA584  7C 7C 01 AE */	stbx r3, r28, r0
/* 80CAA588  38 84 00 01 */	addi r4, r4, 1
/* 80CAA58C  42 00 FF F4 */	bdnz lbl_80CAA580
/* 80CAA590  38 00 FF FF */	li r0, -1
/* 80CAA594  90 1C 05 B0 */	stw r0, 0x5b0(r28)
lbl_80CAA598:
/* 80CAA598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA59C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA5A0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CAA5A4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CAA5A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CAA5AC  41 82 00 C8 */	beq lbl_80CAA674
/* 80CAA5B0  38 61 00 08 */	addi r3, r1, 8
/* 80CAA5B4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CAA5B8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80CAA5BC  4B 5B C5 79 */	bl __mi__4cXyzCFRC3Vec
/* 80CAA5C0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CAA5C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CAA5C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CAA5CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CAA5D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CAA5D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CAA5D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAA5DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAA5E0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80CAA5E4  7C 00 00 D0 */	neg r0, r0
/* 80CAA5E8  7C 04 07 34 */	extsh r4, r0
/* 80CAA5EC  4B 36 1D F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CAA5F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAA5F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAA5F8  38 81 00 14 */	addi r4, r1, 0x14
/* 80CAA5FC  7C 85 23 78 */	mr r5, r4
/* 80CAA600  4B 69 C7 6D */	bl PSMTXMultVec
/* 80CAA604  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80CAA608  3C 60 80 CB */	lis r3, lit_3695@ha /* 0x80CAAB20@ha */
/* 80CAA60C  C0 03 AB 20 */	lfs f0, lit_3695@l(r3)  /* 0x80CAAB20@l */
/* 80CAA610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAA614  40 81 00 30 */	ble lbl_80CAA644
/* 80CAA618  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA61C  2C 00 00 01 */	cmpwi r0, 1
/* 80CAA620  40 82 00 14 */	bne lbl_80CAA634
/* 80CAA624  38 00 00 00 */	li r0, 0
/* 80CAA628  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80CAA62C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80CAA630  48 00 00 50 */	b lbl_80CAA680
lbl_80CAA634:
/* 80CAA634  38 00 00 01 */	li r0, 1
/* 80CAA638  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80CAA63C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80CAA640  48 00 00 40 */	b lbl_80CAA680
lbl_80CAA644:
/* 80CAA644  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 80CAA648  7C 00 07 74 */	extsb r0, r0
/* 80CAA64C  2C 00 FF FF */	cmpwi r0, -1
/* 80CAA650  40 82 00 14 */	bne lbl_80CAA664
/* 80CAA654  38 00 00 00 */	li r0, 0
/* 80CAA658  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80CAA65C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80CAA660  48 00 00 20 */	b lbl_80CAA680
lbl_80CAA664:
/* 80CAA664  38 00 00 01 */	li r0, 1
/* 80CAA668  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80CAA66C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80CAA670  48 00 00 10 */	b lbl_80CAA680
lbl_80CAA674:
/* 80CAA674  38 00 00 01 */	li r0, 1
/* 80CAA678  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80CAA67C  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80CAA680:
/* 80CAA680  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAA684  4B 6B 7B A1 */	bl _restgpr_28
/* 80CAA688  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CAA68C  7C 08 03 A6 */	mtlr r0
/* 80CAA690  38 21 00 40 */	addi r1, r1, 0x40
/* 80CAA694  4E 80 00 20 */	blr 
