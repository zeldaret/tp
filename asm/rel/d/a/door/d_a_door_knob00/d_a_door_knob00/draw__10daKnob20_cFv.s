lbl_8046045C:
/* 8046045C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460460  7C 08 02 A6 */	mflr r0
/* 80460464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046046C  93 C1 00 08 */	stw r30, 8(r1)
/* 80460470  7C 7F 1B 78 */	mr r31, r3
/* 80460474  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80460478  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046047C  38 80 00 14 */	li r4, 0x14
/* 80460480  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80460484  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80460488  4B D4 33 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8046048C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80460490  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80460494  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 80460498  80 84 00 04 */	lwz r4, 4(r4)
/* 8046049C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804604A0  4B D4 49 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804604A4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804604A8  80 83 00 04 */	lwz r4, 4(r3)
/* 804604AC  38 7F 05 7C */	addi r3, r31, 0x57c
/* 804604B0  C0 3F 05 8C */	lfs f1, 0x58c(r31)
/* 804604B4  4B BA D5 18 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804604B8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804604BC  81 83 00 00 */	lwz r12, 0(r3)
/* 804604C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804604C4  7D 89 03 A6 */	mtctr r12
/* 804604C8  4E 80 04 21 */	bctrl 
/* 804604CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804604D0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804604D4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 804604D8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804604DC  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 804604E0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 804604E4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 804604E8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 804604EC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804604F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804604F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804604F8  88 1F 05 9C */	lbz r0, 0x59c(r31)
/* 804604FC  7C 00 07 74 */	extsb r0, r0
/* 80460500  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80460504  7C 63 02 14 */	add r3, r3, r0
/* 80460508  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 8046050C  38 84 00 24 */	addi r4, r4, 0x24
/* 80460510  4B EE 5F A0 */	b PSMTXCopy
/* 80460514  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80460518  4B BA D7 AC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8046051C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80460520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80460524  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80460528  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8046052C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80460530  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80460534  38 60 00 01 */	li r3, 1
/* 80460538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046053C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80460540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460544  7C 08 03 A6 */	mtlr r0
/* 80460548  38 21 00 10 */	addi r1, r1, 0x10
/* 8046054C  4E 80 00 20 */	blr 
