lbl_80D31810:
/* 80D31810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31814  7C 08 02 A6 */	mflr r0
/* 80D31818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3181C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31820  7C 7F 1B 78 */	mr r31, r3
/* 80D31824  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D31828  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D3182C  38 80 00 00 */	li r4, 0
/* 80D31830  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D31834  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D31838  4B 47 1F 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D3183C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D31840  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D31844  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D31848  80 84 00 04 */	lwz r4, 4(r4)
/* 80D3184C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D31850  4B 47 35 51 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D31854  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D31858  4B 2D C4 6D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D3185C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D31860  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D31864  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D31868  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D3186C  4B 47 35 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D31870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D31874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D31878  80 63 5F 80 */	lwz r3, 0x5f80(r3)
/* 80D3187C  38 9F 05 78 */	addi r4, r31, 0x578
/* 80D31880  38 A0 00 00 */	li r5, 0
/* 80D31884  4B 5F 3C 09 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80D31888  38 60 00 01 */	li r3, 1
/* 80D3188C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D31890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31894  7C 08 03 A6 */	mtlr r0
/* 80D31898  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3189C  4E 80 00 20 */	blr 
