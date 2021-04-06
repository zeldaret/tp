lbl_80C8F86C:
/* 80C8F86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8F870  7C 08 02 A6 */	mflr r0
/* 80C8F874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8F878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8F87C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8F880  7C 7F 1B 78 */	mr r31, r3
/* 80C8F884  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8F888  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8F88C  38 80 00 40 */	li r4, 0x40
/* 80C8F890  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C8F894  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C8F898  4B 51 3F 2D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C8F89C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8F8A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8F8A4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8F8A8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C8F8AC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C8F8B0  4B 51 54 F1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8F8B4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8F8B8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C8F8BC  88 1F 05 DC */	lbz r0, 0x5dc(r31)
/* 80C8F8C0  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F8C4  3C 60 80 C9 */	lis r3, l_btkIdx@ha /* 0x80C8FB30@ha */
/* 80C8F8C8  38 63 FB 30 */	addi r3, r3, l_btkIdx@l /* 0x80C8FB30@l */
/* 80C8F8CC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F8D0  2C 00 FF FF */	cmpwi r0, -1
/* 80C8F8D4  41 82 00 14 */	beq lbl_80C8F8E8
/* 80C8F8D8  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80C8F8DC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C8F8E0  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C8F8E4  4B 37 DD F5 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80C8F8E8:
/* 80C8F8E8  88 1F 05 DC */	lbz r0, 0x5dc(r31)
/* 80C8F8EC  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F8F0  3C 60 80 C9 */	lis r3, l_brkIdx@ha /* 0x80C8FB3C@ha */
/* 80C8F8F4  38 63 FB 3C */	addi r3, r3, l_brkIdx@l /* 0x80C8FB3C@l */
/* 80C8F8F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F8FC  2C 00 FF FF */	cmpwi r0, -1
/* 80C8F900  41 82 00 14 */	beq lbl_80C8F914
/* 80C8F904  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80C8F908  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80C8F90C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C8F910  4B 37 DE 99 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80C8F914:
/* 80C8F914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8F918  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8F91C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C8F920  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C8F924  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C8F928  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C8F92C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C8F930  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C8F934  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8F938  4B 37 E3 8D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C8F93C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8F940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8F944  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C8F948  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C8F94C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C8F950  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C8F954  38 60 00 01 */	li r3, 1
/* 80C8F958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8F95C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8F960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8F964  7C 08 03 A6 */	mtlr r0
/* 80C8F968  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8F96C  4E 80 00 20 */	blr 
