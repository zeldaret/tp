lbl_804AE250:
/* 804AE250  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804AE254  7C 08 02 A6 */	mflr r0
/* 804AE258  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804AE25C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804AE260  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804AE264  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804AE268  4B EB 3F 74 */	b _savegpr_29
/* 804AE26C  7C 7E 1B 78 */	mr r30, r3
/* 804AE270  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804AE274  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804AE278  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 804AE27C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804AE280  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 804AE284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE288  40 81 00 2C */	ble lbl_804AE2B4
/* 804AE28C  80 1E 11 FC */	lwz r0, 0x11fc(r30)
/* 804AE290  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804AE294  41 82 00 20 */	beq lbl_804AE2B4
/* 804AE298  D3 FE 05 2C */	stfs f31, 0x52c(r30)
/* 804AE29C  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804AE2A0  4B DB 96 EC */	b cM_rndFX__Ff
/* 804AE2A4  FC 00 08 1E */	fctiwz f0, f1
/* 804AE2A8  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804AE2AC  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 804AE2B0  B0 1E 0F FC */	sth r0, 0xffc(r30)
lbl_804AE2B4:
/* 804AE2B4  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 804AE2B8  2C 00 00 00 */	cmpwi r0, 0
/* 804AE2BC  41 82 00 2C */	beq lbl_804AE2E8
/* 804AE2C0  C3 FE 14 F4 */	lfs f31, 0x14f4(r30)
/* 804AE2C4  38 7E 0F FC */	addi r3, r30, 0xffc
/* 804AE2C8  A8 9E 0F FE */	lha r4, 0xffe(r30)
/* 804AE2CC  38 A0 00 02 */	li r5, 2
/* 804AE2D0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804AE2D4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804AE2D8  FC 00 00 1E */	fctiwz f0, f0
/* 804AE2DC  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804AE2E0  80 C1 00 9C */	lwz r6, 0x9c(r1)
/* 804AE2E4  4B DC 23 24 */	b cLib_addCalcAngleS2__FPssss
lbl_804AE2E8:
/* 804AE2E8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804AE2EC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804AE2F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE2F4  4C 41 13 82 */	cror 2, 1, 2
/* 804AE2F8  40 82 00 BC */	bne lbl_804AE3B4
/* 804AE2FC  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804AE300  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804AE304  40 82 00 B0 */	bne lbl_804AE3B4
/* 804AE308  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE30C  4B DB 96 48 */	b cM_rndF__Ff
/* 804AE310  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804AE314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE318  40 80 00 9C */	bge lbl_804AE3B4
/* 804AE31C  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804AE320  4B DB 96 6C */	b cM_rndFX__Ff
/* 804AE324  FC 00 08 1E */	fctiwz f0, f1
/* 804AE328  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804AE32C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 804AE330  B0 1E 0F FE */	sth r0, 0xffe(r30)
/* 804AE334  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804AE338  4B DB 96 54 */	b cM_rndFX__Ff
/* 804AE33C  FC 00 08 1E */	fctiwz f0, f1
/* 804AE340  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 804AE344  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804AE348  B0 1E 10 00 */	sth r0, 0x1000(r30)
/* 804AE34C  88 7E 0F 80 */	lbz r3, 0xf80(r30)
/* 804AE350  7C 60 07 75 */	extsb. r0, r3
/* 804AE354  40 82 00 10 */	bne lbl_804AE364
/* 804AE358  38 00 07 D0 */	li r0, 0x7d0
/* 804AE35C  B0 1E 0F F2 */	sth r0, 0xff2(r30)
/* 804AE360  48 00 00 54 */	b lbl_804AE3B4
lbl_804AE364:
/* 804AE364  7C 60 07 74 */	extsb r0, r3
/* 804AE368  2C 00 00 03 */	cmpwi r0, 3
/* 804AE36C  40 82 00 48 */	bne lbl_804AE3B4
/* 804AE370  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 804AE374  4B DB 95 E0 */	b cM_rndF__Ff
/* 804AE378  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 804AE37C  EC 02 08 2A */	fadds f0, f2, f1
/* 804AE380  FC 00 00 1E */	fctiwz f0, f0
/* 804AE384  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 804AE388  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804AE38C  B0 1E 10 20 */	sth r0, 0x1020(r30)
/* 804AE390  FC 20 10 90 */	fmr f1, f2
/* 804AE394  4B DB 95 C0 */	b cM_rndF__Ff
/* 804AE398  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 804AE39C  EC 00 08 2A */	fadds f0, f0, f1
/* 804AE3A0  FC 00 00 50 */	fneg f0, f0
/* 804AE3A4  FC 00 00 1E */	fctiwz f0, f0
/* 804AE3A8  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804AE3AC  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 804AE3B0  B0 1E 10 22 */	sth r0, 0x1022(r30)
lbl_804AE3B4:
/* 804AE3B4  80 1E 11 FC */	lwz r0, 0x11fc(r30)
/* 804AE3B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804AE3BC  41 82 03 64 */	beq lbl_804AE720
/* 804AE3C0  38 7E 10 00 */	addi r3, r30, 0x1000
/* 804AE3C4  38 80 00 00 */	li r4, 0
/* 804AE3C8  38 A0 00 01 */	li r5, 1
/* 804AE3CC  38 C0 20 00 */	li r6, 0x2000
/* 804AE3D0  4B DC 22 38 */	b cLib_addCalcAngleS2__FPssss
/* 804AE3D4  88 7E 10 A8 */	lbz r3, 0x10a8(r30)
/* 804AE3D8  7C 60 07 75 */	extsb. r0, r3
/* 804AE3DC  40 82 00 BC */	bne lbl_804AE498
/* 804AE3E0  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 804AE3E4  4B DB 95 A8 */	b cM_rndFX__Ff
/* 804AE3E8  FC 00 08 1E */	fctiwz f0, f1
/* 804AE3EC  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 804AE3F0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804AE3F4  B0 1E 0F FC */	sth r0, 0xffc(r30)
/* 804AE3F8  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 804AE3FC  4B DB 95 90 */	b cM_rndFX__Ff
/* 804AE400  FC 00 08 1E */	fctiwz f0, f1
/* 804AE404  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804AE408  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 804AE40C  B0 1E 10 00 */	sth r0, 0x1000(r30)
/* 804AE410  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE414  4B DB 95 40 */	b cM_rndF__Ff
/* 804AE418  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804AE41C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE420  40 80 00 14 */	bge lbl_804AE434
/* 804AE424  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000B000@ha */
/* 804AE428  38 03 B0 00 */	addi r0, r3, 0xB000 /* 0x0000B000@l */
/* 804AE42C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804AE430  48 00 00 10 */	b lbl_804AE440
lbl_804AE434:
/* 804AE434  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFF5000@ha */
/* 804AE438  38 03 50 00 */	addi r0, r3, 0x5000 /* 0xFFFF5000@l */
/* 804AE43C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
lbl_804AE440:
/* 804AE440  88 7E 10 A8 */	lbz r3, 0x10a8(r30)
/* 804AE444  38 03 00 01 */	addi r0, r3, 1
/* 804AE448  98 1E 10 A8 */	stb r0, 0x10a8(r30)
/* 804AE44C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 804AE450  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 804AE454  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804AE458  EC 01 00 2A */	fadds f0, f1, f0
/* 804AE45C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AE460  40 80 00 5C */	bge lbl_804AE4BC
/* 804AE464  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804AE468  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804AE46C  7F C3 F3 78 */	mr r3, r30
/* 804AE470  4B FF E7 25 */	bl lure_bound_se_set__FP13dmg_rod_class
/* 804AE474  38 7E 11 78 */	addi r3, r30, 0x1178
/* 804AE478  38 9E 11 7C */	addi r4, r30, 0x117c
/* 804AE47C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804AE480  38 C0 00 00 */	li r6, 0
/* 804AE484  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804AE488  38 FE 01 0C */	addi r7, r30, 0x10c
/* 804AE48C  39 00 00 01 */	li r8, 1
/* 804AE490  4B B6 EB 90 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 804AE494  48 00 00 28 */	b lbl_804AE4BC
lbl_804AE498:
/* 804AE498  7C 60 07 74 */	extsb r0, r3
/* 804AE49C  2C 00 00 01 */	cmpwi r0, 1
/* 804AE4A0  40 82 00 0C */	bne lbl_804AE4AC
/* 804AE4A4  7F C3 F3 78 */	mr r3, r30
/* 804AE4A8  4B FF E6 ED */	bl lure_bound_se_set__FP13dmg_rod_class
lbl_804AE4AC:
/* 804AE4AC  38 00 00 02 */	li r0, 2
/* 804AE4B0  98 1E 10 A8 */	stb r0, 0x10a8(r30)
/* 804AE4B4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804AE4B8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_804AE4BC:
/* 804AE4BC  38 61 00 44 */	addi r3, r1, 0x44
/* 804AE4C0  4B BC 90 BC */	b __ct__11dBgS_GndChkFv
/* 804AE4C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804AE4C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804AE4CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804AE4D0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804AE4D4  4B B5 DF 08 */	b mDoMtx_YrotS__FPA4_fs
/* 804AE4D8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AE4DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AE4E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AE4E4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804AE4E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AE4EC  38 61 00 38 */	addi r3, r1, 0x38
/* 804AE4F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 804AE4F4  4B DC 29 F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804AE4F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804AE4FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804AE500  7C 65 1B 78 */	mr r5, r3
/* 804AE504  4B E9 8B 8C */	b PSVECAdd
/* 804AE508  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804AE50C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804AE510  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 804AE514  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804AE518  EC 01 00 2A */	fadds f0, f1, f0
/* 804AE51C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804AE520  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804AE524  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804AE528  38 61 00 44 */	addi r3, r1, 0x44
/* 804AE52C  38 81 00 20 */	addi r4, r1, 0x20
/* 804AE530  4B DB 97 DC */	b SetPos__11cBgS_GndChkFPC3Vec
/* 804AE534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AE538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804AE53C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 804AE540  7F A3 EB 78 */	mr r3, r29
/* 804AE544  38 81 00 44 */	addi r4, r1, 0x44
/* 804AE548  4B BC 5F 58 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804AE54C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804AE550  EC 00 08 2A */	fadds f0, f0, f1
/* 804AE554  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804AE558  38 61 00 14 */	addi r3, r1, 0x14
/* 804AE55C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804AE560  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804AE564  4B DB 85 D0 */	b __mi__4cXyzCFRC3Vec
/* 804AE568  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804AE56C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804AE570  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804AE574  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AE578  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804AE57C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 804AE580  FC 00 02 10 */	fabs f0, f0
/* 804AE584  FC 60 00 18 */	frsp f3, f0
/* 804AE588  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804AE58C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804AE590  40 80 01 80 */	bge lbl_804AE710
/* 804AE594  EC 21 00 72 */	fmuls f1, f1, f1
/* 804AE598  EC 02 00 B2 */	fmuls f0, f2, f2
/* 804AE59C  EC 41 00 2A */	fadds f2, f1, f0
/* 804AE5A0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AE5A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AE5A8  40 81 00 0C */	ble lbl_804AE5B4
/* 804AE5AC  FC 00 10 34 */	frsqrte f0, f2
/* 804AE5B0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AE5B4:
/* 804AE5B4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804AE5B8  4B DB 90 BC */	b cM_atan2s__Fff
/* 804AE5BC  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 804AE5C0  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 804AE5C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AE5C8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AE5CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AE5D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AE5D4  38 61 00 38 */	addi r3, r1, 0x38
/* 804AE5D8  38 81 00 2C */	addi r4, r1, 0x2c
/* 804AE5DC  4B DC 29 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 804AE5E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804AE5E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804AE5E8  7C 65 1B 78 */	mr r5, r3
/* 804AE5EC  4B E9 8A A4 */	b PSVECAdd
/* 804AE5F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804AE5F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804AE5F8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 804AE5FC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804AE600  EC 01 00 2A */	fadds f0, f1, f0
/* 804AE604  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804AE608  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804AE60C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804AE610  38 61 00 44 */	addi r3, r1, 0x44
/* 804AE614  38 81 00 20 */	addi r4, r1, 0x20
/* 804AE618  4B DB 96 F4 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 804AE61C  7F A3 EB 78 */	mr r3, r29
/* 804AE620  38 81 00 44 */	addi r4, r1, 0x44
/* 804AE624  4B BC 5E 7C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804AE628  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804AE62C  EC 00 08 2A */	fadds f0, f0, f1
/* 804AE630  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804AE634  38 61 00 08 */	addi r3, r1, 8
/* 804AE638  38 81 00 2C */	addi r4, r1, 0x2c
/* 804AE63C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804AE640  4B DB 84 F4 */	b __mi__4cXyzCFRC3Vec
/* 804AE644  C0 21 00 08 */	lfs f1, 8(r1)
/* 804AE648  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804AE64C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804AE650  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AE654  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804AE658  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804AE65C  EC 21 00 72 */	fmuls f1, f1, f1
/* 804AE660  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AE664  EC 41 00 2A */	fadds f2, f1, f0
/* 804AE668  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AE66C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AE670  40 81 00 0C */	ble lbl_804AE67C
/* 804AE674  FC 00 10 34 */	frsqrte f0, f2
/* 804AE678  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AE67C:
/* 804AE67C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804AE680  4B DB 8F F4 */	b cM_atan2s__Fff
/* 804AE684  7C 63 07 34 */	extsh r3, r3
/* 804AE688  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 804AE68C  2C 00 18 00 */	cmpwi r0, 0x1800
/* 804AE690  40 80 00 14 */	bge lbl_804AE6A4
/* 804AE694  2C 03 18 00 */	cmpwi r3, 0x1800
/* 804AE698  40 80 00 0C */	bge lbl_804AE6A4
/* 804AE69C  2C 03 E8 00 */	cmpwi r3, -6144
/* 804AE6A0  41 81 00 70 */	bgt lbl_804AE710
lbl_804AE6A4:
/* 804AE6A4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804AE6A8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804AE6AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AE6B0  4B DB 92 A4 */	b cM_rndF__Ff
/* 804AE6B4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804AE6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE6BC  40 80 00 54 */	bge lbl_804AE710
/* 804AE6C0  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 804AE6C4  4B DB 92 C8 */	b cM_rndFX__Ff
/* 804AE6C8  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 804AE6CC  EC 00 08 2A */	fadds f0, f0, f1
/* 804AE6D0  FC 00 00 1E */	fctiwz f0, f0
/* 804AE6D4  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 804AE6D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804AE6DC  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804AE6E0  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804AE6E4  4B DB 92 A8 */	b cM_rndFX__Ff
/* 804AE6E8  FC 00 08 1E */	fctiwz f0, f1
/* 804AE6EC  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804AE6F0  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 804AE6F4  B0 1E 0F FC */	sth r0, 0xffc(r30)
/* 804AE6F8  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804AE6FC  4B DB 92 90 */	b cM_rndFX__Ff
/* 804AE700  FC 00 08 1E */	fctiwz f0, f1
/* 804AE704  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 804AE708  80 01 00 AC */	lwz r0, 0xac(r1)
/* 804AE70C  B0 1E 10 00 */	sth r0, 0x1000(r30)
lbl_804AE710:
/* 804AE710  38 61 00 44 */	addi r3, r1, 0x44
/* 804AE714  38 80 FF FF */	li r4, -1
/* 804AE718  4B BC 8E D8 */	b __dt__11dBgS_GndChkFv
/* 804AE71C  48 00 00 28 */	b lbl_804AE744
lbl_804AE720:
/* 804AE720  88 1E 10 A8 */	lbz r0, 0x10a8(r30)
/* 804AE724  2C 00 00 01 */	cmpwi r0, 1
/* 804AE728  40 82 00 1C */	bne lbl_804AE744
/* 804AE72C  A8 7E 0F FC */	lha r3, 0xffc(r30)
/* 804AE730  38 03 0C 80 */	addi r0, r3, 0xc80
/* 804AE734  B0 1E 0F FC */	sth r0, 0xffc(r30)
/* 804AE738  A8 7E 10 00 */	lha r3, 0x1000(r30)
/* 804AE73C  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 804AE740  B0 1E 10 00 */	sth r0, 0x1000(r30)
lbl_804AE744:
/* 804AE744  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804AE748  FC 20 F8 90 */	fmr f1, f31
/* 804AE74C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804AE750  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804AE754  4B DC 12 E8 */	b cLib_addCalc2__FPffff
/* 804AE758  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 804AE75C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804AE760  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804AE764  4B EB 3A C4 */	b _restgpr_29
/* 804AE768  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804AE76C  7C 08 03 A6 */	mtlr r0
/* 804AE770  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804AE774  4E 80 00 20 */	blr 
