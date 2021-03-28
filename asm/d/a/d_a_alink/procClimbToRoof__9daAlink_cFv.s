lbl_80100464:
/* 80100464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80100468  7C 08 02 A6 */	mflr r0
/* 8010046C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80100470  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80100474  7C 7F 1B 78 */	mr r31, r3
/* 80100478  4B FF E3 F1 */	bl setMoveBGClimbCorrect__9daAlink_cFv
/* 8010047C  2C 03 00 00 */	cmpwi r3, 0
/* 80100480  41 82 00 0C */	beq lbl_8010048C
/* 80100484  38 60 00 01 */	li r3, 1
/* 80100488  48 00 01 30 */	b lbl_801005B8
lbl_8010048C:
/* 8010048C  38 00 00 02 */	li r0, 2
/* 80100490  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80100494  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 80100498  48 05 E0 35 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010049C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801004A0  41 82 01 14 */	beq lbl_801005B4
/* 801004A4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 801004A8  3C 63 00 01 */	addis r3, r3, 1
/* 801004AC  38 03 80 00 */	addi r0, r3, -32768
/* 801004B0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 801004B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801004B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801004BC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801004C0  B0 1F 2F E6 */	sth r0, 0x2fe6(r31)
/* 801004C4  7F E3 FB 78 */	mr r3, r31
/* 801004C8  38 80 00 00 */	li r4, 0
/* 801004CC  38 A0 80 00 */	li r5, -32768
/* 801004D0  38 C0 00 00 */	li r6, 0
/* 801004D4  4B FA D6 A5 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 801004D8  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 801004DC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801004E0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801004E4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 801004E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801004EC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801004F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801004F4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801004F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801004FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80100500  7C 64 02 14 */	add r3, r4, r0
/* 80100504  C0 03 00 04 */	lfs f0, 4(r3)
/* 80100508  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8010050C  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 80100510  EC 02 00 32 */	fmuls f0, f2, f0
/* 80100514  EC 81 00 2A */	fadds f4, f1, f0
/* 80100518  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8010051C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80100520  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80100524  EC 02 00 32 */	fmuls f0, f2, f0
/* 80100528  EC 01 00 2A */	fadds f0, f1, f0
/* 8010052C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80100530  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80100534  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80100538  D0 1F 1D 98 */	stfs f0, 0x1d98(r31)
/* 8010053C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80100540  D0 1F 1D 9C */	stfs f0, 0x1d9c(r31)
/* 80100544  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80100548  D0 1F 1D A0 */	stfs f0, 0x1da0(r31)
/* 8010054C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80100550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80100554  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80100558  38 9F 1D 5C */	addi r4, r31, 0x1d5c
/* 8010055C  4B F7 4F 41 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80100560  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80100564  FC 60 08 18 */	frsp f3, f1
/* 80100568  C0 42 95 94 */	lfs f2, lit_25113(r2)
/* 8010056C  C0 22 95 A4 */	lfs f1, lit_25916(r2)
/* 80100570  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80100574  EC 01 00 2A */	fadds f0, f1, f0
/* 80100578  EC 02 00 2A */	fadds f0, f2, f0
/* 8010057C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80100580  40 80 00 1C */	bge lbl_8010059C
/* 80100584  7F E3 FB 78 */	mr r3, r31
/* 80100588  38 9F 1D 5C */	addi r4, r31, 0x1d5c
/* 8010058C  38 A1 00 08 */	addi r5, r1, 8
/* 80100590  38 C0 00 01 */	li r6, 1
/* 80100594  48 00 04 7D */	bl procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi
/* 80100598  48 00 00 1C */	b lbl_801005B4
lbl_8010059C:
/* 8010059C  7F E3 FB 78 */	mr r3, r31
/* 801005A0  38 80 00 01 */	li r4, 1
/* 801005A4  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 801005A8  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 801005AC  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 801005B0  4B FC 64 99 */	bl procFallInit__9daAlink_cFif
lbl_801005B4:
/* 801005B4  38 60 00 01 */	li r3, 1
lbl_801005B8:
/* 801005B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801005BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801005C0  7C 08 03 A6 */	mtlr r0
/* 801005C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801005C8  4E 80 00 20 */	blr 
