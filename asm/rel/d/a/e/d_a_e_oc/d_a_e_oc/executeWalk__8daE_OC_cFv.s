lbl_8072F1A8:
/* 8072F1A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072F1AC  7C 08 02 A6 */	mflr r0
/* 8072F1B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072F1B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072F1B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8072F1BC  7C 7E 1B 78 */	mr r30, r3
/* 8072F1C0  3C 80 80 73 */	lis r4, lit_3911@ha
/* 8072F1C4  3B E4 5B 28 */	addi r31, r4, lit_3911@l
/* 8072F1C8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8072F1CC  B0 03 06 D4 */	sth r0, 0x6d4(r3)
/* 8072F1D0  38 00 00 00 */	li r0, 0
/* 8072F1D4  98 03 06 DE */	stb r0, 0x6de(r3)
/* 8072F1D8  88 03 06 E3 */	lbz r0, 0x6e3(r3)
/* 8072F1DC  28 00 00 00 */	cmplwi r0, 0
/* 8072F1E0  40 82 00 44 */	bne lbl_8072F224
/* 8072F1E4  4B FF DB C5 */	bl setWatchMode__8daE_OC_cFv
/* 8072F1E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F1EC  40 82 03 DC */	bne lbl_8072F5C8
/* 8072F1F0  7F C3 F3 78 */	mr r3, r30
/* 8072F1F4  4B FF DF E9 */	bl searchSound__8daE_OC_cFv
/* 8072F1F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F1FC  40 82 03 CC */	bne lbl_8072F5C8
/* 8072F200  7F C3 F3 78 */	mr r3, r30
/* 8072F204  4B FF DD 8D */	bl searchPlayer2__8daE_OC_cFv
/* 8072F208  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F20C  41 82 00 18 */	beq lbl_8072F224
/* 8072F210  7F C3 F3 78 */	mr r3, r30
/* 8072F214  38 80 00 03 */	li r4, 3
/* 8072F218  38 A0 00 01 */	li r5, 1
/* 8072F21C  4B FF EA A1 */	bl setActionMode__8daE_OC_cFii
/* 8072F220  48 00 03 A8 */	b lbl_8072F5C8
lbl_8072F224:
/* 8072F224  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 8072F228  2C 00 00 01 */	cmpwi r0, 1
/* 8072F22C  41 82 01 AC */	beq lbl_8072F3D8
/* 8072F230  40 80 03 98 */	bge lbl_8072F5C8
/* 8072F234  2C 00 00 00 */	cmpwi r0, 0
/* 8072F238  40 80 00 08 */	bge lbl_8072F240
/* 8072F23C  48 00 03 8C */	b lbl_8072F5C8
lbl_8072F240:
/* 8072F240  7F C3 F3 78 */	mr r3, r30
/* 8072F244  38 80 00 1D */	li r4, 0x1d
/* 8072F248  38 A0 00 02 */	li r5, 2
/* 8072F24C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072F250  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072F254  4B FF F0 21 */	bl setBck__8daE_OC_cFiUcff
/* 8072F258  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8072F25C  4B B3 87 30 */	b cM_rndFX__Ff
/* 8072F260  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8072F264  EC 00 08 2A */	fadds f0, f0, f1
/* 8072F268  FC 00 00 1E */	fctiwz f0, f0
/* 8072F26C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8072F270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072F274  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F278  38 00 00 01 */	li r0, 1
/* 8072F27C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F280  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 8072F284  2C 00 00 00 */	cmpwi r0, 0
/* 8072F288  40 82 01 34 */	bne lbl_8072F3BC
/* 8072F28C  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 8072F290  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072F294  4B C1 81 08 */	b PSVECSquareDistance
/* 8072F298  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072F29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F2A0  40 81 00 58 */	ble lbl_8072F2F8
/* 8072F2A4  FC 00 08 34 */	frsqrte f0, f1
/* 8072F2A8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072F2AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F2B0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072F2B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F2B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F2BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F2C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F2C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F2C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F2CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F2D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F2D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F2D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F2DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F2E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F2E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F2E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F2EC  FC 21 00 32 */	fmul f1, f1, f0
/* 8072F2F0  FC 20 08 18 */	frsp f1, f1
/* 8072F2F4  48 00 00 88 */	b lbl_8072F37C
lbl_8072F2F8:
/* 8072F2F8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072F2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F300  40 80 00 10 */	bge lbl_8072F310
/* 8072F304  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072F308  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072F30C  48 00 00 70 */	b lbl_8072F37C
lbl_8072F310:
/* 8072F310  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8072F314  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8072F318  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072F31C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072F320  7C 03 00 00 */	cmpw r3, r0
/* 8072F324  41 82 00 14 */	beq lbl_8072F338
/* 8072F328  40 80 00 40 */	bge lbl_8072F368
/* 8072F32C  2C 03 00 00 */	cmpwi r3, 0
/* 8072F330  41 82 00 20 */	beq lbl_8072F350
/* 8072F334  48 00 00 34 */	b lbl_8072F368
lbl_8072F338:
/* 8072F338  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072F33C  41 82 00 0C */	beq lbl_8072F348
/* 8072F340  38 00 00 01 */	li r0, 1
/* 8072F344  48 00 00 28 */	b lbl_8072F36C
lbl_8072F348:
/* 8072F348  38 00 00 02 */	li r0, 2
/* 8072F34C  48 00 00 20 */	b lbl_8072F36C
lbl_8072F350:
/* 8072F350  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072F354  41 82 00 0C */	beq lbl_8072F360
/* 8072F358  38 00 00 05 */	li r0, 5
/* 8072F35C  48 00 00 10 */	b lbl_8072F36C
lbl_8072F360:
/* 8072F360  38 00 00 03 */	li r0, 3
/* 8072F364  48 00 00 08 */	b lbl_8072F36C
lbl_8072F368:
/* 8072F368  38 00 00 04 */	li r0, 4
lbl_8072F36C:
/* 8072F36C  2C 00 00 01 */	cmpwi r0, 1
/* 8072F370  40 82 00 0C */	bne lbl_8072F37C
/* 8072F374  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072F378  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072F37C:
/* 8072F37C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8072F380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F384  4C 41 13 82 */	cror 2, 1, 2
/* 8072F388  40 82 00 18 */	bne lbl_8072F3A0
/* 8072F38C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8072F390  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8072F394  4B B4 18 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8072F398  B0 7E 06 BC */	sth r3, 0x6bc(r30)
/* 8072F39C  48 00 00 30 */	b lbl_8072F3CC
lbl_8072F3A0:
/* 8072F3A0  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8072F3A4  4B B3 85 E8 */	b cM_rndFX__Ff
/* 8072F3A8  FC 00 08 1E */	fctiwz f0, f1
/* 8072F3AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8072F3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072F3B4  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 8072F3B8  48 00 00 14 */	b lbl_8072F3CC
lbl_8072F3BC:
/* 8072F3BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8072F3C0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8072F3C4  4B B4 18 40 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8072F3C8  B0 7E 06 BC */	sth r3, 0x6bc(r30)
lbl_8072F3CC:
/* 8072F3CC  38 00 00 00 */	li r0, 0
/* 8072F3D0  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 8072F3D4  48 00 01 F4 */	b lbl_8072F5C8
lbl_8072F3D8:
/* 8072F3D8  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072F3DC  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8072F3E0  40 82 00 7C */	bne lbl_8072F45C
/* 8072F3E4  7F C3 F3 78 */	mr r3, r30
/* 8072F3E8  4B FF DF 7D */	bl checkBeforeBg__8daE_OC_cFv
/* 8072F3EC  2C 03 00 02 */	cmpwi r3, 2
/* 8072F3F0  41 82 00 30 */	beq lbl_8072F420
/* 8072F3F4  40 80 00 10 */	bge lbl_8072F404
/* 8072F3F8  2C 03 00 01 */	cmpwi r3, 1
/* 8072F3FC  40 80 00 14 */	bge lbl_8072F410
/* 8072F400  48 00 00 4C */	b lbl_8072F44C
lbl_8072F404:
/* 8072F404  2C 03 00 04 */	cmpwi r3, 4
/* 8072F408  40 80 00 44 */	bge lbl_8072F44C
/* 8072F40C  48 00 00 2C */	b lbl_8072F438
lbl_8072F410:
/* 8072F410  38 00 00 00 */	li r0, 0
/* 8072F414  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F418  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 8072F41C  48 00 00 30 */	b lbl_8072F44C
lbl_8072F420:
/* 8072F420  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 8072F424  2C 00 00 00 */	cmpwi r0, 0
/* 8072F428  40 82 00 24 */	bne lbl_8072F44C
/* 8072F42C  38 00 10 00 */	li r0, 0x1000
/* 8072F430  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 8072F434  48 00 00 18 */	b lbl_8072F44C
lbl_8072F438:
/* 8072F438  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 8072F43C  2C 00 00 00 */	cmpwi r0, 0
/* 8072F440  40 82 00 0C */	bne lbl_8072F44C
/* 8072F444  38 00 F0 00 */	li r0, -4096
/* 8072F448  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_8072F44C:
/* 8072F44C  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 8072F450  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 8072F454  7C 03 02 14 */	add r0, r3, r0
/* 8072F458  B0 1E 06 BC */	sth r0, 0x6bc(r30)
lbl_8072F45C:
/* 8072F45C  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072F460  2C 00 00 00 */	cmpwi r0, 0
/* 8072F464  40 82 00 18 */	bne lbl_8072F47C
/* 8072F468  7F C3 F3 78 */	mr r3, r30
/* 8072F46C  38 80 00 00 */	li r4, 0
/* 8072F470  38 A0 00 00 */	li r5, 0
/* 8072F474  4B FF E8 49 */	bl setActionMode__8daE_OC_cFii
/* 8072F478  48 00 01 50 */	b lbl_8072F5C8
lbl_8072F47C:
/* 8072F47C  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 8072F480  2C 00 00 01 */	cmpwi r0, 1
/* 8072F484  40 82 01 14 */	bne lbl_8072F598
/* 8072F488  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 8072F48C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072F490  4B C1 7F 0C */	b PSVECSquareDistance
/* 8072F494  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072F498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F49C  40 81 00 58 */	ble lbl_8072F4F4
/* 8072F4A0  FC 00 08 34 */	frsqrte f0, f1
/* 8072F4A4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072F4A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F4AC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072F4B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F4B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F4B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F4BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F4C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F4C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F4C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F4CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F4D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F4D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F4D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F4DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F4E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F4E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F4E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8072F4EC  FC 20 08 18 */	frsp f1, f1
/* 8072F4F0  48 00 00 88 */	b lbl_8072F578
lbl_8072F4F4:
/* 8072F4F4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072F4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F4FC  40 80 00 10 */	bge lbl_8072F50C
/* 8072F500  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072F504  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072F508  48 00 00 70 */	b lbl_8072F578
lbl_8072F50C:
/* 8072F50C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8072F510  80 81 00 08 */	lwz r4, 8(r1)
/* 8072F514  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072F518  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072F51C  7C 03 00 00 */	cmpw r3, r0
/* 8072F520  41 82 00 14 */	beq lbl_8072F534
/* 8072F524  40 80 00 40 */	bge lbl_8072F564
/* 8072F528  2C 03 00 00 */	cmpwi r3, 0
/* 8072F52C  41 82 00 20 */	beq lbl_8072F54C
/* 8072F530  48 00 00 34 */	b lbl_8072F564
lbl_8072F534:
/* 8072F534  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072F538  41 82 00 0C */	beq lbl_8072F544
/* 8072F53C  38 00 00 01 */	li r0, 1
/* 8072F540  48 00 00 28 */	b lbl_8072F568
lbl_8072F544:
/* 8072F544  38 00 00 02 */	li r0, 2
/* 8072F548  48 00 00 20 */	b lbl_8072F568
lbl_8072F54C:
/* 8072F54C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072F550  41 82 00 0C */	beq lbl_8072F55C
/* 8072F554  38 00 00 05 */	li r0, 5
/* 8072F558  48 00 00 10 */	b lbl_8072F568
lbl_8072F55C:
/* 8072F55C  38 00 00 03 */	li r0, 3
/* 8072F560  48 00 00 08 */	b lbl_8072F568
lbl_8072F564:
/* 8072F564  38 00 00 04 */	li r0, 4
lbl_8072F568:
/* 8072F568  2C 00 00 01 */	cmpwi r0, 1
/* 8072F56C  40 82 00 0C */	bne lbl_8072F578
/* 8072F570  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072F574  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072F578:
/* 8072F578  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072F57C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F580  40 80 00 18 */	bge lbl_8072F598
/* 8072F584  7F C3 F3 78 */	mr r3, r30
/* 8072F588  38 80 00 00 */	li r4, 0
/* 8072F58C  38 A0 00 00 */	li r5, 0
/* 8072F590  4B FF E7 2D */	bl setActionMode__8daE_OC_cFii
/* 8072F594  48 00 00 34 */	b lbl_8072F5C8
lbl_8072F598:
/* 8072F598  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8072F59C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8072F5A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072F5A4  4B B4 11 9C */	b cLib_chaseF__FPfff
/* 8072F5A8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8072F5AC  A8 9E 06 BC */	lha r4, 0x6bc(r30)
/* 8072F5B0  38 A0 00 04 */	li r5, 4
/* 8072F5B4  38 C0 08 00 */	li r6, 0x800
/* 8072F5B8  38 E0 01 00 */	li r7, 0x100
/* 8072F5BC  4B B4 0F 84 */	b cLib_addCalcAngleS__FPsssss
/* 8072F5C0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8072F5C4  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8072F5C8:
/* 8072F5C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072F5CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8072F5D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072F5D4  7C 08 03 A6 */	mtlr r0
/* 8072F5D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8072F5DC  4E 80 00 20 */	blr 
