lbl_80D24E50:
/* 80D24E50  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D24E54  7C 08 02 A6 */	mflr r0
/* 80D24E58  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D24E5C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D24E60  4B 63 D3 70 */	b _savegpr_26
/* 80D24E64  7C 7E 1B 78 */	mr r30, r3
/* 80D24E68  3C 80 80 D2 */	lis r4, l_midna_offset@ha
/* 80D24E6C  3B E4 6B 5C */	addi r31, r4, l_midna_offset@l
/* 80D24E70  3B 60 00 00 */	li r27, 0
/* 80D24E74  38 80 00 00 */	li r4, 0
/* 80D24E78  4B 2F 58 54 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D24E7C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80D24E80  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D24E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D24E88  40 81 00 0C */	ble lbl_80D24E94
/* 80D24E8C  3B 60 00 01 */	li r27, 1
/* 80D24E90  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
lbl_80D24E94:
/* 80D24E94  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D24E98  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80D24E9C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D24EA0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80D24EA4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D24EA8  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80D24EAC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80D24EB0  4B 2E 85 78 */	b play__14mDoExt_baseAnmFv
/* 80D24EB4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80D24EB8  4B 2E 85 70 */	b play__14mDoExt_baseAnmFv
/* 80D24EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80D24EC0  41 82 00 0C */	beq lbl_80D24ECC
/* 80D24EC4  38 00 00 00 */	li r0, 0
/* 80D24EC8  98 1E 09 5E */	stb r0, 0x95e(r30)
lbl_80D24ECC:
/* 80D24ECC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080257@ha */
/* 80D24ED0  38 03 02 57 */	addi r0, r3, 0x0257 /* 0x00080257@l */
/* 80D24ED4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D24ED8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D24EDC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D24EE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D24EE4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D24EE8  38 BE 09 8C */	addi r5, r30, 0x98c
/* 80D24EEC  38 C0 00 00 */	li r6, 0
/* 80D24EF0  38 E0 00 00 */	li r7, 0
/* 80D24EF4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D24EF8  FC 40 08 90 */	fmr f2, f1
/* 80D24EFC  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80D24F00  FC 80 18 90 */	fmr f4, f3
/* 80D24F04  39 00 00 00 */	li r8, 0
/* 80D24F08  4B 58 76 04 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D24F0C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80D24F10  41 82 00 FC */	beq lbl_80D2500C
/* 80D24F14  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D24F18  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D24F1C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D24F20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D24F24  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D24F28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D24F2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D24F30  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D24F34  38 80 00 08 */	li r4, 8
/* 80D24F38  38 A0 00 1F */	li r5, 0x1f
/* 80D24F3C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80D24F40  4B 34 AA E4 */	b StartShock__12dVibration_cFii4cXyz
/* 80D24F44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D24F48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D24F4C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D24F50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D24F54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D24F58  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D24F5C  38 61 00 30 */	addi r3, r1, 0x30
/* 80D24F60  4B 2F 8D 5C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80D24F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D24F68  41 82 00 10 */	beq lbl_80D24F78
/* 80D24F6C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80D24F70  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80D24F74  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80D24F78:
/* 80D24F78  3B 40 00 00 */	li r26, 0
/* 80D24F7C  3B A0 00 00 */	li r29, 0
/* 80D24F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D24F84  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80D24F88  3B 9F 00 54 */	addi r28, r31, 0x54
lbl_80D24F8C:
/* 80D24F8C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80D24F90  38 80 00 00 */	li r4, 0
/* 80D24F94  90 81 00 08 */	stw r4, 8(r1)
/* 80D24F98  38 00 FF FF */	li r0, -1
/* 80D24F9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D24FA0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D24FA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D24FA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D24FAC  38 80 00 00 */	li r4, 0
/* 80D24FB0  7C BC EA 2E */	lhzx r5, r28, r29
/* 80D24FB4  38 C1 00 30 */	addi r6, r1, 0x30
/* 80D24FB8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80D24FBC  39 00 00 00 */	li r8, 0
/* 80D24FC0  39 20 00 00 */	li r9, 0
/* 80D24FC4  39 40 00 FF */	li r10, 0xff
/* 80D24FC8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D24FCC  4B 32 7A C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D24FD0  3B 5A 00 01 */	addi r26, r26, 1
/* 80D24FD4  2C 1A 00 07 */	cmpwi r26, 7
/* 80D24FD8  3B BD 00 02 */	addi r29, r29, 2
/* 80D24FDC  41 80 FF B0 */	blt lbl_80D24F8C
/* 80D24FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D24FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D24FE8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D24FEC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D24FF0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D24FF4  7C 05 07 74 */	extsb r5, r0
/* 80D24FF8  4B 31 02 08 */	b onSwitch__10dSv_info_cFii
/* 80D24FFC  7F C3 F3 78 */	mr r3, r30
/* 80D25000  48 00 01 CD */	bl setDzb__14daObjVolcBom_cFv
/* 80D25004  7F C3 F3 78 */	mr r3, r30
/* 80D25008  48 00 00 1D */	bl init_modeWaitEndFallDemo__14daObjVolcBom_cFv
lbl_80D2500C:
/* 80D2500C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D25010  4B 63 D2 0C */	b _restgpr_26
/* 80D25014  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D25018  7C 08 03 A6 */	mtlr r0
/* 80D2501C  38 21 00 60 */	addi r1, r1, 0x60
/* 80D25020  4E 80 00 20 */	blr 
