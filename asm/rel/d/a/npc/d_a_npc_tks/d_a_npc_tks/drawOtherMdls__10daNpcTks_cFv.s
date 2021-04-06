lbl_80B1D204:
/* 80B1D204  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B1D208  7C 08 02 A6 */	mflr r0
/* 80B1D20C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1D210  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1D214  4B 84 4F C5 */	bl _savegpr_28
/* 80B1D218  7C 7D 1B 78 */	mr r29, r3
/* 80B1D21C  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1D220  3B E3 DD 58 */	addi r31, r3, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B1D224  88 1D 11 5E */	lbz r0, 0x115e(r29)
/* 80B1D228  28 00 00 00 */	cmplwi r0, 0
/* 80B1D22C  41 82 01 18 */	beq lbl_80B1D344
/* 80B1D230  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B1D234  83 C3 00 04 */	lwz r30, 4(r3)
/* 80B1D238  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80B1D23C  28 00 00 00 */	cmplwi r0, 0
/* 80B1D240  41 82 00 20 */	beq lbl_80B1D260
/* 80B1D244  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B1D248  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B1D24C  38 80 00 04 */	li r4, 4
/* 80B1D250  38 BD 11 4C */	addi r5, r29, 0x114c
/* 80B1D254  38 DD 0B DC */	addi r6, r29, 0xbdc
/* 80B1D258  4B 68 65 6D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B1D25C  48 00 00 1C */	b lbl_80B1D278
lbl_80B1D260:
/* 80B1D260  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B1D264  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B1D268  38 80 00 08 */	li r4, 8
/* 80B1D26C  38 BD 11 4C */	addi r5, r29, 0x114c
/* 80B1D270  38 DD 0B DC */	addi r6, r29, 0xbdc
/* 80B1D274  4B 68 65 51 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80B1D278:
/* 80B1D278  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B1D27C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B1D280  80 9E 00 04 */	lwz r4, 4(r30)
/* 80B1D284  38 BD 0B DC */	addi r5, r29, 0xbdc
/* 80B1D288  4B 68 7B 19 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B1D28C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1D290  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1D294  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80B1D298  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B1D29C  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B1D2A0  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80B1D2A4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80B1D2A8  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80B1D2AC  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B1D2B0  4B 4F 3F 11 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80B1D2B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1D2B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1D2BC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80B1D2C0  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80B1D2C4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80B1D2C8  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80B1D2CC  88 1D 13 8A */	lbz r0, 0x138a(r29)
/* 80B1D2D0  28 00 00 00 */	cmplwi r0, 0
/* 80B1D2D4  41 82 00 0C */	beq lbl_80B1D2E0
/* 80B1D2D8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80B1D2DC  48 00 00 08 */	b lbl_80B1D2E4
lbl_80B1D2E0:
/* 80B1D2E0  38 DD 11 4C */	addi r6, r29, 0x114c
lbl_80B1D2E4:
/* 80B1D2E4  28 00 00 00 */	cmplwi r0, 0
/* 80B1D2E8  41 82 00 0C */	beq lbl_80B1D2F4
/* 80B1D2EC  C0 9D 09 80 */	lfs f4, 0x980(r29)
/* 80B1D2F0  48 00 00 08 */	b lbl_80B1D2F8
lbl_80B1D2F4:
/* 80B1D2F4  C0 9D 11 40 */	lfs f4, 0x1140(r29)
lbl_80B1D2F8:
/* 80B1D2F8  28 00 00 00 */	cmplwi r0, 0
/* 80B1D2FC  41 82 00 0C */	beq lbl_80B1D308
/* 80B1D300  38 FD 0A 58 */	addi r7, r29, 0xa58
/* 80B1D304  48 00 00 08 */	b lbl_80B1D30C
lbl_80B1D308:
/* 80B1D308  38 FD 11 30 */	addi r7, r29, 0x1130
lbl_80B1D30C:
/* 80B1D30C  80 7D 11 44 */	lwz r3, 0x1144(r29)
/* 80B1D310  38 80 00 01 */	li r4, 1
/* 80B1D314  7F C5 F3 78 */	mr r5, r30
/* 80B1D318  39 1F 00 00 */	addi r8, r31, 0
/* 80B1D31C  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 80B1D320  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80B1D324  C0 66 00 04 */	lfs f3, 4(r6)
/* 80B1D328  39 1D 0B DC */	addi r8, r29, 0xbdc
/* 80B1D32C  39 20 00 00 */	li r9, 0
/* 80B1D330  C0 BF 00 B0 */	lfs f5, 0xb0(r31)
/* 80B1D334  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80B1D338  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80B1D33C  4B 51 15 D5 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80B1D340  90 7D 11 44 */	stw r3, 0x1144(r29)
lbl_80B1D344:
/* 80B1D344  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1D348  4B 84 4E DD */	bl _restgpr_28
/* 80B1D34C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B1D350  7C 08 03 A6 */	mtlr r0
/* 80B1D354  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1D358  4E 80 00 20 */	blr 
