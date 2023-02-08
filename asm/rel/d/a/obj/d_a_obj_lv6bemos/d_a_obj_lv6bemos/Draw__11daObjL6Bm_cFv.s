lbl_80C7D898:
/* 80C7D898  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7D89C  7C 08 02 A6 */	mflr r0
/* 80C7D8A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7D8A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7D8A8  4B 6E 49 35 */	bl _savegpr_29
/* 80C7D8AC  7C 7E 1B 78 */	mr r30, r3
/* 80C7D8B0  3C 60 80 C8 */	lis r3, l_sph_src@ha /* 0x80C7DECC@ha */
/* 80C7D8B4  3B E3 DE CC */	addi r31, r3, l_sph_src@l /* 0x80C7DECC@l */
/* 80C7D8B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C7D8BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7D8C0  38 80 00 10 */	li r4, 0x10
/* 80C7D8C4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7D8C8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C7D8CC  4B 52 5E F9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C7D8D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C7D8D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7D8D8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C7D8DC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C7D8E0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C7D8E4  4B 52 74 BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C7D8E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7D8EC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7D8F0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C7D8F4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C7D8F8  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C7D8FC  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C7D900  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C7D904  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C7D908  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C7D90C  4B 39 03 B9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C7D910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7D914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7D918  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C7D91C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C7D920  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C7D924  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C7D928  88 1E 08 91 */	lbz r0, 0x891(r30)
/* 80C7D92C  28 00 00 00 */	cmplwi r0, 0
/* 80C7D930  41 82 00 B0 */	beq lbl_80C7D9E0
/* 80C7D934  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C7D938  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7D93C  80 9E 08 80 */	lwz r4, 0x880(r30)
/* 80C7D940  80 84 00 04 */	lwz r4, 4(r4)
/* 80C7D944  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C7D948  4B 52 74 59 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C7D94C  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D950  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7D954  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D958  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C7D95C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C7D960  4B 38 FD 79 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C7D964  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D968  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7D96C  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 80C7D970  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C7D974  38 84 00 58 */	addi r4, r4, 0x58
/* 80C7D978  4B 38 FD 61 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C7D97C  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D980  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7D984  80 7E 08 8C */	lwz r3, 0x88c(r30)
/* 80C7D988  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C7D98C  4B 39 00 41 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C7D990  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D994  4B 39 03 31 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C7D998  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D99C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7D9A0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C7D9A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D9A8  38 00 00 00 */	li r0, 0
/* 80C7D9AC  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C7D9B0  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D9B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7D9B8  38 63 00 58 */	addi r3, r3, 0x58
/* 80C7D9BC  80 9E 08 84 */	lwz r4, 0x884(r30)
/* 80C7D9C0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C7D9C4  4B 6B 1D F1 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80C7D9C8  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D9CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7D9D0  38 63 00 58 */	addi r3, r3, 0x58
/* 80C7D9D4  80 9E 08 88 */	lwz r4, 0x888(r30)
/* 80C7D9D8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C7D9DC  4B 6B 1D D9 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80C7D9E0:
/* 80C7D9E0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80C7D9E4  C0 1E 09 0C */	lfs f0, 0x90c(r30)
/* 80C7D9E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C7D9EC  41 82 00 6C */	beq lbl_80C7DA58
/* 80C7D9F0  3C 60 80 C8 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C7E0F8@ha */
/* 80C7D9F4  38 03 E0 F8 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C7E0F8@l */
/* 80C7D9F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C7D9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7DA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7DA04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C7DA08  38 9E 08 CC */	addi r4, r30, 0x8cc
/* 80C7DA0C  38 A1 00 08 */	addi r5, r1, 8
/* 80C7DA10  4B 3F 6D 35 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C7DA14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7DA18  41 82 00 34 */	beq lbl_80C7DA4C
/* 80C7DA1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7DA20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7DA24  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80C7DA28  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C7DA2C  C0 3E 09 0C */	lfs f1, 0x90c(r30)
/* 80C7DA30  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C7DA34  38 A1 00 08 */	addi r5, r1, 8
/* 80C7DA38  38 C0 00 00 */	li r6, 0
/* 80C7DA3C  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80C7DA40  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C7DA44  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C7DA48  4B 3D 85 3D */	bl setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80C7DA4C:
/* 80C7DA4C  3C 60 80 C8 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C7E0F8@ha */
/* 80C7DA50  38 03 E0 F8 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C7E0F8@l */
/* 80C7DA54  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80C7DA58:
/* 80C7DA58  38 60 00 01 */	li r3, 1
/* 80C7DA5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7DA60  4B 6E 47 C9 */	bl _restgpr_29
/* 80C7DA64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7DA68  7C 08 03 A6 */	mtlr r0
/* 80C7DA6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7DA70  4E 80 00 20 */	blr 
