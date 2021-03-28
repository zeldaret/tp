lbl_806D5D54:
/* 806D5D54  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806D5D58  7C 08 02 A6 */	mflr r0
/* 806D5D5C  90 01 00 74 */	stw r0, 0x74(r1)
/* 806D5D60  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806D5D64  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806D5D68  39 61 00 60 */	addi r11, r1, 0x60
/* 806D5D6C  4B C8 C4 64 */	b _savegpr_26
/* 806D5D70  7C 7E 1B 78 */	mr r30, r3
/* 806D5D74  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D5D78  3B E3 79 A0 */	addi r31, r3, lit_3906@l
/* 806D5D7C  88 1E 0A 75 */	lbz r0, 0xa75(r30)
/* 806D5D80  28 00 00 00 */	cmplwi r0, 0
/* 806D5D84  40 82 00 0C */	bne lbl_806D5D90
/* 806D5D88  38 60 00 01 */	li r3, 1
/* 806D5D8C  48 00 05 50 */	b lbl_806D62DC
lbl_806D5D90:
/* 806D5D90  88 1E 0A 69 */	lbz r0, 0xa69(r30)
/* 806D5D94  28 00 00 01 */	cmplwi r0, 1
/* 806D5D98  40 82 01 A8 */	bne lbl_806D5F40
/* 806D5D9C  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5DA0  83 A3 00 04 */	lwz r29, 4(r3)
/* 806D5DA4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806D5DA8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806D5DAC  38 80 00 00 */	li r4, 0
/* 806D5DB0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806D5DB4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806D5DB8  4B AC DA 0C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806D5DBC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806D5DC0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806D5DC4  80 9D 00 04 */	lwz r4, 4(r29)
/* 806D5DC8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806D5DCC  4B AC EF D4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806D5DD0  83 9D 00 04 */	lwz r28, 4(r29)
/* 806D5DD4  3B 40 00 00 */	li r26, 0
/* 806D5DD8  48 00 01 1C */	b lbl_806D5EF4
lbl_806D5DDC:
/* 806D5DDC  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806D5DE0  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806D5DE4  7F 63 00 2E */	lwzx r27, r3, r0
/* 806D5DE8  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 806D5DEC  38 80 00 00 */	li r4, 0
/* 806D5DF0  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5DF4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D5DF8  7D 89 03 A6 */	mtctr r12
/* 806D5DFC  4E 80 04 21 */	bctrl 
/* 806D5E00  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5E04  FC 00 00 1E */	fctiwz f0, f0
/* 806D5E08  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806D5E0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806D5E10  98 03 00 00 */	stb r0, 0(r3)
/* 806D5E14  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 806D5E18  38 80 00 00 */	li r4, 0
/* 806D5E1C  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5E20  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D5E24  7D 89 03 A6 */	mtctr r12
/* 806D5E28  4E 80 04 21 */	bctrl 
/* 806D5E2C  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5E30  FC 00 00 1E */	fctiwz f0, f0
/* 806D5E34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806D5E38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D5E3C  98 03 00 01 */	stb r0, 1(r3)
/* 806D5E40  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 806D5E44  38 80 00 00 */	li r4, 0
/* 806D5E48  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5E4C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D5E50  7D 89 03 A6 */	mtctr r12
/* 806D5E54  4E 80 04 21 */	bctrl 
/* 806D5E58  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5E5C  FC 00 00 1E */	fctiwz f0, f0
/* 806D5E60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806D5E64  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806D5E68  98 03 00 02 */	stb r0, 2(r3)
/* 806D5E6C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806D5E70  38 80 00 03 */	li r4, 3
/* 806D5E74  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5E78  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806D5E7C  7D 89 03 A6 */	mtctr r12
/* 806D5E80  4E 80 04 21 */	bctrl 
/* 806D5E84  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5E88  FC 00 00 1E */	fctiwz f0, f0
/* 806D5E8C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806D5E90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D5E94  98 03 00 00 */	stb r0, 0(r3)
/* 806D5E98  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806D5E9C  38 80 00 03 */	li r4, 3
/* 806D5EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5EA4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806D5EA8  7D 89 03 A6 */	mtctr r12
/* 806D5EAC  4E 80 04 21 */	bctrl 
/* 806D5EB0  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5EB4  FC 00 00 1E */	fctiwz f0, f0
/* 806D5EB8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D5EBC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D5EC0  98 03 00 01 */	stb r0, 1(r3)
/* 806D5EC4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806D5EC8  38 80 00 03 */	li r4, 3
/* 806D5ECC  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5ED0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806D5ED4  7D 89 03 A6 */	mtctr r12
/* 806D5ED8  4E 80 04 21 */	bctrl 
/* 806D5EDC  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5EE0  FC 00 00 1E */	fctiwz f0, f0
/* 806D5EE4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806D5EE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D5EEC  98 03 00 02 */	stb r0, 2(r3)
/* 806D5EF0  3B 5A 00 01 */	addi r26, r26, 1
lbl_806D5EF4:
/* 806D5EF4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806D5EF8  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 806D5EFC  7C 03 00 40 */	cmplw r3, r0
/* 806D5F00  41 80 FE DC */	blt lbl_806D5DDC
/* 806D5F04  7F C3 F3 78 */	mr r3, r30
/* 806D5F08  80 9D 00 04 */	lwz r4, 4(r29)
/* 806D5F0C  4B 94 75 20 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806D5F10  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5F14  4B 93 B2 AC */	b entryDL__16mDoExt_McaMorfSOFv
/* 806D5F18  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806D5F1C  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 806D5F20  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 806D5F24  38 9E 06 E4 */	addi r4, r30, 0x6e4
/* 806D5F28  38 A0 00 00 */	li r5, 0
/* 806D5F2C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 806D5F30  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806D5F34  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806D5F38  4B 95 71 7C */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 806D5F3C  48 00 03 9C */	b lbl_806D62D8
lbl_806D5F40:
/* 806D5F40  28 00 00 02 */	cmplwi r0, 2
/* 806D5F44  40 82 01 F0 */	bne lbl_806D6134
/* 806D5F48  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5F4C  83 63 00 04 */	lwz r27, 4(r3)
/* 806D5F50  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806D5F54  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806D5F58  38 80 00 00 */	li r4, 0
/* 806D5F5C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806D5F60  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806D5F64  4B AC D8 60 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806D5F68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806D5F6C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806D5F70  80 9B 00 04 */	lwz r4, 4(r27)
/* 806D5F74  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806D5F78  4B AC EE 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806D5F7C  83 9B 00 04 */	lwz r28, 4(r27)
/* 806D5F80  3B 40 00 00 */	li r26, 0
/* 806D5F84  C3 FF 01 34 */	lfs f31, 0x134(r31)
/* 806D5F88  48 00 01 28 */	b lbl_806D60B0
lbl_806D5F8C:
/* 806D5F8C  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806D5F90  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806D5F94  7F A3 00 2E */	lwzx r29, r3, r0
/* 806D5F98  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806D5F9C  38 80 00 00 */	li r4, 0
/* 806D5FA0  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5FA4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806D5FA8  7D 89 03 A6 */	mtctr r12
/* 806D5FAC  4E 80 04 21 */	bctrl 
/* 806D5FB0  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5FB4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806D5FB8  FC 00 00 1E */	fctiwz f0, f0
/* 806D5FBC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806D5FC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D5FC4  B0 03 00 00 */	sth r0, 0(r3)
/* 806D5FC8  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806D5FCC  38 80 00 00 */	li r4, 0
/* 806D5FD0  81 83 00 00 */	lwz r12, 0(r3)
/* 806D5FD4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806D5FD8  7D 89 03 A6 */	mtctr r12
/* 806D5FDC  4E 80 04 21 */	bctrl 
/* 806D5FE0  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D5FE4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806D5FE8  FC 00 00 1E */	fctiwz f0, f0
/* 806D5FEC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D5FF0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D5FF4  B0 03 00 02 */	sth r0, 2(r3)
/* 806D5FF8  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806D5FFC  38 80 00 00 */	li r4, 0
/* 806D6000  81 83 00 00 */	lwz r12, 0(r3)
/* 806D6004  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806D6008  7D 89 03 A6 */	mtctr r12
/* 806D600C  4E 80 04 21 */	bctrl 
/* 806D6010  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D6014  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806D6018  FC 00 00 1E */	fctiwz f0, f0
/* 806D601C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806D6020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D6024  B0 03 00 04 */	sth r0, 4(r3)
/* 806D6028  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 806D602C  38 80 00 00 */	li r4, 0
/* 806D6030  81 83 00 00 */	lwz r12, 0(r3)
/* 806D6034  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D6038  7D 89 03 A6 */	mtctr r12
/* 806D603C  4E 80 04 21 */	bctrl 
/* 806D6040  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D6044  FC 00 00 1E */	fctiwz f0, f0
/* 806D6048  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806D604C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806D6050  98 03 00 00 */	stb r0, 0(r3)
/* 806D6054  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 806D6058  38 80 00 00 */	li r4, 0
/* 806D605C  81 83 00 00 */	lwz r12, 0(r3)
/* 806D6060  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D6064  7D 89 03 A6 */	mtctr r12
/* 806D6068  4E 80 04 21 */	bctrl 
/* 806D606C  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D6070  FC 00 00 1E */	fctiwz f0, f0
/* 806D6074  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806D6078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D607C  98 03 00 01 */	stb r0, 1(r3)
/* 806D6080  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 806D6084  38 80 00 00 */	li r4, 0
/* 806D6088  81 83 00 00 */	lwz r12, 0(r3)
/* 806D608C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D6090  7D 89 03 A6 */	mtctr r12
/* 806D6094  4E 80 04 21 */	bctrl 
/* 806D6098  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D609C  FC 00 00 1E */	fctiwz f0, f0
/* 806D60A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806D60A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806D60A8  98 03 00 02 */	stb r0, 2(r3)
/* 806D60AC  3B 5A 00 01 */	addi r26, r26, 1
lbl_806D60B0:
/* 806D60B0  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806D60B4  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 806D60B8  7C 03 00 40 */	cmplw r3, r0
/* 806D60BC  41 80 FE D0 */	blt lbl_806D5F8C
/* 806D60C0  7F C3 F3 78 */	mr r3, r30
/* 806D60C4  80 9B 00 04 */	lwz r4, 4(r27)
/* 806D60C8  4B 94 73 64 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806D60CC  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D60D0  4B 93 B0 F0 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806D60D4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806D60D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D60DC  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 806D60E0  EC 20 18 2A */	fadds f1, f0, f3
/* 806D60E4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806D60E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806D60EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806D60F0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806D60F4  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 806D60F8  38 80 00 01 */	li r4, 1
/* 806D60FC  7F 65 DB 78 */	mr r5, r27
/* 806D6100  38 C1 00 08 */	addi r6, r1, 8
/* 806D6104  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 806D6108  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806D610C  C0 9E 06 8C */	lfs f4, 0x68c(r30)
/* 806D6110  38 FE 06 E4 */	addi r7, r30, 0x6e4
/* 806D6114  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806D6118  39 20 00 00 */	li r9, 0
/* 806D611C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806D6120  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806D6124  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806D6128  4B 95 87 E8 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806D612C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 806D6130  48 00 01 A8 */	b lbl_806D62D8
lbl_806D6134:
/* 806D6134  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806D6138  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806D613C  38 80 00 00 */	li r4, 0
/* 806D6140  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806D6144  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806D6148  4B AC D6 7C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806D614C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806D6150  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806D6154  80 9E 09 68 */	lwz r4, 0x968(r30)
/* 806D6158  80 84 00 04 */	lwz r4, 4(r4)
/* 806D615C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806D6160  4B AC EC 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806D6164  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 806D6168  83 63 00 04 */	lwz r27, 4(r3)
/* 806D616C  3B 40 00 00 */	li r26, 0
/* 806D6170  48 00 01 1C */	b lbl_806D628C
lbl_806D6174:
/* 806D6174  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 806D6178  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806D617C  7F 83 00 2E */	lwzx r28, r3, r0
/* 806D6180  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 806D6184  38 80 00 00 */	li r4, 0
/* 806D6188  81 83 00 00 */	lwz r12, 0(r3)
/* 806D618C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D6190  7D 89 03 A6 */	mtctr r12
/* 806D6194  4E 80 04 21 */	bctrl 
/* 806D6198  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D619C  FC 00 00 1E */	fctiwz f0, f0
/* 806D61A0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806D61A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D61A8  98 03 00 00 */	stb r0, 0(r3)
/* 806D61AC  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 806D61B0  38 80 00 00 */	li r4, 0
/* 806D61B4  81 83 00 00 */	lwz r12, 0(r3)
/* 806D61B8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D61BC  7D 89 03 A6 */	mtctr r12
/* 806D61C0  4E 80 04 21 */	bctrl 
/* 806D61C4  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D61C8  FC 00 00 1E */	fctiwz f0, f0
/* 806D61CC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D61D0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D61D4  98 03 00 01 */	stb r0, 1(r3)
/* 806D61D8  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 806D61DC  38 80 00 00 */	li r4, 0
/* 806D61E0  81 83 00 00 */	lwz r12, 0(r3)
/* 806D61E4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806D61E8  7D 89 03 A6 */	mtctr r12
/* 806D61EC  4E 80 04 21 */	bctrl 
/* 806D61F0  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D61F4  FC 00 00 1E */	fctiwz f0, f0
/* 806D61F8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806D61FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D6200  98 03 00 02 */	stb r0, 2(r3)
/* 806D6204  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806D6208  38 80 00 03 */	li r4, 3
/* 806D620C  81 83 00 00 */	lwz r12, 0(r3)
/* 806D6210  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806D6214  7D 89 03 A6 */	mtctr r12
/* 806D6218  4E 80 04 21 */	bctrl 
/* 806D621C  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D6220  FC 00 00 1E */	fctiwz f0, f0
/* 806D6224  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806D6228  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806D622C  98 03 00 00 */	stb r0, 0(r3)
/* 806D6230  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806D6234  38 80 00 03 */	li r4, 3
/* 806D6238  81 83 00 00 */	lwz r12, 0(r3)
/* 806D623C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806D6240  7D 89 03 A6 */	mtctr r12
/* 806D6244  4E 80 04 21 */	bctrl 
/* 806D6248  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D624C  FC 00 00 1E */	fctiwz f0, f0
/* 806D6250  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806D6254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D6258  98 03 00 01 */	stb r0, 1(r3)
/* 806D625C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806D6260  38 80 00 03 */	li r4, 3
/* 806D6264  81 83 00 00 */	lwz r12, 0(r3)
/* 806D6268  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806D626C  7D 89 03 A6 */	mtctr r12
/* 806D6270  4E 80 04 21 */	bctrl 
/* 806D6274  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 806D6278  FC 00 00 1E */	fctiwz f0, f0
/* 806D627C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806D6280  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806D6284  98 03 00 02 */	stb r0, 2(r3)
/* 806D6288  3B 5A 00 01 */	addi r26, r26, 1
lbl_806D628C:
/* 806D628C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806D6290  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 806D6294  7C 03 00 40 */	cmplw r3, r0
/* 806D6298  41 80 FE DC */	blt lbl_806D6174
/* 806D629C  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 806D62A0  80 83 00 04 */	lwz r4, 4(r3)
/* 806D62A4  7F C3 F3 78 */	mr r3, r30
/* 806D62A8  4B 94 71 84 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806D62AC  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 806D62B0  4B 93 7A 14 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 806D62B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806D62B8  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 806D62BC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 806D62C0  38 9E 06 E4 */	addi r4, r30, 0x6e4
/* 806D62C4  38 A0 00 00 */	li r5, 0
/* 806D62C8  C0 7F 00 08 */	lfs f3, 8(r31)
/* 806D62CC  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806D62D0  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806D62D4  4B 95 6D E0 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_806D62D8:
/* 806D62D8  38 60 00 01 */	li r3, 1
lbl_806D62DC:
/* 806D62DC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806D62E0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806D62E4  39 61 00 60 */	addi r11, r1, 0x60
/* 806D62E8  4B C8 BF 34 */	b _restgpr_26
/* 806D62EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806D62F0  7C 08 03 A6 */	mtlr r0
/* 806D62F4  38 21 00 70 */	addi r1, r1, 0x70
/* 806D62F8  4E 80 00 20 */	blr 
