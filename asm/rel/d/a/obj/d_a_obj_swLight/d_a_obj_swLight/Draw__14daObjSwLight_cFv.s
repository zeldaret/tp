lbl_80CF7A98:
/* 80CF7A98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF7A9C  7C 08 02 A6 */	mflr r0
/* 80CF7AA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF7AA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF7AA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CF7AAC  7C 7F 1B 78 */	mr r31, r3
/* 80CF7AB0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF7AB4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF7AB8  38 80 00 10 */	li r4, 0x10
/* 80CF7ABC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CF7AC0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CF7AC4  4B 4A BD 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF7AC8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF7ACC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF7AD0  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80CF7AD4  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF7AD8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CF7ADC  4B 4A D2 C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF7AE0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CF7AE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF7AE8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF7AEC  A0 1F 0A E8 */	lhz r0, 0xae8(r31)
/* 80CF7AF0  54 00 10 3A */	slwi r0, r0, 2
/* 80CF7AF4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CF7AF8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CF7AFC  38 80 00 00 */	li r4, 0
/* 80CF7B00  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF7B04  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CF7B08  7D 89 03 A6 */	mtctr r12
/* 80CF7B0C  4E 80 04 21 */	bctrl 
/* 80CF7B10  3C 80 80 D0 */	lis r4, lit_3781@ha
/* 80CF7B14  C0 44 84 2C */	lfs f2, lit_3781@l(r4)
/* 80CF7B18  C0 3F 0A DC */	lfs f1, 0xadc(r31)
/* 80CF7B1C  3C 80 80 D0 */	lis r4, lit_3701@ha
/* 80CF7B20  C0 04 84 20 */	lfs f0, lit_3701@l(r4)
/* 80CF7B24  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CF7B28  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF7B2C  FC 00 00 1E */	fctiwz f0, f0
/* 80CF7B30  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CF7B34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CF7B38  38 00 00 FF */	li r0, 0xff
/* 80CF7B3C  98 03 00 03 */	stb r0, 3(r3)
/* 80CF7B40  98 83 00 00 */	stb r4, 0(r3)
/* 80CF7B44  98 83 00 01 */	stb r4, 1(r3)
/* 80CF7B48  98 83 00 02 */	stb r4, 2(r3)
/* 80CF7B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF7B50  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CF7B54  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CF7B58  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CF7B5C  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80CF7B60  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CF7B64  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CF7B68  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CF7B6C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CF7B70  4B 31 61 54 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CF7B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF7B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF7B7C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CF7B80  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CF7B84  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CF7B88  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CF7B8C  38 60 00 01 */	li r3, 1
/* 80CF7B90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF7B94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CF7B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF7B9C  7C 08 03 A6 */	mtlr r0
/* 80CF7BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF7BA4  4E 80 00 20 */	blr 
