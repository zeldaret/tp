lbl_80CE5858:
/* 80CE5858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE585C  7C 08 02 A6 */	mflr r0
/* 80CE5860  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE5864  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CE5868  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CE586C  7C 7E 1B 78 */	mr r30, r3
/* 80CE5870  3C 80 80 CE */	lis r4, mCcDObjInfo__15daObj_SSDrink_c@ha /* 0x80CE6930@ha */
/* 80CE5874  3B E4 69 30 */	addi r31, r4, mCcDObjInfo__15daObj_SSDrink_c@l /* 0x80CE6930@l */
/* 80CE5878  3C 80 80 CE */	lis r4, lit_4063@ha /* 0x80CE6A3C@ha */
/* 80CE587C  38 A4 6A 3C */	addi r5, r4, lit_4063@l /* 0x80CE6A3C@l */
/* 80CE5880  80 85 00 00 */	lwz r4, 0(r5)
/* 80CE5884  80 05 00 04 */	lwz r0, 4(r5)
/* 80CE5888  90 81 00 08 */	stw r4, 8(r1)
/* 80CE588C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE5890  80 05 00 08 */	lwz r0, 8(r5)
/* 80CE5894  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE5898  38 81 00 08 */	addi r4, r1, 8
/* 80CE589C  48 00 05 15 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE58A0  2C 03 00 00 */	cmpwi r3, 0
/* 80CE58A4  41 82 00 0C */	beq lbl_80CE58B0
/* 80CE58A8  38 60 00 01 */	li r3, 1
/* 80CE58AC  48 00 00 D0 */	b lbl_80CE597C
lbl_80CE58B0:
/* 80CE58B0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CE58B4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CE58B8  38 80 00 00 */	li r4, 0
/* 80CE58BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CE58C0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CE58C4  4B 4B DF 01 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CE58C8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CE58CC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CE58D0  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 80CE58D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE58D8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CE58DC  4B 4B F4 C5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE58E0  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80CE58E4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE58E8  7F C3 F3 78 */	mr r3, r30
/* 80CE58EC  4B 33 7B 41 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80CE58F0  7F C3 F3 78 */	mr r3, r30
/* 80CE58F4  48 00 08 7D */	bl animeEntry__15daObj_SSDrink_cFv
/* 80CE58F8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80CE58FC  4B 32 83 C9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CE5900  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CE5904  C0 1E 0A FC */	lfs f0, 0xafc(r30)
/* 80CE5908  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CE590C  41 82 00 6C */	beq lbl_80CE5978
/* 80CE5910  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CE6AF8@ha */
/* 80CE5914  38 03 6A F8 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CE6AF8@l */
/* 80CE5918  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE591C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE5920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE5924  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CE5928  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 80CE592C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CE5930  4B 38 EE 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CE5934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE5938  41 82 00 34 */	beq lbl_80CE596C
/* 80CE593C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE5940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE5944  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80CE5948  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CE594C  C0 3E 0A FC */	lfs f1, 0xafc(r30)
/* 80CE5950  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80CE5954  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CE5958  38 C0 00 00 */	li r6, 0
/* 80CE595C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CE5960  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80CE5964  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80CE5968  4B 37 06 1D */	bl setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80CE596C:
/* 80CE596C  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CE6AF8@ha */
/* 80CE5970  38 03 6A F8 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CE6AF8@l */
/* 80CE5974  90 01 00 24 */	stw r0, 0x24(r1)
lbl_80CE5978:
/* 80CE5978  38 60 00 01 */	li r3, 1
lbl_80CE597C:
/* 80CE597C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CE5980  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CE5984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE5988  7C 08 03 A6 */	mtlr r0
/* 80CE598C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE5990  4E 80 00 20 */	blr 
