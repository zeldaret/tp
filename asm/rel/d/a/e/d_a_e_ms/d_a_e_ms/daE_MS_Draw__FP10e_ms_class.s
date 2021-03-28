lbl_80725CCC:
/* 80725CCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80725CD0  7C 08 02 A6 */	mflr r0
/* 80725CD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80725CD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80725CDC  4B C3 C4 FC */	b _savegpr_28
/* 80725CE0  7C 7E 1B 78 */	mr r30, r3
/* 80725CE4  3C 60 80 73 */	lis r3, lit_3800@ha
/* 80725CE8  3B E3 95 04 */	addi r31, r3, lit_3800@l
/* 80725CEC  88 1E 0B A5 */	lbz r0, 0xba5(r30)
/* 80725CF0  7C 00 07 75 */	extsb. r0, r0
/* 80725CF4  41 82 00 0C */	beq lbl_80725D00
/* 80725CF8  38 60 00 01 */	li r3, 1
/* 80725CFC  48 00 00 D8 */	b lbl_80725DD4
lbl_80725D00:
/* 80725D00  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80725D04  83 83 00 04 */	lwz r28, 4(r3)
/* 80725D08  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80725D0C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80725D10  38 80 00 00 */	li r4, 0
/* 80725D14  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80725D18  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80725D1C  4B A7 DA A8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80725D20  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80725D24  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80725D28  80 9C 00 04 */	lwz r4, 4(r28)
/* 80725D2C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80725D30  4B A7 F0 70 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80725D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80725D38  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80725D3C  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80725D40  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80725D44  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80725D48  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80725D4C  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80725D50  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80725D54  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80725D58  4B 8E B4 68 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80725D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80725D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80725D64  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80725D68  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80725D6C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80725D70  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80725D74  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80725D78  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80725D7C  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80725D80  EC 20 18 2A */	fadds f1, f0, f3
/* 80725D84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80725D88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80725D8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80725D90  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80725D94  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80725D98  38 80 00 01 */	li r4, 1
/* 80725D9C  7F 85 E3 78 */	mr r5, r28
/* 80725DA0  38 C1 00 08 */	addi r6, r1, 8
/* 80725DA4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80725DA8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80725DAC  C0 9E 07 70 */	lfs f4, 0x770(r30)
/* 80725DB0  38 FE 07 C8 */	addi r7, r30, 0x7c8
/* 80725DB4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80725DB8  39 20 00 00 */	li r9, 0
/* 80725DBC  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80725DC0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80725DC4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80725DC8  4B 90 8B 48 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80725DCC  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80725DD0  38 60 00 01 */	li r3, 1
lbl_80725DD4:
/* 80725DD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80725DD8  4B C3 C4 4C */	b _restgpr_28
/* 80725DDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80725DE0  7C 08 03 A6 */	mtlr r0
/* 80725DE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80725DE8  4E 80 00 20 */	blr 
