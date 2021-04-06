lbl_80D506AC:
/* 80D506AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D506B0  7C 08 02 A6 */	mflr r0
/* 80D506B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D506B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D506BC  4B 61 1B 1D */	bl _savegpr_28
/* 80D506C0  7C 7E 1B 78 */	mr r30, r3
/* 80D506C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D506C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D506CC  38 80 00 10 */	li r4, 0x10
/* 80D506D0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D506D4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D506D8  4B 45 30 ED */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D506DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D506E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D506E4  80 03 5F 70 */	lwz r0, 0x5f70(r3)
/* 80D506E8  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80D506EC  3B E4 4A C8 */	addi r31, r4, j3dSys@l /* 0x80434AC8@l */
/* 80D506F0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D506F4  80 03 5F 74 */	lwz r0, 0x5f74(r3)
/* 80D506F8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D506FC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D50700  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D50704  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D50708  7C 05 07 74 */	extsb r5, r0
/* 80D5070C  4B 2E 4C 55 */	bl isSwitch__10dSv_info_cCFii
/* 80D50710  2C 03 00 00 */	cmpwi r3, 0
/* 80D50714  41 82 00 84 */	beq lbl_80D50798
/* 80D50718  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D5071C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D50720  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D50724  80 84 00 04 */	lwz r4, 4(r4)
/* 80D50728  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D5072C  4B 45 46 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D50730  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D50734  80 83 00 04 */	lwz r4, 4(r3)
/* 80D50738  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D5073C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D50740  38 84 00 58 */	addi r4, r4, 0x58
/* 80D50744  4B 2B CF 95 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D50748  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D5074C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D50750  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D50754  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D50758  38 84 00 58 */	addi r4, r4, 0x58
/* 80D5075C  4B 2B CF 7D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D50760  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D50764  4B 2B D5 61 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D50768  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D5076C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D50770  38 63 00 58 */	addi r3, r3, 0x58
/* 80D50774  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D50778  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80D5077C  4B 5D F0 39 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80D50780  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D50784  80 63 00 04 */	lwz r3, 4(r3)
/* 80D50788  38 63 00 58 */	addi r3, r3, 0x58
/* 80D5078C  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80D50790  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80D50794  4B 5D F0 21 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80D50798:
/* 80D50798  3B 80 00 00 */	li r28, 0
/* 80D5079C  48 00 00 4C */	b lbl_80D507E8
lbl_80D507A0:
/* 80D507A0  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80D507A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D507A8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D507AC  57 9D 13 BA */	rlwinm r29, r28, 2, 0xe, 0x1d
/* 80D507B0  7C 63 E8 2E */	lwzx r3, r3, r29
/* 80D507B4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80D507B8  38 80 00 03 */	li r4, 3
/* 80D507BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80D507C0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80D507C4  7D 89 03 A6 */	mtctr r12
/* 80D507C8  4E 80 04 21 */	bctrl 
/* 80D507CC  38 1D 07 60 */	addi r0, r29, 0x760
/* 80D507D0  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80D507D4  FC 00 00 1E */	fctiwz f0, f0
/* 80D507D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D507DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D507E0  98 03 00 03 */	stb r0, 3(r3)
/* 80D507E4  3B 9C 00 01 */	addi r28, r28, 1
lbl_80D507E8:
/* 80D507E8  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80D507EC  28 00 00 02 */	cmplwi r0, 2
/* 80D507F0  41 80 FF B0 */	blt lbl_80D507A0
/* 80D507F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D507F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D507FC  80 9E 05 6C */	lwz r4, 0x56c(r30)
/* 80D50800  80 84 00 04 */	lwz r4, 4(r4)
/* 80D50804  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D50808  4B 45 45 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D5080C  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80D50810  4B 2B D4 B5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D50814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5081C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D50820  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D50824  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D50828  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D5082C  38 60 00 01 */	li r3, 1
/* 80D50830  39 61 00 20 */	addi r11, r1, 0x20
/* 80D50834  4B 61 19 F1 */	bl _restgpr_28
/* 80D50838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5083C  7C 08 03 A6 */	mtlr r0
/* 80D50840  38 21 00 20 */	addi r1, r1, 0x20
/* 80D50844  4E 80 00 20 */	blr 
