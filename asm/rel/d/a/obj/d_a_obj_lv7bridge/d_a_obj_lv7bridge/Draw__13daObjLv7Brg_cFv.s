lbl_80C87304:
/* 80C87304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87308  7C 08 02 A6 */	mflr r0
/* 80C8730C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87314  93 C1 00 08 */	stw r30, 8(r1)
/* 80C87318  7C 7E 1B 78 */	mr r30, r3
/* 80C8731C  3C 60 80 C8 */	lis r3, lit_3697@ha /* 0x80C879CC@ha */
/* 80C87320  C0 23 79 CC */	lfs f1, lit_3697@l(r3)  /* 0x80C879CC@l */
/* 80C87324  C0 1E 0A 78 */	lfs f0, 0xa78(r30)
/* 80C87328  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C8732C  40 82 00 0C */	bne lbl_80C87338
/* 80C87330  38 60 00 01 */	li r3, 1
/* 80C87334  48 00 01 0C */	b lbl_80C87440
lbl_80C87338:
/* 80C87338  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8733C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C87340  38 80 00 10 */	li r4, 0x10
/* 80C87344  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C87348  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C8734C  4B 51 C4 79 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C87350  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C87354  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C87358  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C8735C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C87360  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C87364  4B 51 DA 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C87368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8736C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C87370  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C87374  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C87378  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C8737C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C87380  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C87384  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C87388  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8738C  4B 38 69 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C87390  88 1E 0A 7E */	lbz r0, 0xa7e(r30)
/* 80C87394  28 00 00 01 */	cmplwi r0, 1
/* 80C87398  40 82 00 8C */	bne lbl_80C87424
/* 80C8739C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C873A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C873A4  80 9E 0A 84 */	lwz r4, 0xa84(r30)
/* 80C873A8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C873AC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C873B0  4B 51 D9 F1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C873B4  80 1E 0A 88 */	lwz r0, 0xa88(r30)
/* 80C873B8  28 00 00 00 */	cmplwi r0, 0
/* 80C873BC  41 82 00 68 */	beq lbl_80C87424
/* 80C873C0  80 1E 0A 8C */	lwz r0, 0xa8c(r30)
/* 80C873C4  28 00 00 00 */	cmplwi r0, 0
/* 80C873C8  41 82 00 5C */	beq lbl_80C87424
/* 80C873CC  88 1E 0A 96 */	lbz r0, 0xa96(r30)
/* 80C873D0  28 00 00 00 */	cmplwi r0, 0
/* 80C873D4  40 82 00 50 */	bne lbl_80C87424
/* 80C873D8  88 1E 0A 94 */	lbz r0, 0xa94(r30)
/* 80C873DC  7C 00 07 74 */	extsb r0, r0
/* 80C873E0  2C 00 FF FF */	cmpwi r0, -1
/* 80C873E4  41 82 00 20 */	beq lbl_80C87404
/* 80C873E8  80 7E 0A 84 */	lwz r3, 0xa84(r30)
/* 80C873EC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C873F0  54 00 10 3A */	slwi r0, r0, 2
/* 80C873F4  7C 7E 02 14 */	add r3, r30, r0
/* 80C873F8  80 63 0A 88 */	lwz r3, 0xa88(r3)
/* 80C873FC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C87400  4B 38 65 CD */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80C87404:
/* 80C87404  80 7E 0A 84 */	lwz r3, 0xa84(r30)
/* 80C87408  4B 38 68 BD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C8740C  80 7E 0A 84 */	lwz r3, 0xa84(r30)
/* 80C87410  80 63 00 04 */	lwz r3, 4(r3)
/* 80C87414  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C87418  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8741C  38 00 00 00 */	li r0, 0
/* 80C87420  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80C87424:
/* 80C87424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C87428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8742C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C87430  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C87434  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C87438  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C8743C  38 60 00 01 */	li r3, 1
lbl_80C87440:
/* 80C87440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87444  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C87448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8744C  7C 08 03 A6 */	mtlr r0
/* 80C87450  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87454  4E 80 00 20 */	blr 
