lbl_804D82E4:
/* 804D82E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D82E8  7C 08 02 A6 */	mflr r0
/* 804D82EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D82F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D82F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804D82F8  7C 7E 1B 78 */	mr r30, r3
/* 804D82FC  3C 80 80 4E */	lis r4, lit_3942@ha
/* 804D8300  3B E4 9E 64 */	addi r31, r4, lit_3942@l
/* 804D8304  A8 03 06 1E */	lha r0, 0x61e(r3)
/* 804D8308  2C 00 00 01 */	cmpwi r0, 1
/* 804D830C  41 82 00 74 */	beq lbl_804D8380
/* 804D8310  40 80 00 A8 */	bge lbl_804D83B8
/* 804D8314  2C 00 00 00 */	cmpwi r0, 0
/* 804D8318  40 80 00 08 */	bge lbl_804D8320
/* 804D831C  48 00 00 9C */	b lbl_804D83B8
lbl_804D8320:
/* 804D8320  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 804D8324  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804D8328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D832C  4C 40 13 82 */	cror 2, 0, 2
/* 804D8330  40 82 00 88 */	bne lbl_804D83B8
/* 804D8334  38 00 00 01 */	li r0, 1
/* 804D8338  B0 1E 06 1E */	sth r0, 0x61e(r30)
/* 804D833C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 804D8340  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 804D8344  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 804D8348  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D834C  40 81 00 10 */	ble lbl_804D835C
/* 804D8350  38 00 00 07 */	li r0, 7
/* 804D8354  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 804D8358  48 00 00 0C */	b lbl_804D8364
lbl_804D835C:
/* 804D835C  38 00 00 05 */	li r0, 5
/* 804D8360  B0 1E 06 28 */	sth r0, 0x628(r30)
lbl_804D8364:
/* 804D8364  7F C3 F3 78 */	mr r3, r30
/* 804D8368  38 80 00 05 */	li r4, 5
/* 804D836C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D8370  38 A0 00 02 */	li r5, 2
/* 804D8374  FC 40 08 90 */	fmr f2, f1
/* 804D8378  4B FF E9 2D */	bl anm_init__FP8bd_classifUcf
/* 804D837C  48 00 00 3C */	b lbl_804D83B8
lbl_804D8380:
/* 804D8380  A8 1E 06 28 */	lha r0, 0x628(r30)
/* 804D8384  2C 00 00 00 */	cmpwi r0, 0
/* 804D8388  40 82 00 30 */	bne lbl_804D83B8
/* 804D838C  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 804D8390  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D8394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D8398  40 80 00 20 */	bge lbl_804D83B8
/* 804D839C  38 80 00 07 */	li r4, 7
/* 804D83A0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D83A4  38 A0 00 00 */	li r5, 0
/* 804D83A8  FC 40 08 90 */	fmr f2, f1
/* 804D83AC  4B FF E8 F9 */	bl anm_init__FP8bd_classifUcf
/* 804D83B0  38 00 00 00 */	li r0, 0
/* 804D83B4  B0 1E 06 1E */	sth r0, 0x61e(r30)
lbl_804D83B8:
/* 804D83B8  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 804D83BC  2C 00 00 01 */	cmpwi r0, 1
/* 804D83C0  41 82 00 50 */	beq lbl_804D8410
/* 804D83C4  40 80 00 4C */	bge lbl_804D8410
/* 804D83C8  2C 00 00 00 */	cmpwi r0, 0
/* 804D83CC  40 80 00 08 */	bge lbl_804D83D4
/* 804D83D0  48 00 00 40 */	b lbl_804D8410
lbl_804D83D4:
/* 804D83D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804D83D8  4B D8 F5 B4 */	b cM_rndFX__Ff
/* 804D83DC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804D83E0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D83E4  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 804D83E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804D83EC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804D83F0  EC 01 00 2A */	fadds f0, f1, f0
/* 804D83F4  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 804D83F8  4B D8 F5 94 */	b cM_rndFX__Ff
/* 804D83FC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804D8400  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8404  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 804D8408  38 00 00 01 */	li r0, 1
/* 804D840C  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_804D8410:
/* 804D8410  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D8414  38 63 A3 6C */	addi r3, r3, l_HIO@l
/* 804D8418  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804D841C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804D8420  38 61 00 0C */	addi r3, r1, 0xc
/* 804D8424  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 804D8428  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804D842C  4B D8 E7 08 */	b __mi__4cXyzCFRC3Vec
/* 804D8430  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D8434  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D8438  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D843C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D8440  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D8444  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804D8448  38 61 00 18 */	addi r3, r1, 0x18
/* 804D844C  4B E6 EC EC */	b PSVECSquareMag
/* 804D8450  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D8454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D8458  40 81 00 58 */	ble lbl_804D84B0
/* 804D845C  FC 00 08 34 */	frsqrte f0, f1
/* 804D8460  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 804D8464  FC 44 00 32 */	fmul f2, f4, f0
/* 804D8468  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 804D846C  FC 00 00 32 */	fmul f0, f0, f0
/* 804D8470  FC 01 00 32 */	fmul f0, f1, f0
/* 804D8474  FC 03 00 28 */	fsub f0, f3, f0
/* 804D8478  FC 02 00 32 */	fmul f0, f2, f0
/* 804D847C  FC 44 00 32 */	fmul f2, f4, f0
/* 804D8480  FC 00 00 32 */	fmul f0, f0, f0
/* 804D8484  FC 01 00 32 */	fmul f0, f1, f0
/* 804D8488  FC 03 00 28 */	fsub f0, f3, f0
/* 804D848C  FC 02 00 32 */	fmul f0, f2, f0
/* 804D8490  FC 44 00 32 */	fmul f2, f4, f0
/* 804D8494  FC 00 00 32 */	fmul f0, f0, f0
/* 804D8498  FC 01 00 32 */	fmul f0, f1, f0
/* 804D849C  FC 03 00 28 */	fsub f0, f3, f0
/* 804D84A0  FC 02 00 32 */	fmul f0, f2, f0
/* 804D84A4  FC 21 00 32 */	fmul f1, f1, f0
/* 804D84A8  FC 20 08 18 */	frsp f1, f1
/* 804D84AC  48 00 00 88 */	b lbl_804D8534
lbl_804D84B0:
/* 804D84B0  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 804D84B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D84B8  40 80 00 10 */	bge lbl_804D84C8
/* 804D84BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D84C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804D84C4  48 00 00 70 */	b lbl_804D8534
lbl_804D84C8:
/* 804D84C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D84CC  80 81 00 08 */	lwz r4, 8(r1)
/* 804D84D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D84D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D84D8  7C 03 00 00 */	cmpw r3, r0
/* 804D84DC  41 82 00 14 */	beq lbl_804D84F0
/* 804D84E0  40 80 00 40 */	bge lbl_804D8520
/* 804D84E4  2C 03 00 00 */	cmpwi r3, 0
/* 804D84E8  41 82 00 20 */	beq lbl_804D8508
/* 804D84EC  48 00 00 34 */	b lbl_804D8520
lbl_804D84F0:
/* 804D84F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D84F4  41 82 00 0C */	beq lbl_804D8500
/* 804D84F8  38 00 00 01 */	li r0, 1
/* 804D84FC  48 00 00 28 */	b lbl_804D8524
lbl_804D8500:
/* 804D8500  38 00 00 02 */	li r0, 2
/* 804D8504  48 00 00 20 */	b lbl_804D8524
lbl_804D8508:
/* 804D8508  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D850C  41 82 00 0C */	beq lbl_804D8518
/* 804D8510  38 00 00 05 */	li r0, 5
/* 804D8514  48 00 00 10 */	b lbl_804D8524
lbl_804D8518:
/* 804D8518  38 00 00 03 */	li r0, 3
/* 804D851C  48 00 00 08 */	b lbl_804D8524
lbl_804D8520:
/* 804D8520  38 00 00 04 */	li r0, 4
lbl_804D8524:
/* 804D8524  2C 00 00 01 */	cmpwi r0, 1
/* 804D8528  40 82 00 0C */	bne lbl_804D8534
/* 804D852C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D8530  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804D8534:
/* 804D8534  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804D8538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D853C  40 80 00 8C */	bge lbl_804D85C8
/* 804D8540  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804D8544  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 804D8548  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804D854C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 804D8550  88 1E 06 45 */	lbz r0, 0x645(r30)
/* 804D8554  7C 00 07 75 */	extsb. r0, r0
/* 804D8558  41 82 00 30 */	beq lbl_804D8588
/* 804D855C  38 00 00 05 */	li r0, 5
/* 804D8560  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D8564  38 00 00 00 */	li r0, 0
/* 804D8568  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D856C  7F C3 F3 78 */	mr r3, r30
/* 804D8570  38 80 00 05 */	li r4, 5
/* 804D8574  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D8578  38 A0 00 02 */	li r5, 2
/* 804D857C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D8580  4B FF E7 25 */	bl anm_init__FP8bd_classifUcf
/* 804D8584  48 00 00 44 */	b lbl_804D85C8
lbl_804D8588:
/* 804D8588  38 00 00 04 */	li r0, 4
/* 804D858C  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D8590  38 00 00 00 */	li r0, 0
/* 804D8594  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D8598  7F C3 F3 78 */	mr r3, r30
/* 804D859C  38 80 00 06 */	li r4, 6
/* 804D85A0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D85A4  38 A0 00 00 */	li r5, 0
/* 804D85A8  FC 40 08 90 */	fmr f2, f1
/* 804D85AC  4B FF E6 F9 */	bl anm_init__FP8bd_classifUcf
/* 804D85B0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 804D85B4  4B D8 F3 A0 */	b cM_rndF__Ff
/* 804D85B8  FC 00 08 1E */	fctiwz f0, f1
/* 804D85BC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804D85C0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D85C4  B0 1E 06 4C */	sth r0, 0x64c(r30)
lbl_804D85C8:
/* 804D85C8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804D85CC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804D85D0  4B D8 F0 A4 */	b cM_atan2s__Fff
/* 804D85D4  7C 64 1B 78 */	mr r4, r3
/* 804D85D8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804D85DC  38 A0 00 04 */	li r5, 4
/* 804D85E0  38 C0 03 E8 */	li r6, 0x3e8
/* 804D85E4  4B D9 80 24 */	b cLib_addCalcAngleS2__FPssss
/* 804D85E8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804D85EC  EC 20 00 32 */	fmuls f1, f0, f0
/* 804D85F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804D85F4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804D85F8  EC 41 00 2A */	fadds f2, f1, f0
/* 804D85FC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D8600  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804D8604  40 81 00 0C */	ble lbl_804D8610
/* 804D8608  FC 00 10 34 */	frsqrte f0, f2
/* 804D860C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804D8610:
/* 804D8610  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804D8614  4B D8 F0 60 */	b cM_atan2s__Fff
/* 804D8618  7C 03 00 D0 */	neg r0, r3
/* 804D861C  7C 04 07 34 */	extsh r4, r0
/* 804D8620  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 804D8624  38 A0 00 04 */	li r5, 4
/* 804D8628  38 C0 03 E8 */	li r6, 0x3e8
/* 804D862C  4B D9 7F DC */	b cLib_addCalcAngleS2__FPssss
/* 804D8630  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D8634  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804D8638  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D863C  7C 08 03 A6 */	mtlr r0
/* 804D8640  38 21 00 40 */	addi r1, r1, 0x40
/* 804D8644  4E 80 00 20 */	blr 
