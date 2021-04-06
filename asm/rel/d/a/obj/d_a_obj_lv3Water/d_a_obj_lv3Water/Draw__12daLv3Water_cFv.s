lbl_80C598BC:
/* 80C598BC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C598C0  7C 08 02 A6 */	mflr r0
/* 80C598C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C598C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80C598CC  4B 70 89 01 */	bl _savegpr_25
/* 80C598D0  7C 7D 1B 78 */	mr r29, r3
/* 80C598D4  3C 60 80 C6 */	lis r3, l_bmdIdx@ha /* 0x80C59E70@ha */
/* 80C598D8  3B C3 9E 70 */	addi r30, r3, l_bmdIdx@l /* 0x80C59E70@l */
/* 80C598DC  88 1D 06 05 */	lbz r0, 0x605(r29)
/* 80C598E0  28 00 00 00 */	cmplwi r0, 0
/* 80C598E4  40 82 00 0C */	bne lbl_80C598F0
/* 80C598E8  38 60 00 00 */	li r3, 0
/* 80C598EC  48 00 01 9C */	b lbl_80C59A88
lbl_80C598F0:
/* 80C598F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C598F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C598F8  38 80 00 10 */	li r4, 0x10
/* 80C598FC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C59900  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80C59904  4B 54 9E C1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C59908  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C5990C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C59910  80 9D 05 C0 */	lwz r4, 0x5c0(r29)
/* 80C59914  80 84 00 04 */	lwz r4, 4(r4)
/* 80C59918  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80C5991C  4B 54 B4 85 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C59920  80 9D 05 C4 */	lwz r4, 0x5c4(r29)
/* 80C59924  28 04 00 00 */	cmplwi r4, 0
/* 80C59928  41 82 00 18 */	beq lbl_80C59940
/* 80C5992C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C59930  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C59934  80 84 00 04 */	lwz r4, 4(r4)
/* 80C59938  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80C5993C  4B 54 B4 65 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80C59940:
/* 80C59940  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80C59944  80 83 00 04 */	lwz r4, 4(r3)
/* 80C59948  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 80C5994C  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 80C59950  38 84 00 58 */	addi r4, r4, 0x58
/* 80C59954  4B 3B 3D 85 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C59958  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80C5995C  28 03 00 00 */	cmplwi r3, 0
/* 80C59960  41 82 00 18 */	beq lbl_80C59978
/* 80C59964  80 83 00 04 */	lwz r4, 4(r3)
/* 80C59968  C0 3D 05 F0 */	lfs f1, 0x5f0(r29)
/* 80C5996C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 80C59970  38 84 00 58 */	addi r4, r4, 0x58
/* 80C59974  4B 3B 3D 65 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80C59978:
/* 80C59978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5997C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C59980  80 03 5F 7C */	lwz r0, 0x5f7c(r3)
/* 80C59984  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C59988  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C5998C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C59990  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80C59994  4B 3B 43 31 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C59998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5999C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C599A0  80 1B 5F 80 */	lwz r0, 0x5f80(r27)
/* 80C599A4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C599A8  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C599AC  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C599B0  80 1B 5F 84 */	lwz r0, 0x5f84(r27)
/* 80C599B4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C599B8  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80C599BC  28 03 00 00 */	cmplwi r3, 0
/* 80C599C0  41 82 00 C4 */	beq lbl_80C59A84
/* 80C599C4  83 23 00 04 */	lwz r25, 4(r3)
/* 80C599C8  80 79 00 60 */	lwz r3, 0x60(r25)
/* 80C599CC  83 43 00 00 */	lwz r26, 0(r3)
/* 80C599D0  80 1B 5F A0 */	lwz r0, 0x5fa0(r27)
/* 80C599D4  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C599D8  80 1B 5F A4 */	lwz r0, 0x5fa4(r27)
/* 80C599DC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C599E0  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80C599E4  38 80 00 00 */	li r4, 0
/* 80C599E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80C599EC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C599F0  7D 89 03 A6 */	mtctr r12
/* 80C599F4  4E 80 04 21 */	bctrl 
/* 80C599F8  28 03 00 00 */	cmplwi r3, 0
/* 80C599FC  41 82 00 70 */	beq lbl_80C59A6C
/* 80C59A00  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80C59A04  38 80 00 00 */	li r4, 0
/* 80C59A08  81 83 00 00 */	lwz r12, 0(r3)
/* 80C59A0C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C59A10  7D 89 03 A6 */	mtctr r12
/* 80C59A14  4E 80 04 21 */	bctrl 
/* 80C59A18  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C59A1C  41 82 00 50 */	beq lbl_80C59A6C
/* 80C59A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C59A24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C59A28  80 83 61 B0 */	lwz r4, 0x61b0(r3)
/* 80C59A2C  38 61 00 08 */	addi r3, r1, 8
/* 80C59A30  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80C59A34  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80C59A38  C0 7E 01 A4 */	lfs f3, 0x1a4(r30)
/* 80C59A3C  FC 80 18 90 */	fmr f4, f3
/* 80C59A40  C0 BE 01 F0 */	lfs f5, 0x1f0(r30)
/* 80C59A44  C0 DE 01 F4 */	lfs f6, 0x1f4(r30)
/* 80C59A48  4B 6E D1 D1 */	bl C_MTXLightPerspective
/* 80C59A4C  7F 43 D3 78 */	mr r3, r26
/* 80C59A50  38 81 00 08 */	addi r4, r1, 8
/* 80C59A54  4B 6C BD 41 */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80C59A58  7F 23 CB 78 */	mr r3, r25
/* 80C59A5C  38 80 00 00 */	li r4, 0
/* 80C59A60  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80C59A64  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80C59A68  4B 6C C5 A5 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80C59A6C:
/* 80C59A6C  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80C59A70  4B 3B 42 55 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C59A74  80 1B 5F 80 */	lwz r0, 0x5f80(r27)
/* 80C59A78  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C59A7C  80 1B 5F 84 */	lwz r0, 0x5f84(r27)
/* 80C59A80  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_80C59A84:
/* 80C59A84  38 60 00 01 */	li r3, 1
lbl_80C59A88:
/* 80C59A88  39 61 00 60 */	addi r11, r1, 0x60
/* 80C59A8C  4B 70 87 8D */	bl _restgpr_25
/* 80C59A90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C59A94  7C 08 03 A6 */	mtlr r0
/* 80C59A98  38 21 00 60 */	addi r1, r1, 0x60
/* 80C59A9C  4E 80 00 20 */	blr 
