lbl_80C3CEA8:
/* 80C3CEA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3CEAC  7C 08 02 A6 */	mflr r0
/* 80C3CEB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3CEB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C3CEB8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C3CEBC  7C 7F 1B 78 */	mr r31, r3
/* 80C3CEC0  3C 60 80 C4 */	lis r3, M_attr__15daObjKazeNeko_c@ha
/* 80C3CEC4  3B C3 D3 DC */	addi r30, r3, M_attr__15daObjKazeNeko_c@l
/* 80C3CEC8  80 1F 07 38 */	lwz r0, 0x738(r31)
/* 80C3CECC  2C 00 00 00 */	cmpwi r0, 0
/* 80C3CED0  40 82 00 A8 */	bne lbl_80C3CF78
/* 80C3CED4  4B 41 DC 1C */	b dKyw_get_wind_pow__Fv
/* 80C3CED8  38 9E 00 00 */	addi r4, r30, 0
/* 80C3CEDC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C3CEE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3CEE4  D0 1F 07 3C */	stfs f0, 0x73c(r31)
/* 80C3CEE8  C0 5F 07 40 */	lfs f2, 0x740(r31)
/* 80C3CEEC  A8 1F 07 48 */	lha r0, 0x748(r31)
/* 80C3CEF0  C8 3E 00 90 */	lfd f1, 0x90(r30)
/* 80C3CEF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C3CEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3CEFC  3C 00 43 30 */	lis r0, 0x4330
/* 80C3CF00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3CF04  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C3CF08  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C3CF0C  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 80C3CF10  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3CF14  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3CF18  FC 00 00 1E */	fctiwz f0, f0
/* 80C3CF1C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C3CF20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C3CF24  B0 1F 07 48 */	sth r0, 0x748(r31)
/* 80C3CF28  38 7F 07 40 */	addi r3, r31, 0x740
/* 80C3CF2C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C3CF30  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80C3CF34  4B 63 38 0C */	b cLib_chaseF__FPfff
/* 80C3CF38  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CA@ha */
/* 80C3CF3C  38 03 00 CA */	addi r0, r3, 0x00CA /* 0x000800CA@l */
/* 80C3CF40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C3CF44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C3CF48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C3CF4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3CF50  38 81 00 0C */	addi r4, r1, 0xc
/* 80C3CF54  38 BF 07 2C */	addi r5, r31, 0x72c
/* 80C3CF58  38 C0 00 00 */	li r6, 0
/* 80C3CF5C  38 E0 00 00 */	li r7, 0
/* 80C3CF60  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80C3CF64  FC 40 08 90 */	fmr f2, f1
/* 80C3CF68  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80C3CF6C  FC 80 18 90 */	fmr f4, f3
/* 80C3CF70  39 00 00 00 */	li r8, 0
/* 80C3CF74  4B 66 F5 98 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C3CF78:
/* 80C3CF78  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80C3CF7C  4B 44 74 E4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C3CF80  28 03 00 00 */	cmplwi r3, 0
/* 80C3CF84  41 82 00 30 */	beq lbl_80C3CFB4
/* 80C3CF88  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80C3CF8C  4B 44 66 FC */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C3CF90  A8 03 00 08 */	lha r0, 8(r3)
/* 80C3CF94  2C 00 01 00 */	cmpwi r0, 0x100
/* 80C3CF98  40 82 00 1C */	bne lbl_80C3CFB4
/* 80C3CF9C  38 9E 00 00 */	addi r4, r30, 0
/* 80C3CFA0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C3CFA4  D0 1F 07 40 */	stfs f0, 0x740(r31)
/* 80C3CFA8  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 80C3CFAC  60 00 00 04 */	ori r0, r0, 4
/* 80C3CFB0  B0 03 06 BE */	sth r0, 0x6be(r3)
lbl_80C3CFB4:
/* 80C3CFB4  7F E3 FB 78 */	mr r3, r31
/* 80C3CFB8  4B FF FB C5 */	bl swingHead__15daObjKazeNeko_cFv
/* 80C3CFBC  A8 7F 07 50 */	lha r3, 0x750(r31)
/* 80C3CFC0  2C 03 00 00 */	cmpwi r3, 0
/* 80C3CFC4  40 81 00 40 */	ble lbl_80C3D004
/* 80C3CFC8  38 03 FF FF */	addi r0, r3, -1
/* 80C3CFCC  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 80C3CFD0  7C 00 07 35 */	extsh. r0, r0
/* 80C3CFD4  41 81 00 30 */	bgt lbl_80C3D004
/* 80C3CFD8  38 00 01 00 */	li r0, 0x100
/* 80C3CFDC  B0 01 00 08 */	sth r0, 8(r1)
/* 80C3CFE0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C3CFE4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C3CFE8  38 81 00 08 */	addi r4, r1, 8
/* 80C3CFEC  4B 3D C8 0C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C3CFF0  28 03 00 00 */	cmplwi r3, 0
/* 80C3CFF4  41 82 00 10 */	beq lbl_80C3D004
/* 80C3CFF8  4B EC D5 70 */	b endHawkCamera__10daNPC_TK_cFv
/* 80C3CFFC  38 00 00 01 */	li r0, 1
/* 80C3D000  98 1F 07 52 */	stb r0, 0x752(r31)
lbl_80C3D004:
/* 80C3D004  7F E3 FB 78 */	mr r3, r31
/* 80C3D008  4B FF F9 81 */	bl setBaseMtx__15daObjKazeNeko_cFv
/* 80C3D00C  7F E3 FB 78 */	mr r3, r31
/* 80C3D010  4B FF FB 01 */	bl setCcCylinder__15daObjKazeNeko_cFv
/* 80C3D014  38 60 00 01 */	li r3, 1
/* 80C3D018  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C3D01C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C3D020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3D024  7C 08 03 A6 */	mtlr r0
/* 80C3D028  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3D02C  4E 80 00 20 */	blr 
