lbl_80BB2AB0:
/* 80BB2AB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB2AB4  7C 08 02 A6 */	mflr r0
/* 80BB2AB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB2ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB2AC0  4B 7A F7 1D */	bl _savegpr_29
/* 80BB2AC4  7C 7E 1B 78 */	mr r30, r3
/* 80BB2AC8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB2ACC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB2AD0  38 80 00 10 */	li r4, 0x10
/* 80BB2AD4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BB2AD8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BB2ADC  4B 5F 0C E9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BB2AE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB2AE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB2AE8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BB2AEC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB2AF0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BB2AF4  4B 5F 22 AD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB2AF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB2AFC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB2B00  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BB2B04  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BB2B08  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BB2B0C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BB2B10  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BB2B14  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB2B18  80 7E 0F B4 */	lwz r3, 0xfb4(r30)
/* 80BB2B1C  83 A3 00 08 */	lwz r29, 8(r3)
/* 80BB2B20  88 1E 0F F7 */	lbz r0, 0xff7(r30)
/* 80BB2B24  28 00 00 00 */	cmplwi r0, 0
/* 80BB2B28  40 82 00 10 */	bne lbl_80BB2B38
/* 80BB2B2C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80BB2B30  60 00 00 01 */	ori r0, r0, 1
/* 80BB2B34  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_80BB2B38:
/* 80BB2B38  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB2B3C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2B40  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BB2B44  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB2B48  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB2B4C  4B 45 AC 5D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BB2B50  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB2B54  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2B58  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BB2B5C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB2B60  4B 45 AE 6D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BB2B64  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB2B68  4B 45 B1 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BB2B6C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB2B70  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB2B74  4B 45 B3 19 */	bl mDoExt_brkAnmRemove__FP12J3DModelData
/* 80BB2B78  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB2B7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB2B80  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BB2B84  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB2B88  38 00 00 00 */	li r0, 0
/* 80BB2B8C  90 03 00 54 */	stw r0, 0x54(r3)
/* 80BB2B90  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80BB2B94  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BB2B98  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80BB2B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB2BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB2BA4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BB2BA8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BB2BAC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BB2BB0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB2BB4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB2BB8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB2BBC  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80BB2BC0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB2BC4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BB2BC8  4B 5F 21 D9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB2BCC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB2BD0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2BD4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80BB2BD8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB2BDC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB2BE0  4B 45 AA F9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BB2BE4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB2BE8  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2BEC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80BB2BF0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB2BF4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB2BF8  4B 45 AA E1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BB2BFC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB2C00  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2C04  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80BB2C08  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB2C0C  4B 45 AD C1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BB2C10  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB2C14  4B 45 B0 B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BB2C18  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB2C1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB2C20  4B 45 B1 D1 */	bl mDoExt_btkAnmRemove__FP12J3DModelData
/* 80BB2C24  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB2C28  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB2C2C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BB2C30  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB2C34  38 00 00 00 */	li r0, 0
/* 80BB2C38  90 03 00 54 */	stw r0, 0x54(r3)
/* 80BB2C3C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB2C40  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB2C44  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 80BB2C48  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB2C4C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BB2C50  4B 5F 21 51 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB2C54  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80BB2C58  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2C5C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80BB2C60  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB2C64  4B 45 AD 69 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BB2C68  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80BB2C6C  4B 45 B0 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BB2C70  38 60 00 01 */	li r3, 1
/* 80BB2C74  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB2C78  4B 7A F5 B1 */	bl _restgpr_29
/* 80BB2C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB2C80  7C 08 03 A6 */	mtlr r0
/* 80BB2C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB2C88  4E 80 00 20 */	blr 
