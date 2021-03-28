lbl_806560FC:
/* 806560FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80656100  7C 08 02 A6 */	mflr r0
/* 80656104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065610C  7C 7F 1B 78 */	mr r31, r3
/* 80656110  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80656114  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80656118  38 80 00 00 */	li r4, 0
/* 8065611C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80656120  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80656124  4B B4 D6 A0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80656128  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8065612C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80656130  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80656134  80 84 00 04 */	lwz r4, 4(r4)
/* 80656138  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8065613C  4B B4 EC 64 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80656140  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80656144  4B 9B 7B 80 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80656148  38 60 00 01 */	li r3, 1
/* 8065614C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80656150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80656154  7C 08 03 A6 */	mtlr r0
/* 80656158  38 21 00 10 */	addi r1, r1, 0x10
/* 8065615C  4E 80 00 20 */	blr 
