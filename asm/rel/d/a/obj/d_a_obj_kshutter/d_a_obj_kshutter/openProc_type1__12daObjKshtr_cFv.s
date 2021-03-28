lbl_80C48D80:
/* 80C48D80  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C48D84  7C 08 02 A6 */	mflr r0
/* 80C48D88  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C48D8C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C48D90  4B 71 94 48 */	b _savegpr_28
/* 80C48D94  7C 7D 1B 78 */	mr r29, r3
/* 80C48D98  3C 60 80 C5 */	lis r3, l_bmd@ha
/* 80C48D9C  3B E3 9C A8 */	addi r31, r3, l_bmd@l
/* 80C48DA0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80C48DA4  4B 3C 46 84 */	b play__14mDoExt_baseAnmFv
/* 80C48DA8  7C 7E 1B 78 */	mr r30, r3
/* 80C48DAC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80C48DB0  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80C48DB4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48DB8  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80C48DBC  40 82 00 A4 */	bne lbl_80C48E60
/* 80C48DC0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C48DC4  7C 04 07 74 */	extsb r4, r0
/* 80C48DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C48DCC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80C48DD0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C48DD4  38 00 00 00 */	li r0, 0
/* 80C48DD8  90 01 00 08 */	stw r0, 8(r1)
/* 80C48DDC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C48DE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C48DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48DE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C48DEC  38 80 00 00 */	li r4, 0
/* 80C48DF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008331@ha */
/* 80C48DF4  38 A5 83 31 */	addi r5, r5, 0x8331 /* 0x00008331@l */
/* 80C48DF8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80C48DFC  38 E0 00 00 */	li r7, 0
/* 80C48E00  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80C48E04  39 20 00 00 */	li r9, 0
/* 80C48E08  39 40 00 FF */	li r10, 0xff
/* 80C48E0C  4B 40 3C 84 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C48E10  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C48E14  7C 04 07 74 */	extsb r4, r0
/* 80C48E18  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C48E1C  38 00 00 00 */	li r0, 0
/* 80C48E20  90 01 00 08 */	stw r0, 8(r1)
/* 80C48E24  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C48E28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C48E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48E30  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C48E34  38 80 00 00 */	li r4, 0
/* 80C48E38  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008332@ha */
/* 80C48E3C  38 A5 83 32 */	addi r5, r5, 0x8332 /* 0x00008332@l */
/* 80C48E40  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80C48E44  38 E0 00 00 */	li r7, 0
/* 80C48E48  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80C48E4C  39 20 00 00 */	li r9, 0
/* 80C48E50  39 40 00 FF */	li r10, 0xff
/* 80C48E54  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48E58  4B 40 3C 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C48E5C  48 00 00 98 */	b lbl_80C48EF4
lbl_80C48E60:
/* 80C48E60  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C48E64  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80C48E68  40 82 00 34 */	bne lbl_80C48E9C
/* 80C48E6C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C48E70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C48E74  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C48E78  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C48E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C48E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C48E84  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C48E88  38 80 00 04 */	li r4, 4
/* 80C48E8C  38 A0 00 0F */	li r5, 0xf
/* 80C48E90  38 C1 00 34 */	addi r6, r1, 0x34
/* 80C48E94  4B 42 6B 90 */	b StartShock__12dVibration_cFii4cXyz
/* 80C48E98  48 00 00 5C */	b lbl_80C48EF4
lbl_80C48E9C:
/* 80C48E9C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80C48EA0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80C48EA4  40 82 00 50 */	bne lbl_80C48EF4
/* 80C48EA8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C48EAC  7C 03 07 74 */	extsb r3, r0
/* 80C48EB0  4B 3E 41 BC */	b dComIfGp_getReverb__Fi
/* 80C48EB4  7C 67 1B 78 */	mr r7, r3
/* 80C48EB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B2@ha */
/* 80C48EBC  38 03 00 B2 */	addi r0, r3, 0x00B2 /* 0x000800B2@l */
/* 80C48EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C48EC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C48EC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C48ECC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C48ED0  38 81 00 24 */	addi r4, r1, 0x24
/* 80C48ED4  38 BD 06 08 */	addi r5, r29, 0x608
/* 80C48ED8  38 C0 00 00 */	li r6, 0
/* 80C48EDC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48EE0  FC 40 08 90 */	fmr f2, f1
/* 80C48EE4  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C48EE8  FC 80 18 90 */	fmr f4, f3
/* 80C48EEC  39 00 00 00 */	li r8, 0
/* 80C48EF0  4B 66 2A 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C48EF4:
/* 80C48EF4  2C 1E 00 00 */	cmpwi r30, 0
/* 80C48EF8  41 82 00 80 */	beq lbl_80C48F78
/* 80C48EFC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C48F00  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C48F04  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C48F08  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C48F0C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C48F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C48F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C48F18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C48F1C  38 80 00 04 */	li r4, 4
/* 80C48F20  38 A0 00 1F */	li r5, 0x1f
/* 80C48F24  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C48F28  4B 42 6A FC */	b StartShock__12dVibration_cFii4cXyz
/* 80C48F2C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C48F30  7C 03 07 74 */	extsb r3, r0
/* 80C48F34  4B 3E 41 38 */	b dComIfGp_getReverb__Fi
/* 80C48F38  7C 67 1B 78 */	mr r7, r3
/* 80C48F3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B4@ha */
/* 80C48F40  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000800B4@l */
/* 80C48F44  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C48F48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C48F4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C48F50  80 63 00 00 */	lwz r3, 0(r3)
/* 80C48F54  38 81 00 20 */	addi r4, r1, 0x20
/* 80C48F58  38 BD 06 08 */	addi r5, r29, 0x608
/* 80C48F5C  38 C0 00 00 */	li r6, 0
/* 80C48F60  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48F64  FC 40 08 90 */	fmr f2, f1
/* 80C48F68  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C48F6C  FC 80 18 90 */	fmr f4, f3
/* 80C48F70  39 00 00 00 */	li r8, 0
/* 80C48F74  4B 66 2A 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C48F78:
/* 80C48F78  7F C3 F3 78 */	mr r3, r30
/* 80C48F7C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C48F80  4B 71 92 A4 */	b _restgpr_28
/* 80C48F84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C48F88  7C 08 03 A6 */	mtlr r0
/* 80C48F8C  38 21 00 50 */	addi r1, r1, 0x50
/* 80C48F90  4E 80 00 20 */	blr 
