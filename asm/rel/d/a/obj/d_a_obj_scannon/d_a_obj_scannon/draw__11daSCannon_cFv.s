lbl_80CC7228:
/* 80CC7228  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC722C  7C 08 02 A6 */	mflr r0
/* 80CC7230  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC7234  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC7238  4B 69 AF A1 */	bl _savegpr_28
/* 80CC723C  7C 7E 1B 78 */	mr r30, r3
/* 80CC7240  3C 60 80 CD */	lis r3, TKS_SET_POS@ha /* 0x80CC9188@ha */
/* 80CC7244  3B E3 91 88 */	addi r31, r3, TKS_SET_POS@l /* 0x80CC9188@l */
/* 80CC7248  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC724C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC7250  38 80 00 08 */	li r4, 8
/* 80CC7254  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC7258  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CC725C  4B 4D C5 69 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CC7260  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC7264  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC7268  88 1E 06 17 */	lbz r0, 0x617(r30)
/* 80CC726C  54 00 10 3A */	slwi r0, r0, 2
/* 80CC7270  7C 9E 02 14 */	add r4, r30, r0
/* 80CC7274  80 84 05 E4 */	lwz r4, 0x5e4(r4)
/* 80CC7278  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC727C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CC7280  4B 4D DB 21 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC7284  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 80CC7288  2C 00 00 03 */	cmpwi r0, 3
/* 80CC728C  41 82 00 0C */	beq lbl_80CC7298
/* 80CC7290  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC7294  40 82 00 28 */	bne lbl_80CC72BC
lbl_80CC7298:
/* 80CC7298  88 1E 06 17 */	lbz r0, 0x617(r30)
/* 80CC729C  54 00 10 3A */	slwi r0, r0, 2
/* 80CC72A0  7C 7E 02 14 */	add r3, r30, r0
/* 80CC72A4  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC72A8  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC72AC  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CC72B0  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 80CC72B4  4B 34 67 19 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80CC72B8  48 00 00 DC */	b lbl_80CC7394
lbl_80CC72BC:
/* 80CC72BC  2C 00 00 01 */	cmpwi r0, 1
/* 80CC72C0  40 82 00 D4 */	bne lbl_80CC7394
/* 80CC72C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CC72C8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CC72CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC72D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC72D4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CC72D8  7C 05 07 74 */	extsb r5, r0
/* 80CC72DC  4B 36 E0 85 */	bl isSwitch__10dSv_info_cCFii
/* 80CC72E0  2C 03 00 00 */	cmpwi r3, 0
/* 80CC72E4  40 82 00 B0 */	bne lbl_80CC7394
/* 80CC72E8  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80CC72EC  28 03 00 00 */	cmplwi r3, 0
/* 80CC72F0  41 82 00 24 */	beq lbl_80CC7314
/* 80CC72F4  88 1E 06 17 */	lbz r0, 0x617(r30)
/* 80CC72F8  54 00 10 3A */	slwi r0, r0, 2
/* 80CC72FC  7C 9E 02 14 */	add r4, r30, r0
/* 80CC7300  80 84 05 E4 */	lwz r4, 0x5e4(r4)
/* 80CC7304  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC7308  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CC730C  38 84 00 58 */	addi r4, r4, 0x58
/* 80CC7310  4B 34 63 C9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80CC7314:
/* 80CC7314  80 BE 05 EC */	lwz r5, 0x5ec(r30)
/* 80CC7318  28 05 00 00 */	cmplwi r5, 0
/* 80CC731C  41 82 00 78 */	beq lbl_80CC7394
/* 80CC7320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC7324  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC7328  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80CC732C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CC7330  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CC7334  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80CC7338  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80CC733C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80CC7340  83 85 00 04 */	lwz r28, 4(r5)
/* 80CC7344  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 80CC7348  28 03 00 00 */	cmplwi r3, 0
/* 80CC734C  41 82 00 10 */	beq lbl_80CC735C
/* 80CC7350  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CC7354  38 9C 00 58 */	addi r4, r28, 0x58
/* 80CC7358  4B 34 63 81 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80CC735C:
/* 80CC735C  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 80CC7360  4B 34 69 65 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC7364  80 9E 05 F4 */	lwz r4, 0x5f4(r30)
/* 80CC7368  28 04 00 00 */	cmplwi r4, 0
/* 80CC736C  41 82 00 10 */	beq lbl_80CC737C
/* 80CC7370  38 7C 00 58 */	addi r3, r28, 0x58
/* 80CC7374  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CC7378  4B 66 84 3D */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80CC737C:
/* 80CC737C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC7380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC7384  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CC7388  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80CC738C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CC7390  90 1D 00 4C */	stw r0, 0x4c(r29)
lbl_80CC7394:
/* 80CC7394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC7398  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC739C  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 80CC73A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CC73A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CC73A8  90 03 00 48 */	stw r0, 0x48(r3)
/* 80CC73AC  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 80CC73B0  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80CC73B4  88 1E 06 17 */	lbz r0, 0x617(r30)
/* 80CC73B8  54 00 10 3A */	slwi r0, r0, 2
/* 80CC73BC  7C 7E 02 14 */	add r3, r30, r0
/* 80CC73C0  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC73C4  4B 34 69 01 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC73C8  80 9E 05 F0 */	lwz r4, 0x5f0(r30)
/* 80CC73CC  28 04 00 00 */	cmplwi r4, 0
/* 80CC73D0  41 82 00 24 */	beq lbl_80CC73F4
/* 80CC73D4  88 1E 06 17 */	lbz r0, 0x617(r30)
/* 80CC73D8  54 00 10 3A */	slwi r0, r0, 2
/* 80CC73DC  7C 7E 02 14 */	add r3, r30, r0
/* 80CC73E0  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC73E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC73E8  38 63 00 58 */	addi r3, r3, 0x58
/* 80CC73EC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CC73F0  4B 66 83 C5 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80CC73F4:
/* 80CC73F4  88 1E 06 1B */	lbz r0, 0x61b(r30)
/* 80CC73F8  28 00 00 00 */	cmplwi r0, 0
/* 80CC73FC  41 82 00 64 */	beq lbl_80CC7460
/* 80CC7400  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80CC7404  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80CC7408  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CC740C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC7410  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80CC7414  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC7418  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80CC741C  38 80 00 01 */	li r4, 1
/* 80CC7420  88 1E 06 17 */	lbz r0, 0x617(r30)
/* 80CC7424  54 00 10 3A */	slwi r0, r0, 2
/* 80CC7428  7C BE 02 14 */	add r5, r30, r0
/* 80CC742C  80 A5 05 E4 */	lwz r5, 0x5e4(r5)
/* 80CC7430  38 C1 00 08 */	addi r6, r1, 8
/* 80CC7434  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CC7438  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80CC743C  C0 9E 05 F8 */	lfs f4, 0x5f8(r30)
/* 80CC7440  38 FE 05 A0 */	addi r7, r30, 0x5a0
/* 80CC7444  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80CC7448  39 20 00 00 */	li r9, 0
/* 80CC744C  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 80CC7450  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80CC7454  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80CC7458  4B 36 74 B9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CC745C  90 7E 05 FC */	stw r3, 0x5fc(r30)
lbl_80CC7460:
/* 80CC7460  38 60 00 01 */	li r3, 1
/* 80CC7464  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC7468  4B 69 AD BD */	bl _restgpr_28
/* 80CC746C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC7470  7C 08 03 A6 */	mtlr r0
/* 80CC7474  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC7478  4E 80 00 20 */	blr 
