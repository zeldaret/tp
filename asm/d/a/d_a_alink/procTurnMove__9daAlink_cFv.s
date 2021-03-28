lbl_800DE380:
/* 800DE380  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DE384  7C 08 02 A6 */	mflr r0
/* 800DE388  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DE38C  39 61 00 30 */	addi r11, r1, 0x30
/* 800DE390  48 28 3E 4D */	bl _savegpr_29
/* 800DE394  7C 7E 1B 78 */	mr r30, r3
/* 800DE398  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800DE39C  64 00 08 00 */	oris r0, r0, 0x800
/* 800DE3A0  90 03 05 88 */	stw r0, 0x588(r3)
/* 800DE3A4  AB A3 30 0C */	lha r29, 0x300c(r3)
/* 800DE3A8  38 7E 30 0C */	addi r3, r30, 0x300c
/* 800DE3AC  38 80 00 00 */	li r4, 0
/* 800DE3B0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_turnMove_c0@ha
/* 800DE3B4  38 E5 DF 70 */	addi r7, r5, m__22daAlinkHIO_turnMove_c0@l
/* 800DE3B8  A8 A7 00 14 */	lha r5, 0x14(r7)
/* 800DE3BC  A8 DE 30 0A */	lha r6, 0x300a(r30)
/* 800DE3C0  A8 E7 00 18 */	lha r7, 0x18(r7)
/* 800DE3C4  48 19 21 7D */	bl cLib_addCalcAngleS__FPsssss
/* 800DE3C8  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800DE3CC  7C 00 E8 50 */	subf r0, r0, r29
/* 800DE3D0  7C 1F 07 34 */	extsh r31, r0
/* 800DE3D4  7F A0 07 35 */	extsh. r0, r29
/* 800DE3D8  40 81 00 14 */	ble lbl_800DE3EC
/* 800DE3DC  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800DE3E0  38 03 40 00 */	addi r0, r3, 0x4000
/* 800DE3E4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800DE3E8  48 00 00 10 */	b lbl_800DE3F8
lbl_800DE3EC:
/* 800DE3EC  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800DE3F0  38 03 C0 00 */	addi r0, r3, -16384
/* 800DE3F4  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800DE3F8:
/* 800DE3F8  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800DE3FC  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 800DE400  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800DE404  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800DE408  7C 03 24 2E */	lfsx f0, r3, r4
/* 800DE40C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800DE410  C0 5E 34 78 */	lfs f2, 0x3478(r30)
/* 800DE414  EC 02 00 32 */	fmuls f0, f2, f0
/* 800DE418  EC 81 00 28 */	fsubs f4, f1, f0
/* 800DE41C  38 A3 00 04 */	addi r5, r3, 4
/* 800DE420  7C 05 24 2E */	lfsx f0, r5, r4
/* 800DE424  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800DE428  EC 02 00 32 */	fmuls f0, f2, f0
/* 800DE42C  EC A1 00 28 */	fsubs f5, f1, f0
/* 800DE430  7C 00 FA 14 */	add r0, r0, r31
/* 800DE434  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800DE438  C0 7E 34 78 */	lfs f3, 0x3478(r30)
/* 800DE43C  C0 5E 34 7C */	lfs f2, 0x347c(r30)
/* 800DE440  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800DE444  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 800DE448  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800DE44C  3C 00 43 30 */	lis r0, 0x4330
/* 800DE450  90 01 00 18 */	stw r0, 0x18(r1)
/* 800DE454  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800DE458  EC 00 08 28 */	fsubs f0, f0, f1
/* 800DE45C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800DE460  EC 03 00 28 */	fsubs f0, f3, f0
/* 800DE464  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800DE468  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800DE46C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800DE470  7C 23 04 2E */	lfsx f1, r3, r0
/* 800DE474  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800DE478  EC 00 00 72 */	fmuls f0, f0, f1
/* 800DE47C  EC 04 00 2A */	fadds f0, f4, f0
/* 800DE480  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800DE484  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800DE488  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800DE48C  7C 25 04 2E */	lfsx f1, r5, r0
/* 800DE490  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800DE494  EC 00 00 72 */	fmuls f0, f0, f1
/* 800DE498  EC 05 00 2A */	fadds f0, f5, f0
/* 800DE49C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800DE4A0  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800DE4A4  3C 63 00 01 */	addis r3, r3, 1
/* 800DE4A8  38 03 80 00 */	addi r0, r3, -32768
/* 800DE4AC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800DE4B0  7F C3 F3 78 */	mr r3, r30
/* 800DE4B4  4B FF 2B 79 */	bl checkCutFinishJumpUp__9daAlink_cFv
/* 800DE4B8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800DE4BC  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800DE4C0  7C 00 1B 78 */	or r0, r0, r3
/* 800DE4C4  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800DE4C8  3B BE 1F D0 */	addi r29, r30, 0x1fd0
/* 800DE4CC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800DE4D0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800DE4D4  41 82 00 10 */	beq lbl_800DE4E4
/* 800DE4D8  7F C3 F3 78 */	mr r3, r30
/* 800DE4DC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DE4E0  4B FF EB 29 */	bl setUpperGuardAnime__9daAlink_cFf
lbl_800DE4E4:
/* 800DE4E4  7F A3 EB 78 */	mr r3, r29
/* 800DE4E8  48 07 FF E5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DE4EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DE4F0  41 82 00 50 */	beq lbl_800DE540
/* 800DE4F4  83 FE 27 E0 */	lwz r31, 0x27e0(r30)
/* 800DE4F8  3B A0 00 01 */	li r29, 1
/* 800DE4FC  7F E3 FB 78 */	mr r3, r31
/* 800DE500  4B F9 52 E5 */	bl LockonTruth__12dAttention_cFv
/* 800DE504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DE508  40 82 00 14 */	bne lbl_800DE51C
/* 800DE50C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800DE510  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DE514  40 82 00 08 */	bne lbl_800DE51C
/* 800DE518  3B A0 00 00 */	li r29, 0
lbl_800DE51C:
/* 800DE51C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800DE520  40 82 00 10 */	bne lbl_800DE530
/* 800DE524  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800DE528  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 800DE52C  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_800DE530:
/* 800DE530  7F C3 F3 78 */	mr r3, r30
/* 800DE534  38 80 00 00 */	li r4, 0
/* 800DE538  4B FD BB 99 */	bl checkNextAction__9daAlink_cFi
/* 800DE53C  48 00 00 F4 */	b lbl_800DE630
lbl_800DE540:
/* 800DE540  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800DE544  2C 00 00 00 */	cmpwi r0, 0
/* 800DE548  41 82 00 4C */	beq lbl_800DE594
/* 800DE54C  7F C3 F3 78 */	mr r3, r30
/* 800DE550  4B FD 35 D9 */	bl checkNotJumpSinkLimit__9daAlink_cFv
/* 800DE554  2C 03 00 00 */	cmpwi r3, 0
/* 800DE558  40 82 00 3C */	bne lbl_800DE594
/* 800DE55C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800DE560  3C 60 80 39 */	lis r3, m__22daAlinkHIO_turnMove_c0@ha
/* 800DE564  38 63 DF 70 */	addi r3, r3, m__22daAlinkHIO_turnMove_c0@l
/* 800DE568  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800DE56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DE570  40 81 00 24 */	ble lbl_800DE594
/* 800DE574  7F C3 F3 78 */	mr r3, r30
/* 800DE578  4B FF 55 65 */	bl procCutFinishJumpUpInit__9daAlink_cFv
/* 800DE57C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DE580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DE584  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800DE588  60 00 00 04 */	ori r0, r0, 4
/* 800DE58C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800DE590  48 00 00 A0 */	b lbl_800DE630
lbl_800DE594:
/* 800DE594  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800DE598  3C 60 80 39 */	lis r3, m__22daAlinkHIO_turnMove_c0@ha
/* 800DE59C  38 63 DF 70 */	addi r3, r3, m__22daAlinkHIO_turnMove_c0@l
/* 800DE5A0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800DE5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DE5A8  40 81 00 2C */	ble lbl_800DE5D4
/* 800DE5AC  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DE5B0  60 00 00 04 */	ori r0, r0, 4
/* 800DE5B4  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800DE5B8  7F C3 F3 78 */	mr r3, r30
/* 800DE5BC  38 80 00 01 */	li r4, 1
/* 800DE5C0  4B FD BB 11 */	bl checkNextAction__9daAlink_cFi
/* 800DE5C4  2C 03 00 00 */	cmpwi r3, 0
/* 800DE5C8  41 82 00 0C */	beq lbl_800DE5D4
/* 800DE5CC  38 60 00 01 */	li r3, 1
/* 800DE5D0  48 00 00 64 */	b lbl_800DE634
lbl_800DE5D4:
/* 800DE5D4  7F A3 EB 78 */	mr r3, r29
/* 800DE5D8  C0 22 93 C8 */	lfs f1, lit_10286(r2)
/* 800DE5DC  48 24 9E 51 */	bl checkPass__12J3DFrameCtrlFf
/* 800DE5E0  2C 03 00 00 */	cmpwi r3, 0
/* 800DE5E4  41 82 00 34 */	beq lbl_800DE618
/* 800DE5E8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DE5EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DE5F0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DE5F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DE5F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DE5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DE600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DE604  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DE608  38 80 00 01 */	li r4, 1
/* 800DE60C  38 A0 00 01 */	li r5, 1
/* 800DE610  38 C1 00 08 */	addi r6, r1, 8
/* 800DE614  4B F9 14 11 */	bl StartShock__12dVibration_cFii4cXyz
lbl_800DE618:
/* 800DE618  7F E3 FB 78 */	mr r3, r31
/* 800DE61C  48 28 6A B5 */	bl abs
/* 800DE620  2C 03 01 00 */	cmpwi r3, 0x100
/* 800DE624  40 81 00 0C */	ble lbl_800DE630
/* 800DE628  38 00 00 04 */	li r0, 4
/* 800DE62C  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
lbl_800DE630:
/* 800DE630  38 60 00 01 */	li r3, 1
lbl_800DE634:
/* 800DE634  39 61 00 30 */	addi r11, r1, 0x30
/* 800DE638  48 28 3B F1 */	bl _restgpr_29
/* 800DE63C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DE640  7C 08 03 A6 */	mtlr r0
/* 800DE644  38 21 00 30 */	addi r1, r1, 0x30
/* 800DE648  4E 80 00 20 */	blr 
