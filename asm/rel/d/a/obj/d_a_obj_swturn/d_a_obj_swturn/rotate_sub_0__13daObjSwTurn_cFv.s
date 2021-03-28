lbl_80D01958:
/* 80D01958  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D0195C  7C 08 02 A6 */	mflr r0
/* 80D01960  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D01964  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D01968  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D0196C  7C 7E 1B 78 */	mr r30, r3
/* 80D01970  3C 60 80 D0 */	lis r3, l_bmd@ha
/* 80D01974  3B E3 20 6C */	addi r31, r3, l_bmd@l
/* 80D01978  A8 7E 05 B8 */	lha r3, 0x5b8(r30)
/* 80D0197C  38 03 00 01 */	addi r0, r3, 1
/* 80D01980  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80D01984  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80D01988  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 80D0198C  54 00 70 22 */	slwi r0, r0, 0xe
/* 80D01990  7C 03 02 14 */	add r0, r3, r0
/* 80D01994  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D01998  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80D0199C  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 80D019A0  C8 5F 00 38 */	lfd f2, 0x38(r31)
/* 80D019A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D019A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D019AC  3C 80 43 30 */	lis r4, 0x4330
/* 80D019B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D019B4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D019B8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80D019BC  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80D019C0  54 00 08 3C */	slwi r0, r0, 1
/* 80D019C4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80D019C8  7C 03 02 AE */	lhax r0, r3, r0
/* 80D019CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D019D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D019D4  90 81 00 20 */	stw r4, 0x20(r1)
/* 80D019D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80D019DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D019E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D019E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D019E8  FC 00 00 1E */	fctiwz f0, f0
/* 80D019EC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D019F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D019F4  B0 1E 05 BA */	sth r0, 0x5ba(r30)
/* 80D019F8  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80D019FC  2C 00 00 01 */	cmpwi r0, 1
/* 80D01A00  40 82 00 10 */	bne lbl_80D01A10
/* 80D01A04  A8 1E 05 BA */	lha r0, 0x5ba(r30)
/* 80D01A08  7C 00 00 D0 */	neg r0, r0
/* 80D01A0C  B0 1E 05 BA */	sth r0, 0x5ba(r30)
lbl_80D01A10:
/* 80D01A10  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80D01A14  A8 1E 05 BA */	lha r0, 0x5ba(r30)
/* 80D01A18  7C 03 02 14 */	add r0, r3, r0
/* 80D01A1C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D01A20  A8 9E 05 B8 */	lha r4, 0x5b8(r30)
/* 80D01A24  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80D01A28  54 00 08 3C */	slwi r0, r0, 1
/* 80D01A2C  38 7F 00 18 */	addi r3, r31, 0x18
/* 80D01A30  7C 03 02 AE */	lhax r0, r3, r0
/* 80D01A34  7C 04 00 00 */	cmpw r4, r0
/* 80D01A38  40 82 01 10 */	bne lbl_80D01B48
/* 80D01A3C  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80D01A40  2C 00 00 00 */	cmpwi r0, 0
/* 80D01A44  40 82 00 14 */	bne lbl_80D01A58
/* 80D01A48  A8 7E 05 C4 */	lha r3, 0x5c4(r30)
/* 80D01A4C  38 03 00 01 */	addi r0, r3, 1
/* 80D01A50  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 80D01A54  48 00 00 10 */	b lbl_80D01A64
lbl_80D01A58:
/* 80D01A58  A8 7E 05 C4 */	lha r3, 0x5c4(r30)
/* 80D01A5C  38 03 FF FF */	addi r0, r3, -1
/* 80D01A60  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
lbl_80D01A64:
/* 80D01A64  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 80D01A68  2C 00 00 01 */	cmpwi r0, 1
/* 80D01A6C  40 82 00 24 */	bne lbl_80D01A90
/* 80D01A70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01A74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01A78  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D01A7C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D01A80  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D01A84  7C 05 07 74 */	extsb r5, r0
/* 80D01A88  4B 33 37 78 */	b onSwitch__10dSv_info_cFii
/* 80D01A8C  48 00 00 20 */	b lbl_80D01AAC
lbl_80D01A90:
/* 80D01A90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01A94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01A98  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D01A9C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D01AA0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D01AA4  7C 05 07 74 */	extsb r5, r0
/* 80D01AA8  4B 33 38 08 */	b offSwitch__10dSv_info_cFii
lbl_80D01AAC:
/* 80D01AAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01AB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01AB4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D01AB8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80D01ABC  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80D01AC0  90 03 05 70 */	stw r0, 0x570(r3)
/* 80D01AC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D01AC8  7C 03 07 74 */	extsb r3, r0
/* 80D01ACC  4B 32 B5 A0 */	b dComIfGp_getReverb__Fi
/* 80D01AD0  7C 67 1B 78 */	mr r7, r3
/* 80D01AD4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AB@ha */
/* 80D01AD8  38 03 01 AB */	addi r0, r3, 0x01AB /* 0x000801AB@l */
/* 80D01ADC  90 01 00 08 */	stw r0, 8(r1)
/* 80D01AE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D01AE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D01AE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D01AEC  38 81 00 08 */	addi r4, r1, 8
/* 80D01AF0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D01AF4  38 C0 00 00 */	li r6, 0
/* 80D01AF8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80D01AFC  FC 40 08 90 */	fmr f2, f1
/* 80D01B00  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80D01B04  FC 80 18 90 */	fmr f4, f3
/* 80D01B08  39 00 00 00 */	li r8, 0
/* 80D01B0C  4B 5A 9E 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D01B10  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D01B14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D01B18  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D01B1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D01B20  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D01B24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01B28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01B2C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D01B30  38 80 00 08 */	li r4, 8
/* 80D01B34  38 A0 00 1F */	li r5, 0x1f
/* 80D01B38  38 C1 00 0C */	addi r6, r1, 0xc
/* 80D01B3C  4B 36 DE E8 */	b StartShock__12dVibration_cFii4cXyz
/* 80D01B40  7F C3 F3 78 */	mr r3, r30
/* 80D01B44  4B FF F6 1D */	bl init_modeWait__13daObjSwTurn_cFv
lbl_80D01B48:
/* 80D01B48  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D01B4C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D01B50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D01B54  7C 08 03 A6 */	mtlr r0
/* 80D01B58  38 21 00 40 */	addi r1, r1, 0x40
/* 80D01B5C  4E 80 00 20 */	blr 
