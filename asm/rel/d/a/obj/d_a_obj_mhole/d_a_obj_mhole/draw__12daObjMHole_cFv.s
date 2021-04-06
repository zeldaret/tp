lbl_80C93ADC:
/* 80C93ADC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C93AE0  7C 08 02 A6 */	mflr r0
/* 80C93AE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C93AE8  39 61 00 60 */	addi r11, r1, 0x60
/* 80C93AEC  4B 6C E6 E1 */	bl _savegpr_25
/* 80C93AF0  7C 7E 1B 78 */	mr r30, r3
/* 80C93AF4  3C 60 80 C9 */	lis r3, l_bmd@ha /* 0x80C93D88@ha */
/* 80C93AF8  3B E3 3D 88 */	addi r31, r3, l_bmd@l /* 0x80C93D88@l */
/* 80C93AFC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C93B00  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C93B04  38 80 00 00 */	li r4, 0
/* 80C93B08  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C93B0C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C93B10  4B 50 FC B5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C93B14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C93B18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C93B1C  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C93B20  80 84 00 04 */	lwz r4, 4(r4)
/* 80C93B24  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C93B28  4B 51 12 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C93B2C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93B30  80 83 00 04 */	lwz r4, 4(r3)
/* 80C93B34  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C93B38  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C93B3C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C93B40  4B 37 9C 69 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C93B44  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93B48  80 83 00 04 */	lwz r4, 4(r3)
/* 80C93B4C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C93B50  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C93B54  38 84 00 58 */	addi r4, r4, 0x58
/* 80C93B58  4B 37 9B 81 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C93B5C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93B60  80 83 00 04 */	lwz r4, 4(r3)
/* 80C93B64  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C93B68  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C93B6C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C93B70  4B 37 9B 69 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C93B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C93B78  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C93B7C  80 1C 5F 94 */	lwz r0, 0x5f94(r28)
/* 80C93B80  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C93B84  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C93B88  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C93B8C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C93B90  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93B94  83 43 00 04 */	lwz r26, 4(r3)
/* 80C93B98  3B 20 00 00 */	li r25, 0
/* 80C93B9C  48 00 00 AC */	b lbl_80C93C48
lbl_80C93BA0:
/* 80C93BA0  57 20 04 3F */	clrlwi. r0, r25, 0x10
/* 80C93BA4  41 82 00 0C */	beq lbl_80C93BB0
/* 80C93BA8  28 00 00 01 */	cmplwi r0, 1
/* 80C93BAC  40 82 00 98 */	bne lbl_80C93C44
lbl_80C93BB0:
/* 80C93BB0  80 7A 00 60 */	lwz r3, 0x60(r26)
/* 80C93BB4  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 80C93BB8  7F 63 00 2E */	lwzx r27, r3, r0
/* 80C93BBC  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80C93BC0  38 80 00 00 */	li r4, 0
/* 80C93BC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80C93BC8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C93BCC  7D 89 03 A6 */	mtctr r12
/* 80C93BD0  4E 80 04 21 */	bctrl 
/* 80C93BD4  28 03 00 00 */	cmplwi r3, 0
/* 80C93BD8  41 82 00 6C */	beq lbl_80C93C44
/* 80C93BDC  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80C93BE0  38 80 00 00 */	li r4, 0
/* 80C93BE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80C93BE8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C93BEC  7D 89 03 A6 */	mtctr r12
/* 80C93BF0  4E 80 04 21 */	bctrl 
/* 80C93BF4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C93BF8  41 82 00 4C */	beq lbl_80C93C44
/* 80C93BFC  4B 3C 6E E5 */	bl dKyw_get_wind_vec__Fv
/* 80C93C00  80 9C 61 B0 */	lwz r4, 0x61b0(r28)
/* 80C93C04  38 61 00 08 */	addi r3, r1, 8
/* 80C93C08  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80C93C0C  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80C93C10  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80C93C14  FC 80 18 90 */	fmr f4, f3
/* 80C93C18  C0 BF 00 74 */	lfs f5, 0x74(r31)
/* 80C93C1C  C0 DF 00 30 */	lfs f6, 0x30(r31)
/* 80C93C20  4B 6B 2F F9 */	bl C_MTXLightPerspective
/* 80C93C24  7F 63 DB 78 */	mr r3, r27
/* 80C93C28  38 81 00 08 */	addi r4, r1, 8
/* 80C93C2C  4B 69 1B 69 */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80C93C30  7F 43 D3 78 */	mr r3, r26
/* 80C93C34  38 80 00 00 */	li r4, 0
/* 80C93C38  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80C93C3C  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80C93C40  4B 69 23 CD */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80C93C44:
/* 80C93C44  3B 39 00 01 */	addi r25, r25, 1
lbl_80C93C48:
/* 80C93C48  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 80C93C4C  A0 1A 00 5C */	lhz r0, 0x5c(r26)
/* 80C93C50  7C 03 00 40 */	cmplw r3, r0
/* 80C93C54  41 80 FF 4C */	blt lbl_80C93BA0
/* 80C93C58  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93C5C  4B 37 A0 69 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C93C60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C93C64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C93C68  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C93C6C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C93C70  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C93C74  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C93C78  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93C7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C93C80  4B 37 A2 0D */	bl mDoExt_brkAnmRemove__FP12J3DModelData
/* 80C93C84  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C93C88  80 63 00 04 */	lwz r3, 4(r3)
/* 80C93C8C  4B 37 A1 65 */	bl mDoExt_btkAnmRemove__FP12J3DModelData
/* 80C93C90  38 60 00 01 */	li r3, 1
/* 80C93C94  39 61 00 60 */	addi r11, r1, 0x60
/* 80C93C98  4B 6C E5 81 */	bl _restgpr_25
/* 80C93C9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C93CA0  7C 08 03 A6 */	mtlr r0
/* 80C93CA4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C93CA8  4E 80 00 20 */	blr 
