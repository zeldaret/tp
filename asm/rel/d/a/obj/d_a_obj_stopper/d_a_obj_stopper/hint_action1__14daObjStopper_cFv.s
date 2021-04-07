lbl_80CEE148:
/* 80CEE148  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CEE14C  7C 08 02 A6 */	mflr r0
/* 80CEE150  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CEE154  39 61 00 60 */	addi r11, r1, 0x60
/* 80CEE158  4B 67 40 85 */	bl _savegpr_29
/* 80CEE15C  7C 7E 1B 78 */	mr r30, r3
/* 80CEE160  3C 60 80 CF */	lis r3, lit_3635@ha /* 0x80CEEFA0@ha */
/* 80CEE164  3B E3 EF A0 */	addi r31, r3, lit_3635@l /* 0x80CEEFA0@l */
/* 80CEE168  88 1E 09 5C */	lbz r0, 0x95c(r30)
/* 80CEE16C  2C 00 00 02 */	cmpwi r0, 2
/* 80CEE170  41 82 02 E8 */	beq lbl_80CEE458
/* 80CEE174  40 80 00 14 */	bge lbl_80CEE188
/* 80CEE178  2C 00 00 00 */	cmpwi r0, 0
/* 80CEE17C  41 82 00 1C */	beq lbl_80CEE198
/* 80CEE180  40 80 01 C0 */	bge lbl_80CEE340
/* 80CEE184  48 00 04 34 */	b lbl_80CEE5B8
lbl_80CEE188:
/* 80CEE188  2C 00 00 04 */	cmpwi r0, 4
/* 80CEE18C  41 82 04 2C */	beq lbl_80CEE5B8
/* 80CEE190  40 80 04 28 */	bge lbl_80CEE5B8
/* 80CEE194  48 00 03 E8 */	b lbl_80CEE57C
lbl_80CEE198:
/* 80CEE198  88 7E 09 5D */	lbz r3, 0x95d(r30)
/* 80CEE19C  38 03 FF FF */	addi r0, r3, -1
/* 80CEE1A0  98 1E 09 5D */	stb r0, 0x95d(r30)
/* 80CEE1A4  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE1A8  28 00 00 0A */	cmplwi r0, 0xa
/* 80CEE1AC  41 81 01 00 */	bgt lbl_80CEE2AC
/* 80CEE1B0  54 00 74 22 */	rlwinm r0, r0, 0xe, 0x10, 0x11
/* 80CEE1B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEE1B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEE1BC  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE1C0  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE1C4  C0 1E 09 58 */	lfs f0, 0x958(r30)
/* 80CEE1C8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE1CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE1D0  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE1D4  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE1D8  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE1DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE1E0  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE1E4  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE1E8  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEE1EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE1F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CEE1F4  3C 60 43 30 */	lis r3, 0x4330
/* 80CEE1F8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80CEE1FC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CEE200  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE204  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE208  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE20C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CEE210  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CEE214  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEE218  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE21C  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE220  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE224  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE228  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE22C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE230  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEE234  90 61 00 40 */	stw r3, 0x40(r1)
/* 80CEE238  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CEE23C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE240  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE244  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE248  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80CEE24C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80CEE250  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEE254  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE258  28 00 00 0A */	cmplwi r0, 0xa
/* 80CEE25C  40 82 00 50 */	bne lbl_80CEE2AC
/* 80CEE260  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEE264  7C 03 07 74 */	extsb r3, r0
/* 80CEE268  4B 33 EE 05 */	bl dComIfGp_getReverb__Fi
/* 80CEE26C  7C 67 1B 78 */	mr r7, r3
/* 80CEE270  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800DC@ha */
/* 80CEE274  38 03 00 DC */	addi r0, r3, 0x00DC /* 0x000800DC@l */
/* 80CEE278  90 01 00 08 */	stw r0, 8(r1)
/* 80CEE27C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEE280  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEE284  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEE288  38 81 00 08 */	addi r4, r1, 8
/* 80CEE28C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEE290  38 C0 00 00 */	li r6, 0
/* 80CEE294  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80CEE298  FC 40 08 90 */	fmr f2, f1
/* 80CEE29C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CEE2A0  FC 80 18 90 */	fmr f4, f3
/* 80CEE2A4  39 00 00 00 */	li r8, 0
/* 80CEE2A8  4B 5B D6 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEE2AC:
/* 80CEE2AC  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE2B0  28 00 00 14 */	cmplwi r0, 0x14
/* 80CEE2B4  40 82 00 34 */	bne lbl_80CEE2E8
/* 80CEE2B8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEE2BC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CEE2C0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEE2C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CEE2C8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CEE2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEE2D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEE2D4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CEE2D8  38 80 00 02 */	li r4, 2
/* 80CEE2DC  38 A0 00 01 */	li r5, 1
/* 80CEE2E0  38 C1 00 24 */	addi r6, r1, 0x24
/* 80CEE2E4  4B 38 18 2D */	bl StartQuake__12dVibration_cFii4cXyz
lbl_80CEE2E8:
/* 80CEE2E8  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE2EC  28 00 00 00 */	cmplwi r0, 0
/* 80CEE2F0  40 82 02 C8 */	bne lbl_80CEE5B8
/* 80CEE2F4  C0 1E 09 6C */	lfs f0, 0x96c(r30)
/* 80CEE2F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE2FC  38 00 00 01 */	li r0, 1
/* 80CEE300  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEE304  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CEE308  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80CEE30C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEE310  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CEE314  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEE318  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CEE31C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CEE320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEE324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEE328  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CEE32C  38 80 00 02 */	li r4, 2
/* 80CEE330  38 A0 00 01 */	li r5, 1
/* 80CEE334  38 C1 00 18 */	addi r6, r1, 0x18
/* 80CEE338  4B 38 17 D9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80CEE33C  48 00 02 7C */	b lbl_80CEE5B8
lbl_80CEE340:
/* 80CEE340  88 7E 09 5D */	lbz r3, 0x95d(r30)
/* 80CEE344  38 03 00 01 */	addi r0, r3, 1
/* 80CEE348  98 1E 09 5D */	stb r0, 0x95d(r30)
/* 80CEE34C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEE350  C0 1E 09 64 */	lfs f0, 0x964(r30)
/* 80CEE354  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE358  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE35C  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE360  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE364  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE368  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE36C  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE370  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE374  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE378  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEE37C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEE380  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE384  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE388  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEE38C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE390  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80CEE394  3C 60 43 30 */	lis r3, 0x4330
/* 80CEE398  90 61 00 48 */	stw r3, 0x48(r1)
/* 80CEE39C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80CEE3A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE3A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE3A8  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE3AC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CEE3B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CEE3B4  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEE3B8  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE3BC  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE3C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE3C4  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE3C8  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE3CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE3D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CEE3D4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80CEE3D8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CEE3DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE3E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE3E4  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE3E8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CEE3EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CEE3F0  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEE3F4  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE3F8  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 80CEE3FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEE400  40 81 01 B8 */	ble lbl_80CEE5B8
/* 80CEE404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEE408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEE40C  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80CEE410  7F A3 EB 78 */	mr r3, r29
/* 80CEE414  38 80 00 1F */	li r4, 0x1f
/* 80CEE418  4B 38 19 7D */	bl StopQuake__12dVibration_cFi
/* 80CEE41C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEE420  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CEE424  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEE428  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CEE42C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CEE430  7F A3 EB 78 */	mr r3, r29
/* 80CEE434  38 80 00 02 */	li r4, 2
/* 80CEE438  38 A0 00 01 */	li r5, 1
/* 80CEE43C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CEE440  4B 38 15 E5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CEE444  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 80CEE448  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE44C  38 00 00 02 */	li r0, 2
/* 80CEE450  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEE454  48 00 01 64 */	b lbl_80CEE5B8
lbl_80CEE458:
/* 80CEE458  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE45C  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE460  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE464  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEE468  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEE46C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE470  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE474  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEE478  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE47C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80CEE480  3C 60 43 30 */	lis r3, 0x4330
/* 80CEE484  90 61 00 48 */	stw r3, 0x48(r1)
/* 80CEE488  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80CEE48C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE490  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE494  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE498  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CEE49C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CEE4A0  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEE4A4  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE4A8  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE4AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE4B0  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE4B4  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE4B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE4BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CEE4C0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80CEE4C4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CEE4C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE4CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE4D0  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE4D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CEE4D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CEE4DC  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEE4E0  38 7E 09 F6 */	addi r3, r30, 0x9f6
/* 80CEE4E4  38 80 00 00 */	li r4, 0
/* 80CEE4E8  38 A0 00 1E */	li r5, 0x1e
/* 80CEE4EC  38 C0 00 0A */	li r6, 0xa
/* 80CEE4F0  38 E0 00 05 */	li r7, 5
/* 80CEE4F4  4B 58 20 4D */	bl cLib_addCalcAngleS__FPsssss
/* 80CEE4F8  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE4FC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE500  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE504  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE508  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE50C  C0 7E 09 78 */	lfs f3, 0x978(r30)
/* 80CEE510  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80CEE514  40 81 00 20 */	ble lbl_80CEE534
/* 80CEE518  D0 7E 09 50 */	stfs f3, 0x950(r30)
/* 80CEE51C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CEE520  C0 1E 09 6C */	lfs f0, 0x96c(r30)
/* 80CEE524  FC 00 00 50 */	fneg f0, f0
/* 80CEE528  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEE52C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE530  48 00 00 20 */	b lbl_80CEE550
lbl_80CEE534:
/* 80CEE534  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE538  FC 00 02 10 */	fabs f0, f0
/* 80CEE53C  FC 40 00 18 */	frsp f2, f0
/* 80CEE540  EC 03 10 28 */	fsubs f0, f3, f2
/* 80CEE544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEE548  40 80 00 08 */	bge lbl_80CEE550
/* 80CEE54C  D0 5E 05 2C */	stfs f2, 0x52c(r30)
lbl_80CEE550:
/* 80CEE550  88 7E 09 5E */	lbz r3, 0x95e(r30)
/* 80CEE554  38 03 FF FF */	addi r0, r3, -1
/* 80CEE558  98 1E 09 5E */	stb r0, 0x95e(r30)
/* 80CEE55C  88 1E 09 5E */	lbz r0, 0x95e(r30)
/* 80CEE560  28 00 00 00 */	cmplwi r0, 0
/* 80CEE564  40 82 00 54 */	bne lbl_80CEE5B8
/* 80CEE568  C0 1E 09 70 */	lfs f0, 0x970(r30)
/* 80CEE56C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE570  38 00 00 03 */	li r0, 3
/* 80CEE574  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEE578  48 00 00 40 */	b lbl_80CEE5B8
lbl_80CEE57C:
/* 80CEE57C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEE580  C0 1E 09 68 */	lfs f0, 0x968(r30)
/* 80CEE584  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE588  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE58C  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE590  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE594  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE598  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE59C  C0 1E 09 50 */	lfs f0, 0x950(r30)
/* 80CEE5A0  C0 3E 09 74 */	lfs f1, 0x974(r30)
/* 80CEE5A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CEE5A8  40 80 00 10 */	bge lbl_80CEE5B8
/* 80CEE5AC  D0 3E 09 50 */	stfs f1, 0x950(r30)
/* 80CEE5B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CEE5B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CEE5B8:
/* 80CEE5B8  39 61 00 60 */	addi r11, r1, 0x60
/* 80CEE5BC  4B 67 3C 6D */	bl _restgpr_29
/* 80CEE5C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CEE5C4  7C 08 03 A6 */	mtlr r0
/* 80CEE5C8  38 21 00 60 */	addi r1, r1, 0x60
/* 80CEE5CC  4E 80 00 20 */	blr 
