lbl_80D01B60:
/* 80D01B60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D01B64  7C 08 02 A6 */	mflr r0
/* 80D01B68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D01B6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D01B70  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D01B74  7C 7F 1B 78 */	mr r31, r3
/* 80D01B78  3C 60 80 D0 */	lis r3, l_bmd@ha
/* 80D01B7C  3B C3 20 6C */	addi r30, r3, l_bmd@l
/* 80D01B80  A8 7F 05 B8 */	lha r3, 0x5b8(r31)
/* 80D01B84  38 03 00 01 */	addi r0, r3, 1
/* 80D01B88  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80D01B8C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80D01B90  A8 1F 05 C4 */	lha r0, 0x5c4(r31)
/* 80D01B94  54 03 70 22 */	slwi r3, r0, 0xe
/* 80D01B98  38 00 00 03 */	li r0, 3
/* 80D01B9C  7C 03 03 D6 */	divw r0, r3, r0
/* 80D01BA0  7C 04 02 14 */	add r0, r4, r0
/* 80D01BA4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D01BA8  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80D01BAC  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80D01BB0  C8 5E 00 38 */	lfd f2, 0x38(r30)
/* 80D01BB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D01BB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D01BBC  3C 80 43 30 */	lis r4, 0x4330
/* 80D01BC0  90 81 00 20 */	stw r4, 0x20(r1)
/* 80D01BC4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80D01BC8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80D01BCC  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80D01BD0  54 00 08 3C */	slwi r0, r0, 1
/* 80D01BD4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80D01BD8  7C 03 02 AE */	lhax r0, r3, r0
/* 80D01BDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D01BE0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D01BE4  90 81 00 28 */	stw r4, 0x28(r1)
/* 80D01BE8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80D01BEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D01BF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D01BF4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D01BF8  FC 00 00 1E */	fctiwz f0, f0
/* 80D01BFC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80D01C00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D01C04  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 80D01C08  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80D01C0C  2C 00 00 01 */	cmpwi r0, 1
/* 80D01C10  40 82 00 10 */	bne lbl_80D01C20
/* 80D01C14  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80D01C18  7C 00 00 D0 */	neg r0, r0
/* 80D01C1C  B0 1F 05 BA */	sth r0, 0x5ba(r31)
lbl_80D01C20:
/* 80D01C20  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D01C24  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80D01C28  7C 03 02 14 */	add r0, r3, r0
/* 80D01C2C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D01C30  A8 9F 05 B8 */	lha r4, 0x5b8(r31)
/* 80D01C34  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80D01C38  54 00 08 3C */	slwi r0, r0, 1
/* 80D01C3C  38 7E 00 18 */	addi r3, r30, 0x18
/* 80D01C40  7C 03 02 AE */	lhax r0, r3, r0
/* 80D01C44  7C 04 00 00 */	cmpw r4, r0
/* 80D01C48  40 82 02 50 */	bne lbl_80D01E98
/* 80D01C4C  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80D01C50  2C 00 00 00 */	cmpwi r0, 0
/* 80D01C54  40 82 00 14 */	bne lbl_80D01C68
/* 80D01C58  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01C5C  38 03 00 01 */	addi r0, r3, 1
/* 80D01C60  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
/* 80D01C64  48 00 00 10 */	b lbl_80D01C74
lbl_80D01C68:
/* 80D01C68  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01C6C  38 03 FF FF */	addi r0, r3, -1
/* 80D01C70  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
lbl_80D01C74:
/* 80D01C74  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01C78  88 1F 05 CE */	lbz r0, 0x5ce(r31)
/* 80D01C7C  7C 03 00 00 */	cmpw r3, r0
/* 80D01C80  40 82 00 8C */	bne lbl_80D01D0C
/* 80D01C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01C88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01C8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D01C90  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D01C94  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01C98  7C 05 07 74 */	extsb r5, r0
/* 80D01C9C  4B 33 35 64 */	b onSwitch__10dSv_info_cFii
/* 80D01CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01CA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01CA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D01CAC  54 04 66 3E */	rlwinm r4, r0, 0xc, 0x18, 0x1f
/* 80D01CB0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01CB4  7C 05 07 74 */	extsb r5, r0
/* 80D01CB8  4B 33 35 F8 */	b offSwitch__10dSv_info_cFii
/* 80D01CBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D01CC0  7C 03 07 74 */	extsb r3, r0
/* 80D01CC4  4B 32 B3 A8 */	b dComIfGp_getReverb__Fi
/* 80D01CC8  7C 67 1B 78 */	mr r7, r3
/* 80D01CCC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B0@ha */
/* 80D01CD0  38 03 01 B0 */	addi r0, r3, 0x01B0 /* 0x000801B0@l */
/* 80D01CD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D01CD8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D01CDC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D01CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D01CE4  38 81 00 10 */	addi r4, r1, 0x10
/* 80D01CE8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D01CEC  38 C0 00 00 */	li r6, 0
/* 80D01CF0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80D01CF4  FC 40 08 90 */	fmr f2, f1
/* 80D01CF8  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80D01CFC  FC 80 18 90 */	fmr f4, f3
/* 80D01D00  39 00 00 00 */	li r8, 0
/* 80D01D04  4B 5A 9C 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D01D08  48 00 00 DC */	b lbl_80D01DE4
lbl_80D01D0C:
/* 80D01D0C  88 1F 05 CF */	lbz r0, 0x5cf(r31)
/* 80D01D10  7C 00 00 D0 */	neg r0, r0
/* 80D01D14  7C 03 00 00 */	cmpw r3, r0
/* 80D01D18  40 82 00 8C */	bne lbl_80D01DA4
/* 80D01D1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01D20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01D24  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D01D28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D01D2C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01D30  7C 05 07 74 */	extsb r5, r0
/* 80D01D34  4B 33 35 7C */	b offSwitch__10dSv_info_cFii
/* 80D01D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01D40  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D01D44  54 04 66 3E */	rlwinm r4, r0, 0xc, 0x18, 0x1f
/* 80D01D48  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01D4C  7C 05 07 74 */	extsb r5, r0
/* 80D01D50  4B 33 34 B0 */	b onSwitch__10dSv_info_cFii
/* 80D01D54  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D01D58  7C 03 07 74 */	extsb r3, r0
/* 80D01D5C  4B 32 B3 10 */	b dComIfGp_getReverb__Fi
/* 80D01D60  7C 67 1B 78 */	mr r7, r3
/* 80D01D64  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C3@ha */
/* 80D01D68  38 03 01 C3 */	addi r0, r3, 0x01C3 /* 0x000801C3@l */
/* 80D01D6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D01D70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D01D74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D01D78  80 63 00 00 */	lwz r3, 0(r3)
/* 80D01D7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80D01D80  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D01D84  38 C0 00 00 */	li r6, 0
/* 80D01D88  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80D01D8C  FC 40 08 90 */	fmr f2, f1
/* 80D01D90  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80D01D94  FC 80 18 90 */	fmr f4, f3
/* 80D01D98  39 00 00 00 */	li r8, 0
/* 80D01D9C  4B 5A 9B E8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D01DA0  48 00 00 44 */	b lbl_80D01DE4
lbl_80D01DA4:
/* 80D01DA4  7C 60 07 35 */	extsh. r0, r3
/* 80D01DA8  40 82 00 3C */	bne lbl_80D01DE4
/* 80D01DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01DB4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D01DB8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D01DBC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01DC0  7C 05 07 74 */	extsb r5, r0
/* 80D01DC4  4B 33 34 EC */	b offSwitch__10dSv_info_cFii
/* 80D01DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01DD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D01DD4  54 04 66 3E */	rlwinm r4, r0, 0xc, 0x18, 0x1f
/* 80D01DD8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01DDC  7C 05 07 74 */	extsb r5, r0
/* 80D01DE0  4B 33 34 D0 */	b offSwitch__10dSv_info_cFii
lbl_80D01DE4:
/* 80D01DE4  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01DE8  88 1F 05 CE */	lbz r0, 0x5ce(r31)
/* 80D01DEC  7C 03 00 00 */	cmpw r3, r0
/* 80D01DF0  41 82 00 60 */	beq lbl_80D01E50
/* 80D01DF4  88 1F 05 CF */	lbz r0, 0x5cf(r31)
/* 80D01DF8  7C 00 00 D0 */	neg r0, r0
/* 80D01DFC  7C 03 00 00 */	cmpw r3, r0
/* 80D01E00  41 82 00 50 */	beq lbl_80D01E50
/* 80D01E04  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D01E08  7C 03 07 74 */	extsb r3, r0
/* 80D01E0C  4B 32 B2 60 */	b dComIfGp_getReverb__Fi
/* 80D01E10  7C 67 1B 78 */	mr r7, r3
/* 80D01E14  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C3@ha */
/* 80D01E18  38 03 01 C3 */	addi r0, r3, 0x01C3 /* 0x000801C3@l */
/* 80D01E1C  90 01 00 08 */	stw r0, 8(r1)
/* 80D01E20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D01E24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D01E28  80 63 00 00 */	lwz r3, 0(r3)
/* 80D01E2C  38 81 00 08 */	addi r4, r1, 8
/* 80D01E30  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D01E34  38 C0 00 00 */	li r6, 0
/* 80D01E38  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80D01E3C  FC 40 08 90 */	fmr f2, f1
/* 80D01E40  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80D01E44  FC 80 18 90 */	fmr f4, f3
/* 80D01E48  39 00 00 00 */	li r8, 0
/* 80D01E4C  4B 5A 9B 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D01E50:
/* 80D01E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01E54  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D01E58  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80D01E5C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80D01E60  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80D01E64  90 03 05 70 */	stw r0, 0x570(r3)
/* 80D01E68  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D01E6C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D01E70  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80D01E74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D01E78  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D01E7C  38 64 5B D4 */	addi r3, r4, 0x5bd4
/* 80D01E80  38 80 00 08 */	li r4, 8
/* 80D01E84  38 A0 00 1F */	li r5, 0x1f
/* 80D01E88  38 C1 00 14 */	addi r6, r1, 0x14
/* 80D01E8C  4B 36 DB 98 */	b StartShock__12dVibration_cFii4cXyz
/* 80D01E90  7F E3 FB 78 */	mr r3, r31
/* 80D01E94  4B FF F2 CD */	bl init_modeWait__13daObjSwTurn_cFv
lbl_80D01E98:
/* 80D01E98  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D01E9C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D01EA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D01EA4  7C 08 03 A6 */	mtlr r0
/* 80D01EA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D01EAC  4E 80 00 20 */	blr 
