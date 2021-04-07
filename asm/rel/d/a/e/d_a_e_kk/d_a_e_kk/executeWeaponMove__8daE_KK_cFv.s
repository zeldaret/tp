lbl_806FD294:
/* 806FD294  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806FD298  7C 08 02 A6 */	mflr r0
/* 806FD29C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806FD2A0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806FD2A4  4B C6 4F 2D */	bl _savegpr_26
/* 806FD2A8  7C 7D 1B 78 */	mr r29, r3
/* 806FD2AC  3C 60 80 70 */	lis r3, lit_3792@ha /* 0x806FF5E8@ha */
/* 806FD2B0  3B E3 F5 E8 */	addi r31, r3, lit_3792@l /* 0x806FF5E8@l */
/* 806FD2B4  38 00 00 00 */	li r0, 0
/* 806FD2B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806FD2BC  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD2C0  4B 97 A9 A9 */	bl __ct__11dBgS_LinChkFv
/* 806FD2C4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806FD2C8  83 C3 00 04 */	lwz r30, 4(r3)
/* 806FD2CC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FD2D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FD2D4  38 63 00 30 */	addi r3, r3, 0x30
/* 806FD2D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FD2DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FD2E0  4B C4 91 D1 */	bl PSMTXCopy
/* 806FD2E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FD2E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FD2EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FD2F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FD2F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FD2F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806FD2FC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806FD300  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806FD304  80 1D 06 64 */	lwz r0, 0x664(r29)
/* 806FD308  2C 00 00 00 */	cmpwi r0, 0
/* 806FD30C  40 82 00 48 */	bne lbl_806FD354
/* 806FD310  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 806FD314  38 81 00 1C */	addi r4, r1, 0x1c
/* 806FD318  4B 91 C6 A5 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806FD31C  2C 03 00 00 */	cmpwi r3, 0
/* 806FD320  41 82 00 10 */	beq lbl_806FD330
/* 806FD324  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 806FD328  28 03 00 00 */	cmplwi r3, 0
/* 806FD32C  40 82 00 1C */	bne lbl_806FD348
lbl_806FD330:
/* 806FD330  7F A3 EB 78 */	mr r3, r29
/* 806FD334  4B 91 C9 49 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806FD338  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD33C  38 80 FF FF */	li r4, -1
/* 806FD340  4B 97 A9 9D */	bl __dt__11dBgS_LinChkFv
/* 806FD344  48 00 05 D4 */	b lbl_806FD918
lbl_806FD348:
/* 806FD348  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 806FD34C  38 03 01 90 */	addi r0, r3, 0x190
/* 806FD350  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_806FD354:
/* 806FD354  80 1D 06 64 */	lwz r0, 0x664(r29)
/* 806FD358  2C 00 00 01 */	cmpwi r0, 1
/* 806FD35C  41 82 01 78 */	beq lbl_806FD4D4
/* 806FD360  40 80 00 10 */	bge lbl_806FD370
/* 806FD364  2C 00 00 00 */	cmpwi r0, 0
/* 806FD368  40 80 00 14 */	bge lbl_806FD37C
/* 806FD36C  48 00 03 F0 */	b lbl_806FD75C
lbl_806FD370:
/* 806FD370  2C 00 00 03 */	cmpwi r0, 3
/* 806FD374  40 80 03 E8 */	bge lbl_806FD75C
/* 806FD378  48 00 03 84 */	b lbl_806FD6FC
lbl_806FD37C:
/* 806FD37C  A8 7D 04 B4 */	lha r3, 0x4b4(r29)
/* 806FD380  3C 63 00 01 */	addis r3, r3, 1
/* 806FD384  38 03 87 8C */	addi r0, r3, -30836
/* 806FD388  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 806FD38C  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 806FD390  38 03 43 99 */	addi r0, r3, 0x4399
/* 806FD394  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 806FD398  7F A3 EB 78 */	mr r3, r29
/* 806FD39C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FD3A0  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FD3A4  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806FD3A8  4B 91 D3 91 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FD3AC  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 806FD3B0  7F A3 EB 78 */	mr r3, r29
/* 806FD3B4  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806FD3B8  4B 91 D3 81 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FD3BC  38 03 D1 20 */	addi r0, r3, -12000
/* 806FD3C0  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 806FD3C4  38 00 C7 66 */	li r0, -14490
/* 806FD3C8  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 806FD3CC  38 00 00 C8 */	li r0, 0xc8
/* 806FD3D0  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 806FD3D4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806FD3D8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806FD3DC  7F A3 EB 78 */	mr r3, r29
/* 806FD3E0  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806FD3E4  4B 91 D3 FD */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FD3E8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 806FD3EC  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FD3F0  3B 83 F8 90 */	addi r28, r3, l_HIO@l /* 0x806FF890@l */
/* 806FD3F4  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 806FD3F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 806FD3FC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806FD400  EC 01 00 24 */	fdivs f0, f1, f0
/* 806FD404  EC 02 00 28 */	fsubs f0, f2, f0
/* 806FD408  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 806FD40C  7F A3 EB 78 */	mr r3, r29
/* 806FD410  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806FD414  4B 91 D3 CD */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FD418  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 806FD41C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 806FD420  EC 01 00 28 */	fsubs f0, f1, f0
/* 806FD424  EC 02 00 32 */	fmuls f0, f2, f0
/* 806FD428  FC 00 00 1E */	fctiwz f0, f0
/* 806FD42C  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 806FD430  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806FD434  B0 1D 06 76 */	sth r0, 0x676(r29)
/* 806FD438  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 806FD43C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 806FD440  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806FD444  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806FD448  EC 40 08 28 */	fsubs f2, f0, f1
/* 806FD44C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806FD450  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806FD454  40 80 00 4C */	bge lbl_806FD4A0
/* 806FD458  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806FD45C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806FD460  EC 00 10 2A */	fadds f0, f0, f2
/* 806FD464  EC 41 00 32 */	fmuls f2, f1, f0
/* 806FD468  EC 63 10 2A */	fadds f3, f3, f2
/* 806FD46C  A8 1D 06 76 */	lha r0, 0x676(r29)
/* 806FD470  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 806FD474  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806FD478  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806FD47C  3C 00 43 30 */	lis r0, 0x4330
/* 806FD480  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 806FD484  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 806FD488  EC 00 08 28 */	fsubs f0, f0, f1
/* 806FD48C  EC 00 10 2A */	fadds f0, f0, f2
/* 806FD490  FC 00 00 1E */	fctiwz f0, f0
/* 806FD494  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 806FD498  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 806FD49C  B0 1D 06 76 */	sth r0, 0x676(r29)
lbl_806FD4A0:
/* 806FD4A0  A8 7D 06 76 */	lha r3, 0x676(r29)
/* 806FD4A4  FC 00 18 1E */	fctiwz f0, f3
/* 806FD4A8  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 806FD4AC  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 806FD4B0  7C 00 07 34 */	extsh r0, r0
/* 806FD4B4  7C 03 00 00 */	cmpw r3, r0
/* 806FD4B8  40 81 00 10 */	ble lbl_806FD4C8
/* 806FD4BC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 806FD4C0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 806FD4C4  B0 1D 06 76 */	sth r0, 0x676(r29)
lbl_806FD4C8:
/* 806FD4C8  38 00 00 01 */	li r0, 1
/* 806FD4CC  90 1D 06 64 */	stw r0, 0x664(r29)
/* 806FD4D0  48 00 02 8C */	b lbl_806FD75C
lbl_806FD4D4:
/* 806FD4D4  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 806FD4D8  4B 98 6D E9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 806FD4DC  28 03 00 00 */	cmplwi r3, 0
/* 806FD4E0  41 82 00 90 */	beq lbl_806FD570
/* 806FD4E4  80 1D 0B 5C */	lwz r0, 0xb5c(r29)
/* 806FD4E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FD4EC  41 82 00 20 */	beq lbl_806FD50C
/* 806FD4F0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806FD4F4  3C 80 00 04 */	lis r4, 4
/* 806FD4F8  38 A0 00 28 */	li r5, 0x28
/* 806FD4FC  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 806FD500  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FD504  7D 89 03 A6 */	mtctr r12
/* 806FD508  4E 80 04 21 */	bctrl 
lbl_806FD50C:
/* 806FD50C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037E@ha */
/* 806FD510  38 03 03 7E */	addi r0, r3, 0x037E /* 0x0007037E@l */
/* 806FD514  90 01 00 18 */	stw r0, 0x18(r1)
/* 806FD518  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806FD51C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806FD520  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD524  38 81 00 18 */	addi r4, r1, 0x18
/* 806FD528  38 BD 06 8C */	addi r5, r29, 0x68c
/* 806FD52C  38 C0 00 00 */	li r6, 0
/* 806FD530  38 E0 00 00 */	li r7, 0
/* 806FD534  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FD538  FC 40 08 90 */	fmr f2, f1
/* 806FD53C  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 806FD540  FC 80 18 90 */	fmr f4, f3
/* 806FD544  39 00 00 00 */	li r8, 0
/* 806FD548  4B BA E4 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806FD54C  7F A3 EB 78 */	mr r3, r29
/* 806FD550  38 9D 06 8C */	addi r4, r29, 0x68c
/* 806FD554  4B FF E1 6D */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FD558  7F A3 EB 78 */	mr r3, r29
/* 806FD55C  4B 91 C7 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806FD560  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD564  38 80 FF FF */	li r4, -1
/* 806FD568  4B 97 A7 75 */	bl __dt__11dBgS_LinChkFv
/* 806FD56C  48 00 03 AC */	b lbl_806FD918
lbl_806FD570:
/* 806FD570  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FD574  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FD578  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD57C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 806FD580  4B 90 EE 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 806FD584  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FD588  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FD58C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD590  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 806FD594  4B 90 EE 09 */	bl mDoMtx_XrotM__FPA4_fs
/* 806FD598  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FD59C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806FD5A0  C0 1D 07 5C */	lfs f0, 0x75c(r29)
/* 806FD5A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FD5A8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806FD5AC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FD5B0  38 61 00 38 */	addi r3, r1, 0x38
/* 806FD5B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806FD5B8  4B B7 39 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806FD5BC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806FD5C0  FC 00 00 50 */	fneg f0, f0
/* 806FD5C4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806FD5C8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806FD5CC  A8 9D 06 74 */	lha r4, 0x674(r29)
/* 806FD5D0  38 A0 00 01 */	li r5, 1
/* 806FD5D4  A8 DD 06 76 */	lha r6, 0x676(r29)
/* 806FD5D8  4B B7 30 31 */	bl cLib_addCalcAngleS2__FPssss
/* 806FD5DC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806FD5E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FD5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FD5E8  40 80 00 18 */	bge lbl_806FD600
/* 806FD5EC  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 806FD5F0  38 80 B1 E0 */	li r4, -20000
/* 806FD5F4  38 A0 00 04 */	li r5, 4
/* 806FD5F8  38 C0 05 00 */	li r6, 0x500
/* 806FD5FC  4B B7 30 0D */	bl cLib_addCalcAngleS2__FPssss
lbl_806FD600:
/* 806FD600  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD604  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806FD608  38 BD 06 8C */	addi r5, r29, 0x68c
/* 806FD60C  7F A6 EB 78 */	mr r6, r29
/* 806FD610  4B 97 A7 55 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806FD614  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 806FD618  2C 00 00 00 */	cmpwi r0, 0
/* 806FD61C  41 82 00 2C */	beq lbl_806FD648
/* 806FD620  80 1D 07 DC */	lwz r0, 0x7dc(r29)
/* 806FD624  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806FD628  40 82 00 20 */	bne lbl_806FD648
/* 806FD62C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FD630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FD634  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FD638  38 81 00 50 */	addi r4, r1, 0x50
/* 806FD63C  4B 97 6D 79 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806FD640  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FD644  41 82 01 18 */	beq lbl_806FD75C
lbl_806FD648:
/* 806FD648  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FD64C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806FD650  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806FD654  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806FD658  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806FD65C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806FD660  38 00 00 01 */	li r0, 1
/* 806FD664  98 1D 06 7E */	stb r0, 0x67e(r29)
/* 806FD668  80 1D 0B 00 */	lwz r0, 0xb00(r29)
/* 806FD66C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FD670  90 1D 0B 00 */	stw r0, 0xb00(r29)
/* 806FD674  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 806FD678  2C 00 00 00 */	cmpwi r0, 0
/* 806FD67C  41 82 00 44 */	beq lbl_806FD6C0
/* 806FD680  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070385@ha */
/* 806FD684  38 03 03 85 */	addi r0, r3, 0x0385 /* 0x00070385@l */
/* 806FD688  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FD68C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806FD690  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806FD694  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD698  38 81 00 14 */	addi r4, r1, 0x14
/* 806FD69C  38 BD 06 8C */	addi r5, r29, 0x68c
/* 806FD6A0  38 C0 00 00 */	li r6, 0
/* 806FD6A4  38 E0 00 00 */	li r7, 0
/* 806FD6A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FD6AC  FC 40 08 90 */	fmr f2, f1
/* 806FD6B0  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 806FD6B4  FC 80 18 90 */	fmr f4, f3
/* 806FD6B8  39 00 00 00 */	li r8, 0
/* 806FD6BC  4B BA E2 C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806FD6C0:
/* 806FD6C0  38 7D 09 88 */	addi r3, r29, 0x988
/* 806FD6C4  38 80 00 FF */	li r4, 0xff
/* 806FD6C8  38 A0 00 00 */	li r5, 0
/* 806FD6CC  7F A6 EB 78 */	mr r6, r29
/* 806FD6D0  4B 98 61 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806FD6D4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806FD6D8  4B B6 A2 7D */	bl cM_rndF__Ff
/* 806FD6DC  FC 00 08 1E */	fctiwz f0, f1
/* 806FD6E0  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 806FD6E4  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 806FD6E8  38 03 00 1E */	addi r0, r3, 0x1e
/* 806FD6EC  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 806FD6F0  38 00 00 02 */	li r0, 2
/* 806FD6F4  90 1D 06 64 */	stw r0, 0x664(r29)
/* 806FD6F8  48 00 00 64 */	b lbl_806FD75C
lbl_806FD6FC:
/* 806FD6FC  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 806FD700  2C 00 00 00 */	cmpwi r0, 0
/* 806FD704  40 82 00 58 */	bne lbl_806FD75C
/* 806FD708  7F A3 EB 78 */	mr r3, r29
/* 806FD70C  38 81 00 44 */	addi r4, r1, 0x44
/* 806FD710  4B FF DF B1 */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FD714  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037E@ha */
/* 806FD718  38 03 03 7E */	addi r0, r3, 0x037E /* 0x0007037E@l */
/* 806FD71C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806FD720  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806FD724  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806FD728  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD72C  38 81 00 10 */	addi r4, r1, 0x10
/* 806FD730  38 A1 00 44 */	addi r5, r1, 0x44
/* 806FD734  38 C0 00 00 */	li r6, 0
/* 806FD738  38 E0 00 00 */	li r7, 0
/* 806FD73C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FD740  FC 40 08 90 */	fmr f2, f1
/* 806FD744  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 806FD748  FC 80 18 90 */	fmr f4, f3
/* 806FD74C  39 00 00 00 */	li r8, 0
/* 806FD750  4B BA E2 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806FD754  7F A3 EB 78 */	mr r3, r29
/* 806FD758  4B 91 C5 25 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806FD75C:
/* 806FD75C  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 806FD760  4B 98 6D 01 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806FD764  28 03 00 00 */	cmplwi r3, 0
/* 806FD768  41 82 00 BC */	beq lbl_806FD824
/* 806FD76C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FD770  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FD774  38 63 00 60 */	addi r3, r3, 0x60
/* 806FD778  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FD77C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FD780  4B C4 8D 31 */	bl PSMTXCopy
/* 806FD784  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FD788  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806FD78C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FD790  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806FD794  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806FD798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FD79C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FD7A0  38 81 00 20 */	addi r4, r1, 0x20
/* 806FD7A4  38 BD 06 80 */	addi r5, r29, 0x680
/* 806FD7A8  4B C4 95 C5 */	bl PSMTXMultVec
/* 806FD7AC  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 806FD7B0  81 9D 0B 3C */	lwz r12, 0xb3c(r29)
/* 806FD7B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806FD7B8  7D 89 03 A6 */	mtctr r12
/* 806FD7BC  4E 80 04 21 */	bctrl 
/* 806FD7C0  7F A3 EB 78 */	mr r3, r29
/* 806FD7C4  38 9D 06 80 */	addi r4, r29, 0x680
/* 806FD7C8  4B FF DE F9 */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FD7CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037E@ha */
/* 806FD7D0  38 03 03 7E */	addi r0, r3, 0x037E /* 0x0007037E@l */
/* 806FD7D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FD7D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806FD7DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806FD7E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD7E4  38 81 00 0C */	addi r4, r1, 0xc
/* 806FD7E8  38 BD 06 80 */	addi r5, r29, 0x680
/* 806FD7EC  38 C0 00 00 */	li r6, 0
/* 806FD7F0  38 E0 00 00 */	li r7, 0
/* 806FD7F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FD7F8  FC 40 08 90 */	fmr f2, f1
/* 806FD7FC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 806FD800  FC 80 18 90 */	fmr f4, f3
/* 806FD804  39 00 00 00 */	li r8, 0
/* 806FD808  4B BA E1 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806FD80C  7F A3 EB 78 */	mr r3, r29
/* 806FD810  4B 91 C4 6D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806FD814  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD818  38 80 FF FF */	li r4, -1
/* 806FD81C  4B 97 A4 C1 */	bl __dt__11dBgS_LinChkFv
/* 806FD820  48 00 00 F8 */	b lbl_806FD918
lbl_806FD824:
/* 806FD824  3B 40 00 00 */	li r26, 0
/* 806FD828  3B 80 00 00 */	li r28, 0
lbl_806FD82C:
/* 806FD82C  3B 7C 0C 5C */	addi r27, r28, 0xc5c
/* 806FD830  7F 7D DA 14 */	add r27, r29, r27
/* 806FD834  7F 63 DB 78 */	mr r3, r27
/* 806FD838  4B 98 6C 29 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806FD83C  28 03 00 00 */	cmplwi r3, 0
/* 806FD840  41 82 00 BC */	beq lbl_806FD8FC
/* 806FD844  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FD848  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FD84C  38 63 00 60 */	addi r3, r3, 0x60
/* 806FD850  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FD854  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FD858  4B C4 8C 59 */	bl PSMTXCopy
/* 806FD85C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FD860  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806FD864  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FD868  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806FD86C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806FD870  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FD874  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FD878  38 81 00 20 */	addi r4, r1, 0x20
/* 806FD87C  38 BD 06 80 */	addi r5, r29, 0x680
/* 806FD880  4B C4 94 ED */	bl PSMTXMultVec
/* 806FD884  7F 63 DB 78 */	mr r3, r27
/* 806FD888  81 9B 00 3C */	lwz r12, 0x3c(r27)
/* 806FD88C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806FD890  7D 89 03 A6 */	mtctr r12
/* 806FD894  4E 80 04 21 */	bctrl 
/* 806FD898  7F A3 EB 78 */	mr r3, r29
/* 806FD89C  38 9D 06 80 */	addi r4, r29, 0x680
/* 806FD8A0  4B FF DE 21 */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FD8A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037E@ha */
/* 806FD8A8  38 03 03 7E */	addi r0, r3, 0x037E /* 0x0007037E@l */
/* 806FD8AC  90 01 00 08 */	stw r0, 8(r1)
/* 806FD8B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806FD8B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806FD8B8  80 63 00 00 */	lwz r3, 0(r3)
/* 806FD8BC  38 81 00 08 */	addi r4, r1, 8
/* 806FD8C0  38 BD 06 80 */	addi r5, r29, 0x680
/* 806FD8C4  38 C0 00 00 */	li r6, 0
/* 806FD8C8  38 E0 00 00 */	li r7, 0
/* 806FD8CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FD8D0  FC 40 08 90 */	fmr f2, f1
/* 806FD8D4  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 806FD8D8  FC 80 18 90 */	fmr f4, f3
/* 806FD8DC  39 00 00 00 */	li r8, 0
/* 806FD8E0  4B BA E0 A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806FD8E4  7F A3 EB 78 */	mr r3, r29
/* 806FD8E8  4B 91 C3 95 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806FD8EC  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD8F0  38 80 FF FF */	li r4, -1
/* 806FD8F4  4B 97 A3 E9 */	bl __dt__11dBgS_LinChkFv
/* 806FD8F8  48 00 00 20 */	b lbl_806FD918
lbl_806FD8FC:
/* 806FD8FC  3B 5A 00 01 */	addi r26, r26, 1
/* 806FD900  2C 1A 00 06 */	cmpwi r26, 6
/* 806FD904  3B 9C 01 38 */	addi r28, r28, 0x138
/* 806FD908  41 80 FF 24 */	blt lbl_806FD82C
/* 806FD90C  38 61 00 50 */	addi r3, r1, 0x50
/* 806FD910  38 80 FF FF */	li r4, -1
/* 806FD914  4B 97 A3 C9 */	bl __dt__11dBgS_LinChkFv
lbl_806FD918:
/* 806FD918  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806FD91C  4B C6 49 01 */	bl _restgpr_26
/* 806FD920  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 806FD924  7C 08 03 A6 */	mtlr r0
/* 806FD928  38 21 00 F0 */	addi r1, r1, 0xf0
/* 806FD92C  4E 80 00 20 */	blr 
