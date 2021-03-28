lbl_80100668:
/* 80100668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010066C  7C 08 02 A6 */	mflr r0
/* 80100670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80100674  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80100678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010067C  7C 7E 1B 78 */	mr r30, r3
/* 80100680  88 03 2F 98 */	lbz r0, 0x2f98(r3)
/* 80100684  28 00 00 04 */	cmplwi r0, 4
/* 80100688  41 80 00 0C */	blt lbl_80100694
/* 8010068C  38 00 00 00 */	li r0, 0
/* 80100690  98 1E 2F 98 */	stb r0, 0x2f98(r30)
lbl_80100694:
/* 80100694  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80100698  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 8010069C  54 00 08 3C */	slwi r0, r0, 1
/* 801006A0  38 62 95 A8 */	la r3, offsetAngle(r2) /* 80452FA8-_SDA2_BASE_ */
/* 801006A4  7C 03 02 AE */	lhax r0, r3, r0
/* 801006A8  7C 04 02 14 */	add r0, r4, r0
/* 801006AC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 801006B0  C0 42 93 B4 */	lfs f2, lit_10040(r2)
/* 801006B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801006B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801006BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801006C0  7C 64 02 14 */	add r3, r4, r0
/* 801006C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801006C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801006CC  EC 81 00 2A */	fadds f4, f1, f0
/* 801006D0  C0 22 95 A4 */	lfs f1, lit_25916(r2)
/* 801006D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 801006D8  EC 21 00 2A */	fadds f1, f1, f0
/* 801006DC  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 801006E0  EC 61 00 28 */	fsubs f3, f1, f0
/* 801006E4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 801006E8  7C 04 04 2E */	lfsx f0, r4, r0
/* 801006EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801006F0  EC 01 00 2A */	fadds f0, f1, f0
/* 801006F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801006F8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801006FC  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80100700  D0 1E 1D 98 */	stfs f0, 0x1d98(r30)
/* 80100704  D0 7E 1D 9C */	stfs f3, 0x1d9c(r30)
/* 80100708  D0 9E 1D A0 */	stfs f4, 0x1da0(r30)
/* 8010070C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80100710  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80100714  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80100718  7F E3 FB 78 */	mr r3, r31
/* 8010071C  38 9E 1D 5C */	addi r4, r30, 0x1d5c
/* 80100720  4B F7 4D 7D */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80100724  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 80100728  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8010072C  EC 02 00 2A */	fadds f0, f2, f0
/* 80100730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100734  40 80 00 20 */	bge lbl_80100754
/* 80100738  7F E3 FB 78 */	mr r3, r31
/* 8010073C  38 9E 1D 5C */	addi r4, r30, 0x1d5c
/* 80100740  4B F7 46 1D */	bl GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo
/* 80100744  2C 03 00 00 */	cmpwi r3, 0
/* 80100748  41 82 00 0C */	beq lbl_80100754
/* 8010074C  38 60 00 01 */	li r3, 1
/* 80100750  48 00 00 08 */	b lbl_80100758
lbl_80100754:
/* 80100754  38 60 00 00 */	li r3, 0
lbl_80100758:
/* 80100758  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010075C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80100760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80100764  7C 08 03 A6 */	mtlr r0
/* 80100768  38 21 00 20 */	addi r1, r1, 0x20
/* 8010076C  4E 80 00 20 */	blr 
