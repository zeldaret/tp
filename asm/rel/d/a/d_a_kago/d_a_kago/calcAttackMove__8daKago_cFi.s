lbl_8084D354:
/* 8084D354  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8084D358  7C 08 02 A6 */	mflr r0
/* 8084D35C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8084D360  39 61 00 50 */	addi r11, r1, 0x50
/* 8084D364  4B B1 4E 78 */	b _savegpr_29
/* 8084D368  7C 7F 1B 78 */	mr r31, r3
/* 8084D36C  7C 9D 23 78 */	mr r29, r4
/* 8084D370  80 63 07 68 */	lwz r3, 0x768(r3)
/* 8084D374  88 9F 07 70 */	lbz r4, 0x770(r31)
/* 8084D378  7C 84 07 74 */	extsb r4, r4
/* 8084D37C  4B 80 44 34 */	b dPath_GetPnt__FPC5dPathi
/* 8084D380  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084D384  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084D388  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084D38C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8084D390  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084D394  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084D398  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8084D39C  88 1F 07 72 */	lbz r0, 0x772(r31)
/* 8084D3A0  7C 04 07 74 */	extsb r4, r0
/* 8084D3A4  88 1F 07 70 */	lbz r0, 0x770(r31)
/* 8084D3A8  7C 00 07 74 */	extsb r0, r0
/* 8084D3AC  7C 84 00 50 */	subf r4, r4, r0
/* 8084D3B0  4B 80 44 00 */	b dPath_GetPnt__FPC5dPathi
/* 8084D3B4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084D3B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084D3BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084D3C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084D3C4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084D3C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8084D3CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8084D3D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8084D3D4  4B A2 38 30 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084D3D8  7C 7E 1B 78 */	mr r30, r3
/* 8084D3DC  B3 DF 07 14 */	sth r30, 0x714(r31)
/* 8084D3E0  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 8084D3E4  28 00 00 00 */	cmplwi r0, 0
/* 8084D3E8  41 82 00 10 */	beq lbl_8084D3F8
/* 8084D3EC  7F E3 FB 78 */	mr r3, r31
/* 8084D3F0  4B FF E3 55 */	bl flySpeedCalcLockOn__8daKago_cFv
/* 8084D3F4  48 00 00 30 */	b lbl_8084D424
lbl_8084D3F8:
/* 8084D3F8  2C 1D 00 00 */	cmpwi r29, 0
/* 8084D3FC  40 82 00 18 */	bne lbl_8084D414
/* 8084D400  7F E3 FB 78 */	mr r3, r31
/* 8084D404  7F C4 F3 78 */	mr r4, r30
/* 8084D408  38 A0 00 01 */	li r5, 1
/* 8084D40C  4B FF E5 61 */	bl flySpeedCalc__8daKago_cFsi
/* 8084D410  48 00 00 14 */	b lbl_8084D424
lbl_8084D414:
/* 8084D414  7F E3 FB 78 */	mr r3, r31
/* 8084D418  7F C4 F3 78 */	mr r4, r30
/* 8084D41C  38 A0 00 02 */	li r5, 2
/* 8084D420  4B FF E5 4D */	bl flySpeedCalc__8daKago_cFsi
lbl_8084D424:
/* 8084D424  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084D428  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084D42C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084D430  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084D434  7C 64 02 14 */	add r3, r4, r0
/* 8084D438  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084D43C  FC 00 02 10 */	fabs f0, f0
/* 8084D440  FC 20 00 18 */	frsp f1, f0
/* 8084D444  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084D448  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084D44C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8084D450  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084D454  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084D458  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084D45C  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084D460  FC 00 00 50 */	fneg f0, f0
/* 8084D464  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084D468  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8084D46C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8084D470  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084D474  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8084D478  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084D47C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8084D480  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084D484  7F E3 FB 78 */	mr r3, r31
/* 8084D488  38 81 00 08 */	addi r4, r1, 8
/* 8084D48C  4B FF DB FD */	bl checkNextPath__8daKago_cF4cXyz
/* 8084D490  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8084D494  FC 20 08 18 */	frsp f1, f1
/* 8084D498  3C 60 80 85 */	lis r3, lit_3942@ha
/* 8084D49C  C0 03 4B 38 */	lfs f0, lit_3942@l(r3)
/* 8084D4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084D4A4  40 80 00 4C */	bge lbl_8084D4F0
/* 8084D4A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8084D4AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8084D4B0  4B A2 37 54 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084D4B4  7C 03 F0 50 */	subf r0, r3, r30
/* 8084D4B8  7C 03 07 34 */	extsh r3, r0
/* 8084D4BC  4B B1 7C 14 */	b abs
/* 8084D4C0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8084D4C4  40 80 00 2C */	bge lbl_8084D4F0
/* 8084D4C8  88 7F 07 70 */	lbz r3, 0x770(r31)
/* 8084D4CC  88 1F 07 72 */	lbz r0, 0x772(r31)
/* 8084D4D0  7C 03 02 14 */	add r0, r3, r0
/* 8084D4D4  98 1F 07 70 */	stb r0, 0x770(r31)
/* 8084D4D8  7F E3 FB 78 */	mr r3, r31
/* 8084D4DC  4B FF EB 9D */	bl checkFlySceneChange__8daKago_cFv
/* 8084D4E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D4E4  41 82 00 0C */	beq lbl_8084D4F0
/* 8084D4E8  38 60 00 01 */	li r3, 1
/* 8084D4EC  48 00 00 08 */	b lbl_8084D4F4
lbl_8084D4F0:
/* 8084D4F0  38 60 00 00 */	li r3, 0
lbl_8084D4F4:
/* 8084D4F4  39 61 00 50 */	addi r11, r1, 0x50
/* 8084D4F8  4B B1 4D 30 */	b _restgpr_29
/* 8084D4FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8084D500  7C 08 03 A6 */	mtlr r0
/* 8084D504  38 21 00 50 */	addi r1, r1, 0x50
/* 8084D508  4E 80 00 20 */	blr 
