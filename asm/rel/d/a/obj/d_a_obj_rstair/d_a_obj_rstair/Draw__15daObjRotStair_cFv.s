lbl_80CC23C4:
/* 80CC23C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CC23C8  7C 08 02 A6 */	mflr r0
/* 80CC23CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CC23D0  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC23D4  4B 69 FE 01 */	bl _savegpr_27
/* 80CC23D8  7C 7D 1B 78 */	mr r29, r3
/* 80CC23DC  3C 60 80 CC */	lis r3, l_wtr_bmd@ha /* 0x80CC2700@ha */
/* 80CC23E0  3B C3 27 00 */	addi r30, r3, l_wtr_bmd@l /* 0x80CC2700@l */
/* 80CC23E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC23E8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC23EC  38 80 00 10 */	li r4, 0x10
/* 80CC23F0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CC23F4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80CC23F8  4B 4E 13 CD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CC23FC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC2400  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC2404  80 9D 05 A8 */	lwz r4, 0x5a8(r29)
/* 80CC2408  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC240C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80CC2410  4B 4E 29 91 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC2414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC2418  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC241C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CC2420  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CC2424  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CC2428  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC242C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CC2430  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC2434  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80CC2438  4B 34 B8 8D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC243C  88 1D 05 BC */	lbz r0, 0x5bc(r29)
/* 80CC2440  28 00 00 00 */	cmplwi r0, 0
/* 80CC2444  41 82 01 48 */	beq lbl_80CC258C
/* 80CC2448  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC244C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC2450  80 9D 05 AC */	lwz r4, 0x5ac(r29)
/* 80CC2454  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC2458  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80CC245C  4B 4E 29 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC2460  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC2464  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC2468  80 9D 05 B0 */	lwz r4, 0x5b0(r29)
/* 80CC246C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC2470  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80CC2474  4B 4E 29 2D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC2478  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80CC247C  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC2480  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80CC2484  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CC2488  38 84 00 58 */	addi r4, r4, 0x58
/* 80CC248C  4B 34 B2 4D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CC2490  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80CC2494  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC2498  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CC249C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CC24A0  38 84 00 58 */	addi r4, r4, 0x58
/* 80CC24A4  4B 34 B2 35 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CC24A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC24AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC24B0  80 03 5F 7C */	lwz r0, 0x5f7c(r3)
/* 80CC24B4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC24B8  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80CC24BC  4B 34 B8 09 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC24C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC24C4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC24C8  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 80CC24CC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC24D0  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 80CC24D4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC24D8  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80CC24DC  83 63 00 04 */	lwz r27, 4(r3)
/* 80CC24E0  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80CC24E4  83 83 00 00 */	lwz r28, 0(r3)
/* 80CC24E8  80 04 5F A0 */	lwz r0, 0x5fa0(r4)
/* 80CC24EC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC24F0  80 04 5F A4 */	lwz r0, 0x5fa4(r4)
/* 80CC24F4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC24F8  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80CC24FC  38 80 00 00 */	li r4, 0
/* 80CC2500  81 83 00 00 */	lwz r12, 0(r3)
/* 80CC2504  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CC2508  7D 89 03 A6 */	mtctr r12
/* 80CC250C  4E 80 04 21 */	bctrl 
/* 80CC2510  28 03 00 00 */	cmplwi r3, 0
/* 80CC2514  41 82 00 70 */	beq lbl_80CC2584
/* 80CC2518  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80CC251C  38 80 00 00 */	li r4, 0
/* 80CC2520  81 83 00 00 */	lwz r12, 0(r3)
/* 80CC2524  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CC2528  7D 89 03 A6 */	mtctr r12
/* 80CC252C  4E 80 04 21 */	bctrl 
/* 80CC2530  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CC2534  41 82 00 50 */	beq lbl_80CC2584
/* 80CC2538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC253C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC2540  80 83 61 B0 */	lwz r4, 0x61b0(r3)
/* 80CC2544  38 61 00 08 */	addi r3, r1, 8
/* 80CC2548  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80CC254C  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80CC2550  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80CC2554  FC 80 18 90 */	fmr f4, f3
/* 80CC2558  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 80CC255C  C0 DE 00 24 */	lfs f6, 0x24(r30)
/* 80CC2560  4B 68 46 B9 */	bl C_MTXLightPerspective
/* 80CC2564  7F 83 E3 78 */	mr r3, r28
/* 80CC2568  38 81 00 08 */	addi r4, r1, 8
/* 80CC256C  4B 66 32 29 */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80CC2570  7F 63 DB 78 */	mr r3, r27
/* 80CC2574  38 80 00 00 */	li r4, 0
/* 80CC2578  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80CC257C  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80CC2580  4B 66 3A 8D */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80CC2584:
/* 80CC2584  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80CC2588  4B 34 B7 3D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CC258C:
/* 80CC258C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC2590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC2594  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CC2598  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC259C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CC25A0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC25A4  38 60 00 01 */	li r3, 1
/* 80CC25A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC25AC  4B 69 FC 75 */	bl _restgpr_27
/* 80CC25B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CC25B4  7C 08 03 A6 */	mtlr r0
/* 80CC25B8  38 21 00 50 */	addi r1, r1, 0x50
/* 80CC25BC  4E 80 00 20 */	blr 
