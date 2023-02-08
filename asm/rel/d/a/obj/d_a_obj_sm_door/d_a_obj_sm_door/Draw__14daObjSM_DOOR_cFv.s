lbl_80CD930C:
/* 80CD930C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD9310  7C 08 02 A6 */	mflr r0
/* 80CD9314  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD9318  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD931C  4B 68 8E C1 */	bl _savegpr_29
/* 80CD9320  7C 7F 1B 78 */	mr r31, r3
/* 80CD9324  88 03 05 BC */	lbz r0, 0x5bc(r3)
/* 80CD9328  28 00 00 00 */	cmplwi r0, 0
/* 80CD932C  41 82 01 FC */	beq lbl_80CD9528
/* 80CD9330  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CD9334  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CD9338  38 80 00 10 */	li r4, 0x10
/* 80CD933C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CD9340  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CD9344  4B 4C A4 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CD9348  88 1F 05 A0 */	lbz r0, 0x5a0(r31)
/* 80CD934C  28 00 00 00 */	cmplwi r0, 0
/* 80CD9350  40 82 00 E0 */	bne lbl_80CD9430
/* 80CD9354  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CD9358  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CD935C  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80CD9360  80 84 00 04 */	lwz r4, 4(r4)
/* 80CD9364  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CD9368  4B 4C BA 39 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CD936C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD9370  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD9374  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80CD9378  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CD937C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CD9380  90 03 00 48 */	stw r0, 0x48(r3)
/* 80CD9384  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80CD9388  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80CD938C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80CD9390  83 C3 00 04 */	lwz r30, 4(r3)
/* 80CD9394  3B A0 00 00 */	li r29, 0
/* 80CD9398  48 00 00 34 */	b lbl_80CD93CC
lbl_80CD939C:
/* 80CD939C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80CD93A0  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80CD93A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CD93A8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CD93AC  38 80 00 03 */	li r4, 3
/* 80CD93B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80CD93B4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CD93B8  7D 89 03 A6 */	mtctr r12
/* 80CD93BC  4E 80 04 21 */	bctrl 
/* 80CD93C0  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80CD93C4  98 03 00 03 */	stb r0, 3(r3)
/* 80CD93C8  3B BD 00 01 */	addi r29, r29, 1
lbl_80CD93CC:
/* 80CD93CC  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80CD93D0  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80CD93D4  7C 03 00 40 */	cmplw r3, r0
/* 80CD93D8  41 80 FF C4 */	blt lbl_80CD939C
/* 80CD93DC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80CD93E0  4B 33 48 E5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CD93E4  3B A0 00 00 */	li r29, 0
/* 80CD93E8  3B E0 00 FF */	li r31, 0xff
/* 80CD93EC  48 00 00 30 */	b lbl_80CD941C
lbl_80CD93F0:
/* 80CD93F0  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80CD93F4  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80CD93F8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CD93FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CD9400  38 80 00 00 */	li r4, 0
/* 80CD9404  81 83 00 00 */	lwz r12, 0(r3)
/* 80CD9408  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CD940C  7D 89 03 A6 */	mtctr r12
/* 80CD9410  4E 80 04 21 */	bctrl 
/* 80CD9414  9B E3 00 03 */	stb r31, 3(r3)
/* 80CD9418  3B BD 00 01 */	addi r29, r29, 1
lbl_80CD941C:
/* 80CD941C  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80CD9420  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80CD9424  7C 03 00 40 */	cmplw r3, r0
/* 80CD9428  41 80 FF C8 */	blt lbl_80CD93F0
/* 80CD942C  48 00 00 DC */	b lbl_80CD9508
lbl_80CD9430:
/* 80CD9430  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CD9434  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CD9438  80 9F 05 D0 */	lwz r4, 0x5d0(r31)
/* 80CD943C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CD9440  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CD9444  4B 4C B9 5D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CD9448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD944C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD9450  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80CD9454  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CD9458  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CD945C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80CD9460  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80CD9464  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80CD9468  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80CD946C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80CD9470  3B A0 00 00 */	li r29, 0
/* 80CD9474  48 00 00 34 */	b lbl_80CD94A8
lbl_80CD9478:
/* 80CD9478  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80CD947C  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80CD9480  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CD9484  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CD9488  38 80 00 03 */	li r4, 3
/* 80CD948C  81 83 00 00 */	lwz r12, 0(r3)
/* 80CD9490  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CD9494  7D 89 03 A6 */	mtctr r12
/* 80CD9498  4E 80 04 21 */	bctrl 
/* 80CD949C  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80CD94A0  98 03 00 03 */	stb r0, 3(r3)
/* 80CD94A4  3B BD 00 01 */	addi r29, r29, 1
lbl_80CD94A8:
/* 80CD94A8  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80CD94AC  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80CD94B0  7C 03 00 40 */	cmplw r3, r0
/* 80CD94B4  41 80 FF C4 */	blt lbl_80CD9478
/* 80CD94B8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80CD94BC  4B 33 48 09 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CD94C0  3B A0 00 00 */	li r29, 0
/* 80CD94C4  3B E0 00 FF */	li r31, 0xff
/* 80CD94C8  48 00 00 30 */	b lbl_80CD94F8
lbl_80CD94CC:
/* 80CD94CC  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80CD94D0  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80CD94D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CD94D8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CD94DC  38 80 00 00 */	li r4, 0
/* 80CD94E0  81 83 00 00 */	lwz r12, 0(r3)
/* 80CD94E4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CD94E8  7D 89 03 A6 */	mtctr r12
/* 80CD94EC  4E 80 04 21 */	bctrl 
/* 80CD94F0  9B E3 00 03 */	stb r31, 3(r3)
/* 80CD94F4  3B BD 00 01 */	addi r29, r29, 1
lbl_80CD94F8:
/* 80CD94F8  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80CD94FC  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80CD9500  7C 03 00 40 */	cmplw r3, r0
/* 80CD9504  41 80 FF C8 */	blt lbl_80CD94CC
lbl_80CD9508:
/* 80CD9508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD950C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD9510  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 80CD9514  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CD9518  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CD951C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80CD9520  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 80CD9524  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_80CD9528:
/* 80CD9528  38 60 00 01 */	li r3, 1
/* 80CD952C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD9530  4B 68 8C F9 */	bl _restgpr_29
/* 80CD9534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD9538  7C 08 03 A6 */	mtlr r0
/* 80CD953C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD9540  4E 80 00 20 */	blr 
