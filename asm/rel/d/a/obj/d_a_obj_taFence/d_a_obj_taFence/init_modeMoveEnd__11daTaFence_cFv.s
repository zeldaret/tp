lbl_80D05D2C:
/* 80D05D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D05D30  7C 08 02 A6 */	mflr r0
/* 80D05D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D05D38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D05D3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D05D40  7C 7F 1B 78 */	mr r31, r3
/* 80D05D44  3C 60 80 D0 */	lis r3, lit_3651@ha
/* 80D05D48  3B C3 60 E0 */	addi r30, r3, lit_3651@l
/* 80D05D4C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D05D50  7C 03 07 74 */	extsb r3, r0
/* 80D05D54  4B 32 73 18 */	b dComIfGp_getReverb__Fi
/* 80D05D58  7C 67 1B 78 */	mr r7, r3
/* 80D05D5C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008013F@ha */
/* 80D05D60  38 03 01 3F */	addi r0, r3, 0x013F /* 0x0008013F@l */
/* 80D05D64  90 01 00 08 */	stw r0, 8(r1)
/* 80D05D68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D05D6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D05D70  80 63 00 00 */	lwz r3, 0(r3)
/* 80D05D74  38 81 00 08 */	addi r4, r1, 8
/* 80D05D78  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D05D7C  38 C0 00 00 */	li r6, 0
/* 80D05D80  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80D05D84  FC 40 08 90 */	fmr f2, f1
/* 80D05D88  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80D05D8C  FC 80 18 90 */	fmr f4, f3
/* 80D05D90  39 00 00 00 */	li r8, 0
/* 80D05D94  4B 5A 5B F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D05D98  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D05D9C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D05DA0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80D05DA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D05DA8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D05DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05DB4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D05DB8  3C 80 80 D0 */	lis r4, l_HIO@ha
/* 80D05DBC  38 84 63 3C */	addi r4, r4, l_HIO@l
/* 80D05DC0  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80D05DC4  38 A0 00 0F */	li r5, 0xf
/* 80D05DC8  38 C1 00 0C */	addi r6, r1, 0xc
/* 80D05DCC  4B 36 9C 58 */	b StartShock__12dVibration_cFii4cXyz
/* 80D05DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05DD8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D05DDC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D05DE0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D05DE4  7C 05 07 74 */	extsb r5, r0
/* 80D05DE8  4B 32 F4 18 */	b onSwitch__10dSv_info_cFii
/* 80D05DEC  A8 1F 13 84 */	lha r0, 0x1384(r31)
/* 80D05DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80D05DF4  40 82 00 24 */	bne lbl_80D05E18
/* 80D05DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05E00  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D05E04  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D05E08  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D05E0C  7C 05 07 74 */	extsb r5, r0
/* 80D05E10  4B 32 F4 A0 */	b offSwitch__10dSv_info_cFii
/* 80D05E14  48 00 00 20 */	b lbl_80D05E34
lbl_80D05E18:
/* 80D05E18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05E1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05E20  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D05E24  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D05E28  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D05E2C  7C 05 07 74 */	extsb r5, r0
/* 80D05E30  4B 32 F3 D0 */	b onSwitch__10dSv_info_cFii
lbl_80D05E34:
/* 80D05E34  38 00 00 03 */	li r0, 3
/* 80D05E38  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80D05E3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D05E40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D05E44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D05E48  7C 08 03 A6 */	mtlr r0
/* 80D05E4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D05E50  4E 80 00 20 */	blr 
